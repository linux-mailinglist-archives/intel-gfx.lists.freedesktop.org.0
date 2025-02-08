Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0B5A2D813
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Feb 2025 19:46:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A89A110E0EB;
	Sat,  8 Feb 2025 18:46:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C8B910E0EB;
 Sat,  8 Feb 2025 18:46:07 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6663488737725770736=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/vrr=3A_Fix_DSB+?=
 =?utf-8?q?VRR_usage_for_PTL+_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 08 Feb 2025 18:46:07 -0000
Message-ID: <173904036742.3372368.7734634477676925675@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250207223159.14132-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250207223159.14132-1-ville.syrjala@linux.intel.com>
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

--===============6663488737725770736==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/vrr: Fix DSB+VRR usage for PTL+ (rev3)
URL   : https://patchwork.freedesktop.org/series/144153/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16090_full -> Patchwork_144153v3_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_144153v3_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_144153v3_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_144153v3_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_crc@cursor-onscreen-256x256:
    - shard-rkl:          [PASS][1] -> [SKIP][2] +60 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-256x256.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-256x256.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-vga-1:
    - shard-snb:          NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-snb4/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-vga-1.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-mtlp:         [PASS][4] -> [DMESG-WARN][5] +1 other test dmesg-warn
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-mtlp-7/igt@kms_joiner@basic-force-big-joiner.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-7/igt@kms_joiner@basic-force-big-joiner.html

  * igt@perf_pmu@invalid-init:
    - shard-dg2:          NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@perf_pmu@invalid-init.html
    - shard-tglu-1:       NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@perf_pmu@invalid-init.html

  
#### Warnings ####

  * igt@gem_pxp@hw-rejects-pxp-context:
    - shard-rkl:          [TIMEOUT][8] ([i915#12917] / [i915#12964]) -> [SKIP][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-1/igt@gem_pxp@hw-rejects-pxp-context.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-context.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-rkl:          [TIMEOUT][10] ([i915#12917] / [i915#12964]) -> [FAIL][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-4/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-rkl:          [SKIP][12] ([i915#5286]) -> [SKIP][13] +5 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-rkl:          [SKIP][14] ([i915#3638]) -> [SKIP][15] +1 other test skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-4/igt@kms_big_fb@linear-8bpp-rotate-90.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-rkl:          [DMESG-WARN][16] ([i915#12964]) -> [SKIP][17] +2 other tests skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][18] ([i915#12313]) -> [SKIP][19] +1 other test skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs:
    - shard-rkl:          [SKIP][20] ([i915#6095]) -> [SKIP][21] +12 other tests skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-4/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-rkl:          [SKIP][22] ([i915#3116]) -> [SKIP][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-1/igt@kms_content_protection@dp-mst-type-0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@legacy:
    - shard-rkl:          [SKIP][24] ([i915#7118] / [i915#9424]) -> [SKIP][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-7/igt@kms_content_protection@legacy.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-rkl:          [SKIP][26] ([i915#13049]) -> [SKIP][27] +1 other test skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-4/igt@kms_cursor_crc@cursor-random-512x512.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-rkl:          [SKIP][28] ([i915#3555]) -> [SKIP][29] +6 other tests skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-rkl:          [SKIP][30] ([i915#3555] / [i915#3840]) -> [SKIP][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-4/igt@kms_dsc@dsc-with-bpc.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-rkl:          [SKIP][32] ([i915#3840] / [i915#9053]) -> [SKIP][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-1/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-rkl:          [SKIP][34] ([i915#3555] / [i915#8228]) -> [SKIP][35] +1 other test skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-7/igt@kms_hdr@static-toggle-dpms.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-rkl:          [SKIP][36] ([i915#5289]) -> [SKIP][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  
Known issues
------------

  Here are the changes found in Patchwork_144153v3_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-rkl:          NOTRUN -> [SKIP][38] ([i915#8411]) +1 other test skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-1/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@device_reset@unbind-reset-rebind:
    - shard-tglu:         [PASS][39] -> [ABORT][40] ([i915#12817] / [i915#5507])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-tglu-8/igt@device_reset@unbind-reset-rebind.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-4/igt@device_reset@unbind-reset-rebind.html

  * igt@drm_fdinfo@busy-check-all@bcs0:
    - shard-dg1:          NOTRUN -> [SKIP][41] ([i915#8414]) +7 other tests skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@drm_fdinfo@busy-check-all@bcs0.html

  * igt@drm_fdinfo@busy-check-all@vecs1:
    - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#8414]) +8 other tests skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-7/igt@drm_fdinfo@busy-check-all@vecs1.html

  * igt@drm_fdinfo@busy-hang@rcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][43] ([i915#8414]) +13 other tests skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@drm_fdinfo@busy-hang@rcs0.html

  * igt@drm_fdinfo@virtual-busy-all:
    - shard-dg2-9:        NOTRUN -> [SKIP][44] ([i915#8414]) +8 other tests skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@drm_fdinfo@virtual-busy-all.html

  * igt@fbdev@nullptr:
    - shard-rkl:          [PASS][45] -> [SKIP][46] ([i915#2582]) +2 other tests skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-7/igt@fbdev@nullptr.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@fbdev@nullptr.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-dg1:          NOTRUN -> [SKIP][47] ([i915#3555] / [i915#9323])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@gem_ccs@block-copy-compressed.html
    - shard-tglu:         NOTRUN -> [SKIP][48] ([i915#3555] / [i915#9323])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-4/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-tglu-1:       NOTRUN -> [SKIP][49] ([i915#3555] / [i915#9323])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@large-ctrl-surf-copy:
    - shard-mtlp:         NOTRUN -> [SKIP][50] ([i915#13008])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@gem_ccs@large-ctrl-surf-copy.html

  * igt@gem_ccs@suspend-resume:
    - shard-dg1:          NOTRUN -> [SKIP][51] ([i915#9323])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@gem_ccs@suspend-resume.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-tglu-1:       NOTRUN -> [SKIP][52] ([i915#6335])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-tglu:         NOTRUN -> [SKIP][53] ([i915#6335])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-9/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_create@create-ext-set-pat:
    - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#8562])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-3/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_persistence@heartbeat-many:
    - shard-dg1:          NOTRUN -> [SKIP][55] ([i915#8555]) +1 other test skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-18/igt@gem_ctx_persistence@heartbeat-many.html

  * igt@gem_ctx_persistence@heartbeat-stop:
    - shard-dg2-9:        NOTRUN -> [SKIP][56] ([i915#8555])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@gem_ctx_persistence@heartbeat-stop.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-tglu-1:       NOTRUN -> [SKIP][57] ([i915#280]) +1 other test skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@execbuf:
    - shard-mtlp:         [PASS][58] -> [ABORT][59] ([i915#13193]) +1 other test abort
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-mtlp-4/igt@gem_eio@execbuf.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-4/igt@gem_eio@execbuf.html

  * igt@gem_eio@kms:
    - shard-dg1:          NOTRUN -> [FAIL][60] ([i915#5784])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@gem_eio@kms.html

  * igt@gem_eio@unwedge-stress:
    - shard-dg2:          [PASS][61] -> [FAIL][62] ([i915#12714] / [i915#5784])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-dg2-2/igt@gem_eio@unwedge-stress.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@bonded-pair:
    - shard-dg2-9:        NOTRUN -> [SKIP][63] ([i915#4771])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@gem_exec_balancer@bonded-pair.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-mtlp:         NOTRUN -> [SKIP][64] ([i915#4771])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_balancer@bonded-true-hang:
    - shard-dg1:          NOTRUN -> [SKIP][65] ([i915#4812]) +1 other test skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@gem_exec_balancer@bonded-true-hang.html

  * igt@gem_exec_balancer@hog:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#4812])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@gem_exec_balancer@hog.html

  * igt@gem_exec_balancer@noheartbeat:
    - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#8555]) +1 other test skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-7/igt@gem_exec_balancer@noheartbeat.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-tglu-1:       NOTRUN -> [SKIP][68] ([i915#4525])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#4525])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-5/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_capture@capture-invisible:
    - shard-dg2-9:        NOTRUN -> [SKIP][70] ([i915#6334]) +2 other tests skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@gem_exec_capture@capture-invisible.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-tglu-1:       NOTRUN -> [SKIP][71] ([i915#6344])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-dg1:          NOTRUN -> [SKIP][72] ([i915#3539] / [i915#4852]) +2 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-13/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-dg1:          NOTRUN -> [SKIP][73] ([i915#3539])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@gem_exec_flush@basic-uc-prw-default.html
    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#3539])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-5/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_exec_flush@basic-wb-ro-before-default:
    - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#3539] / [i915#4852]) +1 other test skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@gem_exec_flush@basic-wb-ro-before-default.html

  * igt@gem_exec_params@larger-than-life-batch:
    - shard-glk:          NOTRUN -> [SKIP][76] +75 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-glk2/igt@gem_exec_params@larger-than-life-batch.html

  * igt@gem_exec_reloc@basic-cpu-active:
    - shard-dg2-9:        NOTRUN -> [SKIP][77] ([i915#3281]) +3 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@gem_exec_reloc@basic-cpu-active.html

  * igt@gem_exec_reloc@basic-cpu-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][78] ([i915#3281])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@gem_exec_reloc@basic-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-read-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][79] ([i915#3281]) +10 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read-noreloc.html

  * igt@gem_exec_reloc@basic-write-gtt-active:
    - shard-dg1:          NOTRUN -> [SKIP][80] ([i915#3281]) +9 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-18/igt@gem_exec_reloc@basic-write-gtt-active.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#3281]) +7 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-5/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_schedule@preempt-queue:
    - shard-dg2-9:        NOTRUN -> [SKIP][82] ([i915#4537] / [i915#4812])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@gem_exec_schedule@preempt-queue.html

  * igt@gem_exec_schedule@preempt-queue-chain:
    - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#4537] / [i915#4812])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-3/igt@gem_exec_schedule@preempt-queue-chain.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][84] ([i915#11441] / [i915#13304])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-5/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s0@lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][85] ([i915#11441])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-5/igt@gem_exec_suspend@basic-s0@lmem0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-glk:          NOTRUN -> [INCOMPLETE][86] ([i915#13196]) +1 other test incomplete
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-glk3/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_fence_thrash@bo-write-verify-threaded-none:
    - shard-dg1:          NOTRUN -> [SKIP][87] ([i915#4860])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-13/igt@gem_fence_thrash@bo-write-verify-threaded-none.html

  * igt@gem_fence_thrash@bo-write-verify-x:
    - shard-dg2-9:        NOTRUN -> [SKIP][88] ([i915#4860]) +2 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@gem_fence_thrash@bo-write-verify-x.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-glk:          NOTRUN -> [SKIP][89] ([i915#4613])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-glk2/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#4613]) +2 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-4/igt@gem_lmem_swapping@heavy-verify-multi.html
    - shard-tglu:         NOTRUN -> [SKIP][91] ([i915#4613])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-4/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-tglu-1:       NOTRUN -> [SKIP][92] ([i915#4613]) +2 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][93] ([i915#4613])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          NOTRUN -> [TIMEOUT][94] ([i915#5493]) +1 other test timeout
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-3/igt@gem_lmem_swapping@smem-oom@lmem0.html
    - shard-dg1:          NOTRUN -> [TIMEOUT][95] ([i915#5493]) +1 other test timeout
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][96] ([i915#12193])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_lmem_swapping@verify-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][97] ([i915#4565])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@gem_lmem_swapping@verify-ccs@lmem0.html

  * igt@gem_mmap@basic:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#4083])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-4/igt@gem_mmap@basic.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-dg2-9:        NOTRUN -> [SKIP][99] ([i915#4077]) +3 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_mmap_gtt@flink-race:
    - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#4077]) +10 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-18/igt@gem_mmap_gtt@flink-race.html

  * igt@gem_mmap_gtt@hang:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#4077]) +10 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@gem_mmap_gtt@hang.html

  * igt@gem_mmap_gtt@medium-copy:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][102] ([i915#12964]) +13 other tests dmesg-warn
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-3/igt@gem_mmap_gtt@medium-copy.html

  * igt@gem_mmap_gtt@ptrace:
    - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#4077]) +2 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@gem_mmap_gtt@ptrace.html

  * igt@gem_mmap_wc@copy:
    - shard-dg2-9:        NOTRUN -> [SKIP][104] ([i915#4083]) +2 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@gem_mmap_wc@copy.html

  * igt@gem_mmap_wc@write-read:
    - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#4083]) +1 other test skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@gem_mmap_wc@write-read.html

  * igt@gem_partial_pwrite_pread@write-display:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#3282]) +1 other test skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-5/igt@gem_partial_pwrite_pread@write-display.html

  * igt@gem_partial_pwrite_pread@write-snoop:
    - shard-dg2-9:        NOTRUN -> [SKIP][107] ([i915#3282]) +1 other test skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@gem_partial_pwrite_pread@write-snoop.html

  * igt@gem_pread@self:
    - shard-dg1:          NOTRUN -> [SKIP][108] ([i915#3282]) +3 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@gem_pread@self.html

  * igt@gem_pread@snoop:
    - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#3282]) +3 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-3/igt@gem_pread@snoop.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-tglu-1:       NOTRUN -> [WARN][110] ([i915#2658])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#4270]) +3 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
    - shard-rkl:          [PASS][112] -> [TIMEOUT][113] ([i915#12964])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-8/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-2/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@hw-rejects-pxp-buffer:
    - shard-rkl:          NOTRUN -> [TIMEOUT][114] ([i915#12917] / [i915#12964]) +2 other tests timeout
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-1/igt@gem_pxp@hw-rejects-pxp-buffer.html

  * igt@gem_pxp@hw-rejects-pxp-context:
    - shard-tglu:         NOTRUN -> [SKIP][115] ([i915#13398])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-9/igt@gem_pxp@hw-rejects-pxp-context.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-dg1:          NOTRUN -> [SKIP][116] ([i915#4270]) +1 other test skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-rkl:          [PASS][117] -> [TIMEOUT][118] ([i915#12917] / [i915#12964]) +1 other test timeout
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-off-1.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-4/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_pxp@reject-modify-context-protection-on:
    - shard-rkl:          [PASS][119] -> [SKIP][120] ([i915#4270])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-on.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-4/igt@gem_pxp@reject-modify-context-protection-on.html

  * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#5190] / [i915#8428]) +3 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-3/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html

  * igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][122] ([i915#8428])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html

  * igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:
    - shard-dg2-9:        NOTRUN -> [SKIP][123] ([i915#5190] / [i915#8428]) +2 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-dg2-9:        NOTRUN -> [SKIP][124] ([i915#4079]) +1 other test skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_unfence_active_buffers:
    - shard-dg2-9:        NOTRUN -> [SKIP][125] ([i915#4879])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#3297]) +3 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-3/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#3297] / [i915#3323])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-3/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg1:          NOTRUN -> [SKIP][128] ([i915#3297] / [i915#4880]) +2 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html
    - shard-mtlp:         NOTRUN -> [SKIP][129] ([i915#3297])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-8/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#3297] / [i915#4880])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-7/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gem_userptr_blits@relocations:
    - shard-dg1:          NOTRUN -> [SKIP][131] ([i915#3281] / [i915#3297])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@gem_userptr_blits@relocations.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-rkl:          [PASS][132] -> [DMESG-WARN][133] ([i915#12964]) +4 other tests dmesg-warn
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-8/igt@gem_userptr_blits@sync-unmap-cycles.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-2/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#3297]) +3 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-4/igt@gem_userptr_blits@unsync-unmap-after-close.html
    - shard-dg1:          NOTRUN -> [SKIP][135] ([i915#3297]) +5 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@gem_userptr_blits@unsync-unmap-after-close.html
    - shard-tglu:         NOTRUN -> [SKIP][136] ([i915#3297]) +3 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-4/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-tglu-1:       NOTRUN -> [SKIP][137] ([i915#3297]) +1 other test skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen3_render_tiledx_blits:
    - shard-dg2:          NOTRUN -> [SKIP][138] +5 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@gen3_render_tiledx_blits.html

  * igt@gen7_exec_parse@basic-allocation:
    - shard-dg2-9:        NOTRUN -> [SKIP][139] +4 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@gen7_exec_parse@basic-allocation.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-dg2-9:        NOTRUN -> [SKIP][140] ([i915#2856]) +1 other test skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#2527]) +3 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-3/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@bb-secure:
    - shard-dg1:          NOTRUN -> [SKIP][142] ([i915#2527]) +4 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@gen9_exec_parse@bb-secure.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#2856]) +2 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-7/igt@gen9_exec_parse@unaligned-access.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-tglu:         NOTRUN -> [SKIP][144] ([i915#2527] / [i915#2856]) +1 other test skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-4/igt@gen9_exec_parse@unaligned-jump.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-tglu-1:       NOTRUN -> [SKIP][145] ([i915#2527] / [i915#2856]) +2 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-tglu-1:       NOTRUN -> [SKIP][146] ([i915#8399])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_rps@basic-api:
    - shard-dg1:          NOTRUN -> [SKIP][147] ([i915#11681] / [i915#6621]) +1 other test skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@i915_pm_rps@basic-api.html
    - shard-mtlp:         NOTRUN -> [SKIP][148] ([i915#11681] / [i915#6621])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-8/igt@i915_pm_rps@basic-api.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#11681] / [i915#6621]) +1 other test skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-3/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_pm_rps@thresholds-idle:
    - shard-dg2-9:        NOTRUN -> [SKIP][150] ([i915#11681])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@i915_pm_rps@thresholds-idle.html

  * igt@i915_pm_rps@thresholds-park:
    - shard-mtlp:         NOTRUN -> [SKIP][151] ([i915#11681])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@i915_pm_rps@thresholds-park.html

  * igt@i915_pm_sseu@full-enable:
    - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#4387])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-1/igt@i915_pm_sseu@full-enable.html

  * igt@i915_power@sanity:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#7984])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-1/igt@i915_power@sanity.html

  * igt@i915_query@hwconfig_table:
    - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#6245])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-3/igt@i915_query@hwconfig_table.html

  * igt@i915_selftest@mock:
    - shard-tglu:         NOTRUN -> [DMESG-WARN][155] ([i915#9311]) +1 other test dmesg-warn
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-4/igt@i915_selftest@mock.html

  * igt@i915_selftest@mock@memory_region:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][156] ([i915#9311]) +1 other test dmesg-warn
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-4/igt@i915_selftest@mock@memory_region.html
    - shard-dg1:          NOTRUN -> [DMESG-WARN][157] ([i915#9311]) +1 other test dmesg-warn
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@i915_selftest@mock@memory_region.html

  * igt@intel_hwmon@hwmon-write:
    - shard-tglu-1:       NOTRUN -> [SKIP][158] ([i915#7707])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@intel_hwmon@hwmon-write.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#5190]) +2 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-tglu:         NOTRUN -> [SKIP][160] ([i915#12454] / [i915#12712])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-4/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - shard-dg1:          NOTRUN -> [SKIP][161] ([i915#4212]) +1 other test skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-18/igt@kms_addfb_basic@tile-pitch-mismatch.html
    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#4212])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-3/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-vga-1-linear:
    - shard-snb:          NOTRUN -> [SKIP][163] +1 other test skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-snb4/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-vga-1-linear.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs:
    - shard-dg2-9:        NOTRUN -> [SKIP][164] ([i915#8709]) +7 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#1769] / [i915#3555])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
    - shard-dg1:          NOTRUN -> [SKIP][166] ([i915#1769] / [i915#3555])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-18/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1:
    - shard-mtlp:         [PASS][167] -> [FAIL][168] ([i915#11808] / [i915#5956]) +1 other test fail
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-mtlp-4/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-5/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#5286]) +5 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-4/igt@kms_big_fb@4-tiled-addfb.html
    - shard-dg1:          NOTRUN -> [SKIP][170] ([i915#5286]) +1 other test skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-tglu:         NOTRUN -> [SKIP][171] ([i915#5286]) +2 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-9/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-dg1:          NOTRUN -> [SKIP][172] ([i915#4538] / [i915#5286]) +5 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-tglu-1:       NOTRUN -> [SKIP][173] ([i915#5286]) +2 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][174] ([i915#3638]) +2 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> [SKIP][175] +8 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#3638]) +2 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-dg2-9:        NOTRUN -> [SKIP][177] ([i915#4538] / [i915#5190]) +5 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#4538] / [i915#5190]) +9 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-5/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-dg1:          NOTRUN -> [SKIP][179] ([i915#4538]) +5 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-8/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-dg2-9:        NOTRUN -> [SKIP][181] ([i915#12313])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][182] ([i915#6095]) +4 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-edp-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#12313])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][184] ([i915#6095]) +44 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][185] ([i915#12805])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-1/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][186] ([i915#6095]) +4 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs:
    - shard-dg1:          [PASS][187] -> [DMESG-WARN][188] ([i915#4423]) +1 other test dmesg-warn
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-dg1-18/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-17/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs.html

  * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-c-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][189] ([i915#6095]) +7 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-c-dp-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][190] ([i915#12313]) +1 other test skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][191] ([i915#12313])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-13/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
    - shard-tglu:         NOTRUN -> [SKIP][192] ([i915#12313])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-9/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#10307] / [i915#6095]) +155 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-10/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-a-dp-4.html

  * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][194] ([i915#6095]) +19 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-4/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][195] ([i915#6095]) +129 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-3.html

  * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#6095]) +82 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-2/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-c-hdmi-a-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][197] ([i915#10307] / [i915#6095]) +24 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_cdclk@mode-transition:
    - shard-dg1:          NOTRUN -> [SKIP][198] ([i915#3742])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-13/igt@kms_cdclk@mode-transition.html
    - shard-tglu:         NOTRUN -> [SKIP][199] ([i915#3742])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-9/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#11616] / [i915#7213]) +3 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-8/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
    - shard-tglu-1:       NOTRUN -> [SKIP][201] ([i915#11151] / [i915#7828]) +7 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][202] ([i915#11151] / [i915#7828]) +6 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-7/igt@kms_chamelium_frames@dp-crc-fast.html
    - shard-mtlp:         NOTRUN -> [SKIP][203] ([i915#11151] / [i915#7828])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-8/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_chamelium_frames@hdmi-crc-single:
    - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#11151] / [i915#7828]) +6 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-5/igt@kms_chamelium_frames@hdmi-crc-single.html

  * igt@kms_chamelium_hpd@dp-hpd-storm-disable:
    - shard-dg1:          NOTRUN -> [SKIP][205] ([i915#11151] / [i915#7828]) +9 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html
    - shard-tglu:         NOTRUN -> [SKIP][206] ([i915#11151] / [i915#7828]) +2 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-4/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-dg2-9:        NOTRUN -> [SKIP][207] ([i915#11151] / [i915#7828]) +4 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_color@deep-color:
    - shard-dg2:          NOTRUN -> [SKIP][208] ([i915#3555]) +9 other tests skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-7/igt@kms_color@deep-color.html

  * igt@kms_content_protection@content-type-change:
    - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#9424])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-3/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#3116])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-dg1:          NOTRUN -> [SKIP][211] ([i915#3299])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-13/igt@kms_content_protection@dp-mst-type-0.html
    - shard-tglu:         NOTRUN -> [SKIP][212] ([i915#3116] / [i915#3299])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-9/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@lic-type-0:
    - shard-mtlp:         NOTRUN -> [SKIP][213] ([i915#6944] / [i915#9424])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-8/igt@kms_content_protection@lic-type-0.html
    - shard-dg1:          NOTRUN -> [SKIP][214] ([i915#9424]) +1 other test skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@lic-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][215] ([i915#9424])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-3/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#7118])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-5/igt@kms_content_protection@srm.html
    - shard-dg1:          NOTRUN -> [SKIP][217] ([i915#7116])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_content_protection@srm.html
    - shard-tglu:         NOTRUN -> [SKIP][218] ([i915#6944] / [i915#7116] / [i915#7118])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-4/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@type1:
    - shard-dg2-9:        NOTRUN -> [SKIP][219] ([i915#7118] / [i915#9424])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_content_protection@type1.html

  * igt@kms_content_protection@uevent:
    - shard-tglu-1:       NOTRUN -> [SKIP][220] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-tglu-1:       NOTRUN -> [SKIP][221] ([i915#13049]) +2 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-mtlp:         NOTRUN -> [SKIP][222] ([i915#3555] / [i915#8814]) +1 other test skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-8/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][223] ([i915#13049])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-512x170.html
    - shard-dg1:          NOTRUN -> [SKIP][224] ([i915#13049])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_cursor_crc@cursor-onscreen-512x170.html
    - shard-tglu:         NOTRUN -> [SKIP][225] ([i915#13049])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-4/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-dg2-9:        NOTRUN -> [SKIP][226] ([i915#13049])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#3555]) +3 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-3/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_cursor_crc@cursor-sliding-max-size:
    - shard-dg2-9:        NOTRUN -> [SKIP][228] ([i915#3555]) +1 other test skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_cursor_crc@cursor-sliding-max-size.html

  * igt@kms_cursor_crc@cursor-suspend:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][229] ([i915#12358] / [i915#7882])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-7/igt@kms_cursor_crc@cursor-suspend.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][230] ([i915#12358])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-7/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-3.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][231] ([i915#13046] / [i915#5354]) +1 other test skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-7/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][232] ([i915#9809]) +3 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][233] ([i915#4103] / [i915#4213])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-dg2-9:        NOTRUN -> [SKIP][234] ([i915#4103] / [i915#4213])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-tglu-1:       NOTRUN -> [SKIP][235] ([i915#4103]) +1 other test skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-dg2-9:        NOTRUN -> [SKIP][236] ([i915#13046] / [i915#5354]) +1 other test skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#9723])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-3/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-mtlp:         NOTRUN -> [SKIP][238] ([i915#3555] / [i915#8827])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_dp_aux_dev:
    - shard-tglu-1:       NOTRUN -> [SKIP][239] ([i915#1257])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_dp_aux_dev.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-dg2-9:        NOTRUN -> [SKIP][240] ([i915#12402])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-dg2:          NOTRUN -> [SKIP][241] ([i915#3840] / [i915#9688])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-7/igt@kms_dsc@dsc-fractional-bpp.html
    - shard-dg1:          NOTRUN -> [SKIP][242] ([i915#3840])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@kms_dsc@dsc-fractional-bpp.html
    - shard-mtlp:         NOTRUN -> [SKIP][243] ([i915#3840] / [i915#9688])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-8/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-rkl:          NOTRUN -> [SKIP][244] ([i915#3555] / [i915#3840])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-5/igt@kms_dsc@dsc-with-formats.html
    - shard-dg1:          NOTRUN -> [SKIP][245] ([i915#3555] / [i915#3840])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-dg1:          NOTRUN -> [SKIP][246] ([i915#3840] / [i915#9053])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-13/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
    - shard-tglu:         NOTRUN -> [SKIP][247] ([i915#3840] / [i915#9053])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-9/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_fbcon_fbt@psr:
    - shard-dg2-9:        NOTRUN -> [SKIP][248] ([i915#3469]) +1 other test skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_fbcon_fbt@psr.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#9337])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-3/igt@kms_feature_discovery@dp-mst.html
    - shard-dg1:          NOTRUN -> [SKIP][250] ([i915#9337])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-18/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_fence_pin_leak:
    - shard-dg2-9:        NOTRUN -> [SKIP][251] ([i915#4881])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][252] ([i915#9934]) +8 other tests skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-18/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@2x-flip-vs-modeset:
    - shard-tglu:         NOTRUN -> [SKIP][253] ([i915#3637]) +3 other tests skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-9/igt@kms_flip@2x-flip-vs-modeset.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-dg2-9:        NOTRUN -> [SKIP][254] ([i915#9934]) +7 other tests skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][255] ([i915#9934]) +3 other tests skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-3/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html

  * igt@kms_flip@2x-plain-flip-fb-recreate:
    - shard-snb:          [PASS][256] -> [FAIL][257] ([i915#11989]) +1 other test fail
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-snb2/igt@kms_flip@2x-plain-flip-fb-recreate.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-snb4/igt@kms_flip@2x-plain-flip-fb-recreate.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][258] ([i915#3637]) +3 other tests skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
    - shard-rkl:          NOTRUN -> [SKIP][259] ([i915#9934]) +5 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-4/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@flip-vs-fences:
    - shard-dg1:          NOTRUN -> [SKIP][260] ([i915#8381])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip@flip-vs-fences-interruptible:
    - shard-dg2-9:        NOTRUN -> [SKIP][261] ([i915#8381])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_flip@flip-vs-fences-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-tglu:         [PASS][262] -> [FAIL][263] ([i915#11989]) +5 other tests fail
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-tglu-2/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-10/igt@kms_flip@plain-flip-ts-check-interruptible.html
    - shard-mtlp:         [PASS][264] -> [FAIL][265] ([i915#11989]) +1 other test fail
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-mtlp-8/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-2/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][266] ([i915#2672] / [i915#3555]) +1 other test skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling:
    - shard-rkl:          [PASS][267] -> [SKIP][268] ([i915#3555]) +1 other test skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][269] ([i915#2672]) +7 other tests skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
    - shard-tglu-1:       NOTRUN -> [SKIP][270] ([i915#2587] / [i915#2672]) +2 other tests skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][271] ([i915#2587] / [i915#2672]) +4 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][272] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
    - shard-tglu-1:       NOTRUN -> [SKIP][273] ([i915#2587] / [i915#2672] / [i915#3555])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-dg2-9:        NOTRUN -> [SKIP][274] ([i915#2672]) +2 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][275] ([i915#2672]) +2 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-dg2-9:        NOTRUN -> [SKIP][276] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][277] ([i915#2672] / [i915#3555]) +2 other tests skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-9/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][278] ([i915#2672] / [i915#3555]) +4 other tests skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
    - shard-dg1:          NOTRUN -> [SKIP][279] ([i915#2672] / [i915#3555]) +4 other tests skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][280] ([i915#2587] / [i915#2672]) +2 other tests skip
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
    - shard-dg2-9:        NOTRUN -> [SKIP][281] ([i915#2672] / [i915#3555])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][282] ([i915#2672] / [i915#3555] / [i915#8813]) +1 other test skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-rkl:          [PASS][283] -> [SKIP][284] ([i915#1849] / [i915#5354]) +12 other tests skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render:
    - shard-dg2:          [PASS][285] -> [FAIL][286] ([i915#6880]) +1 other test fail
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2-9:        NOTRUN -> [SKIP][287] ([i915#8708]) +12 other tests skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff:
    - shard-snb:          [PASS][288] -> [SKIP][289]
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-tglu-1:       NOTRUN -> [SKIP][290] +57 other tests skip
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary:
    - shard-dg2:          NOTRUN -> [FAIL][291] ([i915#6880])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2-9:        NOTRUN -> [SKIP][292] ([i915#3458]) +7 other tests skip
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          NOTRUN -> [SKIP][293] ([i915#10433] / [i915#3458])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][294] +54 other tests skip
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-mtlp:         NOTRUN -> [SKIP][295] ([i915#1825]) +13 other tests skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt:
    - shard-dg2:          NOTRUN -> [SKIP][296] ([i915#5354]) +17 other tests skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render:
    - shard-tglu:         NOTRUN -> [SKIP][297] +37 other tests skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][298] ([i915#1825]) +30 other tests skip
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][299] ([i915#8708]) +15 other tests skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][300] ([i915#3023]) +17 other tests skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][301] ([i915#8708]) +16 other tests skip
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][302] ([i915#3458]) +13 other tests skip
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2-9:        NOTRUN -> [SKIP][303] ([i915#5354]) +11 other tests skip
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
    - shard-dg1:          NOTRUN -> [SKIP][304] ([i915#3458]) +17 other tests skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html

  * igt@kms_hdr@invalid-hdr:
    - shard-dg1:          NOTRUN -> [SKIP][305] ([i915#3555] / [i915#8228])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_hdr@invalid-hdr.html

  * igt@kms_hdr@static-toggle:
    - shard-tglu-1:       NOTRUN -> [SKIP][306] ([i915#3555] / [i915#8228])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_hdr@static-toggle.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          [PASS][307] -> [SKIP][308] ([i915#3555] / [i915#8228]) +2 other tests skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-dg2-11/igt@kms_hdr@static-toggle-suspend.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-1/igt@kms_hdr@static-toggle-suspend.html
    - shard-rkl:          NOTRUN -> [SKIP][309] ([i915#3555] / [i915#8228]) +1 other test skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-3/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][310] ([i915#10656])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@basic-force-ultra-joiner:
    - shard-dg1:          NOTRUN -> [SKIP][311] ([i915#12394]) +1 other test skip
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-13/igt@kms_joiner@basic-force-ultra-joiner.html
    - shard-tglu:         NOTRUN -> [SKIP][312] ([i915#12394])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-9/igt@kms_joiner@basic-force-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-dg2-9:        NOTRUN -> [SKIP][313] ([i915#12388])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][314] ([i915#10656])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-3/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][315] ([i915#12339])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@kms_joiner@invalid-modeset-ultra-joiner.html
    - shard-tglu-1:       NOTRUN -> [SKIP][316] ([i915#12339])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
    - shard-dg1:          NOTRUN -> [SKIP][317] ([i915#13522])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html

  * igt@kms_plane@plane-position-hole-dpms:
    - shard-rkl:          [PASS][318] -> [SKIP][319] ([i915#8825]) +1 other test skip
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-1/igt@kms_plane@plane-position-hole-dpms.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_plane@plane-position-hole-dpms.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb:
    - shard-rkl:          [PASS][320] -> [SKIP][321] ([i915#7294]) +2 other tests skip
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-1/igt@kms_plane_alpha_blend@alpha-opaque-fb.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_plane_alpha_blend@alpha-opaque-fb.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-tglu-1:       NOTRUN -> [SKIP][322] ([i915#3555]) +1 other test skip
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_plane_multiple@tiling-yf.html
    - shard-dg2:          NOTRUN -> [SKIP][323] ([i915#3555] / [i915#8806])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-mtlp:         NOTRUN -> [SKIP][324] ([i915#6953])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][325] ([i915#12247]) +4 other tests skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:
    - shard-dg2-9:        NOTRUN -> [SKIP][326] ([i915#12247] / [i915#9423])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d:
    - shard-dg2-9:        NOTRUN -> [SKIP][327] ([i915#12247]) +7 other tests skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
    - shard-dg1:          NOTRUN -> [SKIP][328] ([i915#12247]) +12 other tests skip
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-18/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers:
    - shard-rkl:          [PASS][329] -> [SKIP][330] ([i915#8152]) +1 other test skip
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-a:
    - shard-rkl:          [PASS][331] -> [SKIP][332] ([i915#12247]) +11 other tests skip
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-4/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-a.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25:
    - shard-dg2:          NOTRUN -> [SKIP][333] ([i915#12247] / [i915#6953] / [i915#9423])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-25.html
    - shard-dg1:          NOTRUN -> [SKIP][334] ([i915#12247] / [i915#6953]) +1 other test skip
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@kms_plane_scaling@planes-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c:
    - shard-mtlp:         NOTRUN -> [SKIP][335] ([i915#12247]) +17 other tests skip
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
    - shard-dg2-9:        NOTRUN -> [SKIP][336] ([i915#12247] / [i915#6953] / [i915#9423])
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d:
    - shard-dg2:          NOTRUN -> [SKIP][337] ([i915#12247]) +3 other tests skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:
    - shard-rkl:          [PASS][338] -> [SKIP][339] ([i915#6953] / [i915#8152])
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-4/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-c:
    - shard-rkl:          NOTRUN -> [SKIP][340] ([i915#12247] / [i915#8152]) +5 other tests skip
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-c.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][341] ([i915#12247] / [i915#6953])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
    - shard-tglu-1:       NOTRUN -> [SKIP][342] ([i915#12247] / [i915#3555])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a:
    - shard-tglu-1:       NOTRUN -> [SKIP][343] ([i915#12247]) +3 other tests skip
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:
    - shard-mtlp:         NOTRUN -> [SKIP][344] ([i915#12247] / [i915#6953]) +1 other test skip
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25:
    - shard-rkl:          [PASS][345] -> [SKIP][346] ([i915#3555] / [i915#6953] / [i915#8152]) +1 other test skip
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-factor-0-25.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_plane_scaling@planes-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:
    - shard-rkl:          [PASS][347] -> [SKIP][348] ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152]) +1 other test skip
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html

  * igt@kms_pm_backlight@bad-brightness:
    - shard-dg1:          NOTRUN -> [SKIP][349] ([i915#5354])
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-13/igt@kms_pm_backlight@bad-brightness.html
    - shard-tglu:         NOTRUN -> [SKIP][350] ([i915#9812])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-9/igt@kms_pm_backlight@bad-brightness.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-rkl:          NOTRUN -> [SKIP][351] ([i915#5354])
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-3/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-dg2-9:        NOTRUN -> [SKIP][352] ([i915#12343])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-tglu-1:       NOTRUN -> [SKIP][353] ([i915#9685])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-dg2-9:        NOTRUN -> [SKIP][354] ([i915#9685])
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-tglu-1:       NOTRUN -> [SKIP][355] ([i915#3828])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-rkl:          NOTRUN -> [SKIP][356] ([i915#8430])
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-5/igt@kms_pm_lpsp@screens-disabled.html
    - shard-dg1:          NOTRUN -> [SKIP][357] ([i915#8430])
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][358] ([i915#9519]) +1 other test skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-3/igt@kms_pm_rpm@modeset-lpsp.html
    - shard-rkl:          [PASS][359] -> [SKIP][360] ([i915#9519]) +1 other test skip
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp.html
    - shard-dg1:          NOTRUN -> [SKIP][361] ([i915#9519])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-18/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-dg2:          [PASS][362] -> [SKIP][363] ([i915#9519])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-dg2-5/igt@kms_pm_rpm@modeset-non-lpsp.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-tglu-1:       NOTRUN -> [SKIP][364] ([i915#9519])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@pm-tiling:
    - shard-rkl:          [PASS][365] -> [SKIP][366] +1 other test skip
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-7/igt@kms_pm_rpm@pm-tiling.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_pm_rpm@pm-tiling.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-mtlp:         NOTRUN -> [SKIP][367] ([i915#6524])
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-dg1:          NOTRUN -> [SKIP][368] ([i915#6524])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-13/igt@kms_prime@basic-modeset-hybrid.html
    - shard-tglu:         NOTRUN -> [SKIP][369] ([i915#6524])
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-9/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_properties@crtc-properties-legacy:
    - shard-rkl:          [PASS][370] -> [SKIP][371] ([i915#11521])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-7/igt@kms_properties@crtc-properties-legacy.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_properties@crtc-properties-legacy.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:
    - shard-dg2:          NOTRUN -> [SKIP][372] ([i915#11520]) +4 other tests skip
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-3/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
    - shard-glk:          NOTRUN -> [SKIP][373] ([i915#11520]) +1 other test skip
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-glk2/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area:
    - shard-dg2-9:        NOTRUN -> [SKIP][374] ([i915#11520]) +3 other tests skip
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:
    - shard-mtlp:         NOTRUN -> [SKIP][375] ([i915#12316]) +1 other test skip
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][376] ([i915#9808])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf@pipe-a-edp-1.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
    - shard-tglu-1:       NOTRUN -> [SKIP][377] ([i915#11520]) +5 other tests skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][378] ([i915#11520]) +8 other tests skip
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-5/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:
    - shard-tglu:         NOTRUN -> [SKIP][379] ([i915#11520]) +2 other tests skip
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-4/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:
    - shard-dg1:          NOTRUN -> [SKIP][380] ([i915#11520]) +10 other tests skip
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-18/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-tglu-1:       NOTRUN -> [SKIP][381] ([i915#9683])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-dg2-9:        NOTRUN -> [SKIP][382] ([i915#9683])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-rkl:          NOTRUN -> [SKIP][383] ([i915#9683])
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-1/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-dg1:          NOTRUN -> [SKIP][384] ([i915#9683])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-13/igt@kms_psr2_su@page_flip-xrgb8888.html
    - shard-tglu:         NOTRUN -> [SKIP][385] ([i915#9683])
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-9/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-psr2-basic:
    - shard-dg1:          NOTRUN -> [SKIP][386] ([i915#1072] / [i915#9732]) +23 other tests skip
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_psr@fbc-psr2-basic.html

  * igt@kms_psr@fbc-psr2-sprite-blt:
    - shard-dg2-9:        NOTRUN -> [SKIP][387] ([i915#1072] / [i915#9732]) +8 other tests skip
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_psr@fbc-psr2-sprite-blt.html

  * igt@kms_psr@fbc-psr2-sprite-render:
    - shard-tglu-1:       NOTRUN -> [SKIP][388] ([i915#9732]) +16 other tests skip
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_psr@fbc-psr2-sprite-render.html

  * igt@kms_psr@pr-no-drrs:
    - shard-mtlp:         NOTRUN -> [SKIP][389] ([i915#9688]) +6 other tests skip
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-8/igt@kms_psr@pr-no-drrs.html

  * igt@kms_psr@psr-basic:
    - shard-tglu:         NOTRUN -> [SKIP][390] ([i915#9732]) +9 other tests skip
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-9/igt@kms_psr@psr-basic.html

  * igt@kms_psr@psr-cursor-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][391] ([i915#1072] / [i915#9732]) +15 other tests skip
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-5/igt@kms_psr@psr-cursor-mmap-cpu.html

  * igt@kms_psr@psr2-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][392] ([i915#1072] / [i915#9732]) +18 other tests skip
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-5/igt@kms_psr@psr2-suspend.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-dg1:          NOTRUN -> [SKIP][393] ([i915#9685])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
    - shard-dg2:          NOTRUN -> [SKIP][394] ([i915#9685])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@bad-pixel-format:
    - shard-dg2-9:        NOTRUN -> [SKIP][395] ([i915#12755])
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_rotation_crc@bad-pixel-format.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-dg1:          NOTRUN -> [SKIP][396] ([i915#5289])
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-18/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_scaling_modes@scaling-mode-center:
    - shard-dg1:          NOTRUN -> [SKIP][397] ([i915#3555]) +11 other tests skip
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@kms_scaling_modes@scaling-mode-center.html

  * igt@kms_scaling_modes@scaling-mode-full:
    - shard-tglu:         NOTRUN -> [SKIP][398] ([i915#3555]) +3 other tests skip
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-9/igt@kms_scaling_modes@scaling-mode-full.html

  * igt@kms_selftest@drm_framebuffer:
    - shard-rkl:          NOTRUN -> [ABORT][399] ([i915#13179]) +1 other test abort
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-6/igt@kms_selftest@drm_framebuffer.html

  * igt@kms_setmode@basic:
    - shard-snb:          [PASS][400] -> [FAIL][401] ([i915#5465]) +2 other tests fail
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-snb5/igt@kms_setmode@basic.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-snb1/igt@kms_setmode@basic.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-tglu-1:       NOTRUN -> [SKIP][402] ([i915#8623])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern.html
    - shard-dg2:          NOTRUN -> [SKIP][403] ([i915#8623])
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-rkl:          NOTRUN -> [SKIP][404] ([i915#9906])
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-3/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@flip-dpms:
    - shard-mtlp:         NOTRUN -> [SKIP][405] ([i915#3555] / [i915#8808])
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-8/igt@kms_vrr@flip-dpms.html

  * igt@kms_vrr@max-min:
    - shard-dg1:          NOTRUN -> [SKIP][406] ([i915#9906])
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_vrr@max-min.html
    - shard-tglu:         NOTRUN -> [SKIP][407] ([i915#9906])
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-4/igt@kms_vrr@max-min.html
    - shard-dg2:          NOTRUN -> [SKIP][408] ([i915#9906])
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-5/igt@kms_vrr@max-min.html

  * igt@kms_vrr@seamless-rr-switch-virtual:
    - shard-dg2-9:        NOTRUN -> [SKIP][409] ([i915#9906])
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_vrr@seamless-rr-switch-virtual.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-rkl:          NOTRUN -> [SKIP][410] ([i915#2437] / [i915#9412])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-6/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-rkl:          NOTRUN -> [SKIP][411] ([i915#2437])
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-5/igt@kms_writeback@writeback-fb-id.html
    - shard-dg1:          NOTRUN -> [SKIP][412] ([i915#2437])
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-tglu-1:       NOTRUN -> [SKIP][413] ([i915#2437])
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-rkl:          NOTRUN -> [SKIP][414] ([i915#2436])
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/index.html

--===============6663488737725770736==
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
<tr><td><b>Series:</b></td><td>drm/i915/vrr: Fix DSB+VRR usage for PTL+ (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/144153/">https://patchwork.freedesktop.org/series/144153/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16090_full -&gt; Patchwork_144153v3_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_144153v3_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_144153v3_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_144153v3_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x256:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-256x256.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-256x256.html">SKIP</a> +60 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-snb4/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-vga-1.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-mtlp-7/igt@kms_joiner@basic-force-big-joiner.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-7/igt@kms_joiner@basic-force-big-joiner.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@invalid-init:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@perf_pmu@invalid-init.html">FAIL</a></li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@perf_pmu@invalid-init.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-context:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-1/igt@gem_pxp@hw-rejects-pxp-context.html">TIMEOUT</a> ([i915#12917] / [i915#12964]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-context.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-4/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html">TIMEOUT</a> ([i915#12917] / [i915#12964]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html">SKIP</a> ([i915#5286]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-4/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</a> ([i915#3638]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">DMESG-WARN</a> ([i915#12964]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-4/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs.html">SKIP</a> ([i915#6095]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs.html">SKIP</a> +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-1/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> ([i915#3116]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-7/igt@kms_content_protection@legacy.html">SKIP</a> ([i915#7118] / [i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_content_protection@legacy.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-4/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> ([i915#13049]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html">SKIP</a> +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-4/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> ([i915#3555] / [i915#3840]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_dsc@dsc-with-bpc.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-1/igt@kms_dsc@dsc-with-output-formats-with-bpc.html">SKIP</a> ([i915#3840] / [i915#9053]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_dsc@dsc-with-output-formats-with-bpc.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-7/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> ([i915#3555] / [i915#8228]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> ([i915#5289]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_144153v3_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-1/igt@api_intel_bb@blit-reloc-purge-cache.html">SKIP</a> ([i915#8411]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-tglu-8/igt@device_reset@unbind-reset-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-4/igt@device_reset@unbind-reset-rebind.html">ABORT</a> ([i915#12817] / [i915#5507])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@bcs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@drm_fdinfo@busy-check-all@bcs0.html">SKIP</a> ([i915#8414]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-7/igt@drm_fdinfo@busy-check-all@vecs1.html">SKIP</a> ([i915#8414]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang@rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@drm_fdinfo@busy-hang@rcs0.html">SKIP</a> ([i915#8414]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-all:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@drm_fdinfo@virtual-busy-all.html">SKIP</a> ([i915#8414]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-7/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@fbdev@nullptr.html">SKIP</a> ([i915#2582]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@gem_ccs@block-copy-compressed.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-4/igt@gem_ccs@block-copy-compressed.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@large-ctrl-surf-copy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@gem_ccs@large-ctrl-surf-copy.html">SKIP</a> ([i915#13008])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@gem_ccs@suspend-resume.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@gem_create@create-ext-cpu-access-big.html">SKIP</a> ([i915#6335])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-9/igt@gem_create@create-ext-cpu-access-sanity-check.html">SKIP</a> ([i915#6335])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-3/igt@gem_create@create-ext-set-pat.html">SKIP</a> ([i915#8562])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-many:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-18/igt@gem_ctx_persistence@heartbeat-many.html">SKIP</a> ([i915#8555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-stop:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@gem_ctx_persistence@heartbeat-stop.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> ([i915#280]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_eio@execbuf:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-mtlp-4/igt@gem_eio@execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-4/igt@gem_eio@execbuf.html">ABORT</a> ([i915#13193]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@gem_eio@kms.html">FAIL</a> ([i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-dg2-2/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-2/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#12714] / [i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-pair:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@gem_exec_balancer@bonded-pair.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@gem_exec_balancer@bonded-sync.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-true-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@gem_exec_balancer@bonded-true-hang.html">SKIP</a> ([i915#4812]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hog:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@gem_exec_balancer@hog.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@noheartbeat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-7/igt@gem_exec_balancer@noheartbeat.html">SKIP</a> ([i915#8555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-5/igt@gem_exec_balancer@parallel-ordering.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@gem_exec_capture@capture-invisible.html">SKIP</a> ([i915#6334]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@gem_exec_capture@capture-recoverable.html">SKIP</a> ([i915#6344])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-13/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">SKIP</a> ([i915#3539] / [i915#4852]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@gem_exec_flush@basic-uc-prw-default.html">SKIP</a> ([i915#3539])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-5/igt@gem_exec_flush@basic-uc-prw-default.html">SKIP</a> ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-before-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@gem_exec_flush@basic-wb-ro-before-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@larger-than-life-batch:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-glk2/igt@gem_exec_params@larger-than-life-batch.html">SKIP</a> +75 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-active:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@gem_exec_reloc@basic-cpu-active.html">SKIP</a> ([i915#3281]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@gem_exec_reloc@basic-cpu-noreloc.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read-noreloc.html">SKIP</a> ([i915#3281]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-18/igt@gem_exec_reloc@basic-write-gtt-active.html">SKIP</a> ([i915#3281]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-5/igt@gem_exec_reloc@basic-write-read-active.html">SKIP</a> ([i915#3281]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@gem_exec_schedule@preempt-queue.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-chain:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-3/igt@gem_exec_schedule@preempt-queue-chain.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-5/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> ([i915#11441] / [i915#13304])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-5/igt@gem_exec_suspend@basic-s0@lmem0.html">INCOMPLETE</a> ([i915#11441])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-glk3/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> ([i915#13196]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-threaded-none:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-13/igt@gem_fence_thrash@bo-write-verify-threaded-none.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-x:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@gem_fence_thrash@bo-write-verify-x.html">SKIP</a> ([i915#4860]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-glk2/igt@gem_lmem_swapping@heavy-multi.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-4/igt@gem_lmem_swapping@heavy-verify-multi.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-4/igt@gem_lmem_swapping@heavy-verify-multi.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-3/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> ([i915#5493]) +1 other test timeout</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> ([i915#5493]) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@gem_lmem_swapping@verify-ccs.html">SKIP</a> ([i915#12193])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@gem_lmem_swapping@verify-ccs@lmem0.html">SKIP</a> ([i915#4565])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-4/igt@gem_mmap@basic.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">SKIP</a> ([i915#4077]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@flink-race:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-18/igt@gem_mmap_gtt@flink-race.html">SKIP</a> ([i915#4077]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@gem_mmap_gtt@hang.html">SKIP</a> ([i915#4077]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-3/igt@gem_mmap_gtt@medium-copy.html">DMESG-WARN</a> ([i915#12964]) +13 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@ptrace:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@gem_mmap_gtt@ptrace.html">SKIP</a> ([i915#4077]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@copy:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@gem_mmap_wc@copy.html">SKIP</a> ([i915#4083]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-read:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@gem_mmap_wc@write-read.html">SKIP</a> ([i915#4083]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-display:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-5/igt@gem_partial_pwrite_pread@write-display.html">SKIP</a> ([i915#3282]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-snoop:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@gem_partial_pwrite_pread@write-snoop.html">SKIP</a> ([i915#3282]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@self:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@gem_pread@self.html">SKIP</a> ([i915#3282]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-3/igt@gem_pread@snoop.html">SKIP</a> ([i915#3282]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html">SKIP</a> ([i915#4270]) +3 other tests skip</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-8/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-2/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html">TIMEOUT</a> ([i915#12964])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-buffer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-1/igt@gem_pxp@hw-rejects-pxp-buffer.html">TIMEOUT</a> ([i915#12917] / [i915#12964]) +2 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-context:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-9/igt@gem_pxp@hw-rejects-pxp-context.html">SKIP</a> ([i915#13398])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@gem_pxp@protected-raw-src-copy-not-readible.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-off-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-4/igt@gem_pxp@reject-modify-context-protection-off-1.html">TIMEOUT</a> ([i915#12917] / [i915#12964]) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-on:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-on.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-4/igt@gem_pxp@reject-modify-context-protection-on.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-3/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html">SKIP</a> ([i915#5190] / [i915#8428]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html">SKIP</a> ([i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html">SKIP</a> ([i915#5190] / [i915#8428]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> ([i915#4079]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@gem_unfence_active_buffers.html">SKIP</a> ([i915#4879])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-3/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> ([i915#3297]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-3/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([i915#3297] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html">SKIP</a> ([i915#3297] / [i915#4880]) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-8/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html">SKIP</a> ([i915#3297])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-7/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html">SKIP</a> ([i915#3297] / [i915#4880])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@gem_userptr_blits@relocations.html">SKIP</a> ([i915#3281] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sync-unmap-cycles:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-8/igt@gem_userptr_blits@sync-unmap-cycles.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-2/igt@gem_userptr_blits@sync-unmap-cycles.html">DMESG-WARN</a> ([i915#12964]) +4 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-4/igt@gem_userptr_blits@unsync-unmap-after-close.html">SKIP</a> ([i915#3297]) +3 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@gem_userptr_blits@unsync-unmap-after-close.html">SKIP</a> ([i915#3297]) +5 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-4/igt@gem_userptr_blits@unsync-unmap-after-close.html">SKIP</a> ([i915#3297]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen3_render_tiledx_blits:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@gen3_render_tiledx_blits.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allocation:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@gen7_exec_parse@basic-allocation.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@gen9_exec_parse@allowed-all.html">SKIP</a> ([i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-3/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> ([i915#2527]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-secure:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@gen9_exec_parse@bb-secure.html">SKIP</a> ([i915#2527]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-7/igt@gen9_exec_parse@unaligned-access.html">SKIP</a> ([i915#2856]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-4/igt@gen9_exec_parse@unaligned-jump.html">SKIP</a> ([i915#2527] / [i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@gen9_exec_parse@valid-registers.html">SKIP</a> ([i915#2527] / [i915#2856]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@i915_pm_freq_api@freq-reset-multiple.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#11681] / [i915#6621]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-8/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#11681] / [i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-loaded:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-3/igt@i915_pm_rps@min-max-config-loaded.html">SKIP</a> ([i915#11681] / [i915#6621]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@i915_pm_rps@thresholds-idle.html">SKIP</a> ([i915#11681])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@i915_pm_rps@thresholds-park.html">SKIP</a> ([i915#11681])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-1/igt@i915_pm_sseu@full-enable.html">SKIP</a> ([i915#4387])</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-1/igt@i915_power@sanity.html">SKIP</a> ([i915#7984])</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-3/igt@i915_query@hwconfig_table.html">SKIP</a> ([i915#6245])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-4/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i915#9311]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-4/igt@i915_selftest@mock@memory_region.html">DMESG-WARN</a> ([i915#9311]) +1 other test dmesg-warn</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@i915_selftest@mock@memory_region.html">DMESG-WARN</a> ([i915#9311]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@intel_hwmon@hwmon-write.html">SKIP</a> ([i915#7707])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> ([i915#5190]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-4/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> ([i915#12454] / [i915#12712])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-18/igt@kms_addfb_basic@tile-pitch-mismatch.html">SKIP</a> ([i915#4212]) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-3/igt@kms_addfb_basic@tile-pitch-mismatch.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-vga-1-linear:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-snb4/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-vga-1-linear.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs.html">SKIP</a> ([i915#8709]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-18/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-mtlp-4/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-5/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html">FAIL</a> ([i915#11808] / [i915#5956]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-4/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> ([i915#5286]) +5 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> ([i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-9/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([i915#4538] / [i915#5286]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@kms_big_fb@linear-32bpp-rotate-90.html">SKIP</a> ([i915#3638]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP</a> ([i915#3638]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> ([i915#4538] / [i915#5190]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-5/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i915#4538] / [i915#5190]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([i915#4538]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-8/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-edp-1.html">SKIP</a> ([i915#6095]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#6095]) +44 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-1/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12805])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-2.html">SKIP</a> ([i915#6095]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-dg1-18/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-17/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs.html">DMESG-WARN</a> ([i915#4423]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-c-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-c-dp-3.html">SKIP</a> ([i915#6095]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-13/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-9/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-10/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-a-dp-4.html">SKIP</a> ([i915#10307] / [i915#6095]) +155 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-4/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#6095]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-3.html">SKIP</a> ([i915#6095]) +129 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-2/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#6095]) +82 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-c-hdmi-a-2.html">SKIP</a> ([i915#10307] / [i915#6095]) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-13/igt@kms_cdclk@mode-transition.html">SKIP</a> ([i915#3742])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-9/igt@kms_cdclk@mode-transition.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-8/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#11616] / [i915#7213]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html">SKIP</a> ([i915#11151] / [i915#7828]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-7/igt@kms_chamelium_frames@dp-crc-fast.html">SKIP</a> ([i915#11151] / [i915#7828]) +6 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-8/igt@kms_chamelium_frames@dp-crc-fast.html">SKIP</a> ([i915#11151] / [i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-single:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-5/igt@kms_chamelium_frames@hdmi-crc-single.html">SKIP</a> ([i915#11151] / [i915#7828]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm-disable:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html">SKIP</a> ([i915#11151] / [i915#7828]) +9 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-4/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html">SKIP</a> ([i915#11151] / [i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html">SKIP</a> ([i915#11151] / [i915#7828]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-7/igt@kms_color@deep-color.html">SKIP</a> ([i915#3555]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-3/igt@kms_content_protection@content-type-change.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-13/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> ([i915#3299])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-9/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> ([i915#3116] / [i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-8/igt@kms_content_protection@lic-type-0.html">SKIP</a> ([i915#6944] / [i915#9424])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@kms_content_protection@lic-type-0.html">SKIP</a> ([i915#9424]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-3/igt@kms_content_protection@lic-type-1.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-5/igt@kms_content_protection@srm.html">SKIP</a> ([i915#7118])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_content_protection@srm.html">SKIP</a> ([i915#7116])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-4/igt@kms_content_protection@srm.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_content_protection@type1.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_content_protection@uevent.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_cursor_crc@cursor-offscreen-512x512.html">SKIP</a> ([i915#13049]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-8/igt@kms_cursor_crc@cursor-onscreen-32x32.html">SKIP</a> ([i915#3555] / [i915#8814]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> ([i915#13049])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> ([i915#13049])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-4/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> ([i915#13049])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> ([i915#13049])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-3/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html">SKIP</a> ([i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-max-size:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_cursor_crc@cursor-sliding-max-size.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-7/igt@kms_cursor_crc@cursor-suspend.html">INCOMPLETE</a> ([i915#12358] / [i915#7882])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-7/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-3.html">INCOMPLETE</a> ([i915#12358])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-7/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html">SKIP</a> ([i915#13046] / [i915#5354]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html">SKIP</a> ([i915#9809]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#4103]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html">SKIP</a> ([i915#13046] / [i915#5354]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-3/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> ([i915#9723])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@kms_display_modes@extended-mode-basic.html">SKIP</a> ([i915#3555] / [i915#8827])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_dp_aux_dev.html">SKIP</a> ([i915#1257])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> ([i915#12402])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-7/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([i915#3840] / [i915#9688])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([i915#3840])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-8/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([i915#3840] / [i915#9688])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-5/igt@kms_dsc@dsc-with-formats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_dsc@dsc-with-formats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-13/igt@kms_dsc@dsc-with-output-formats-with-bpc.html">SKIP</a> ([i915#3840] / [i915#9053])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-9/igt@kms_dsc@dsc-with-output-formats-with-bpc.html">SKIP</a> ([i915#3840] / [i915#9053])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_fbcon_fbt@psr.html">SKIP</a> ([i915#3469]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-3/igt@kms_feature_discovery@dp-mst.html">SKIP</a> ([i915#9337])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-18/igt@kms_feature_discovery@dp-mst.html">SKIP</a> ([i915#9337])</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_fence_pin_leak.html">SKIP</a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-18/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> ([i915#9934]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-9/igt@kms_flip@2x-flip-vs-modeset.html">SKIP</a> ([i915#3637]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_flip@2x-modeset-vs-vblank-race.html">SKIP</a> ([i915#9934]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-3/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html">SKIP</a> ([i915#9934]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-snb2/igt@kms_flip@2x-plain-flip-fb-recreate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-snb4/igt@kms_flip@2x-plain-flip-fb-recreate.html">FAIL</a> ([i915#11989]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html">SKIP</a> ([i915#3637]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-4/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html">SKIP</a> ([i915#9934]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_flip@flip-vs-fences.html">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_flip@flip-vs-fences-interruptible.html">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-tglu-2/igt@kms_flip@plain-flip-ts-check-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-10/igt@kms_flip@plain-flip-ts-check-interruptible.html">FAIL</a> ([i915#11989]) +5 other tests fail</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-mtlp-8/igt@kms_flip@plain-flip-ts-check-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-2/igt@kms_flip@plain-flip-ts-check-interruptible.html">FAIL</a> ([i915#11989]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +7 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#2587] / [i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-9/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +4 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-default-mode.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#8813]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html">SKIP</a> ([i915#1849] / [i915#5354]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render.html">FAIL</a> ([i915#6880]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> +57 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html">FAIL</a> ([i915#6880])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html">SKIP</a> ([i915#10433] / [i915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render.html">SKIP</a> +54 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([i915#1825]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt.html">SKIP</a> ([i915#5354]) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render.html">SKIP</a> +37 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#1825]) +30 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> ([i915#3023]) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html">SKIP</a> ([i915#3458]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#5354]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_hdr@invalid-hdr.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_hdr@static-toggle.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-dg2-11/igt@kms_hdr@static-toggle-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-1/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> ([i915#3555] / [i915#8228]) +2 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-3/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_joiner@basic-big-joiner.html">SKIP</a> ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-13/igt@kms_joiner@basic-force-ultra-joiner.html">SKIP</a> ([i915#12394]) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-9/igt@kms_joiner@basic-force-ultra-joiner.html">SKIP</a> ([i915#12394])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_joiner@invalid-modeset-force-big-joiner.html">SKIP</a> ([i915#12388])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-3/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html">SKIP</a> ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@kms_joiner@invalid-modeset-ultra-joiner.html">SKIP</a> ([i915#12339])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_joiner@invalid-modeset-ultra-joiner.html">SKIP</a> ([i915#12339])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html">SKIP</a> ([i915#13522])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-1/igt@kms_plane@plane-position-hole-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_plane@plane-position-hole-dpms.html">SKIP</a> ([i915#8825]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-1/igt@kms_plane_alpha_blend@alpha-opaque-fb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_plane_alpha_blend@alpha-opaque-fb.html">SKIP</a> ([i915#7294]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> ([i915#3555] / [i915#8806])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> ([i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a.html">SKIP</a> ([i915#12247]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html">SKIP</a> ([i915#12247] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d.html">SKIP</a> ([i915#12247]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-18/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html">SKIP</a> ([i915#12247]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html">SKIP</a> ([i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-4/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-a.html">SKIP</a> ([i915#12247]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#9423])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@kms_plane_scaling@planes-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c.html">SKIP</a> ([i915#12247]) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-4/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html">SKIP</a> ([i915#6953] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-c:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-c.html">SKIP</a> ([i915#12247] / [i915#8152]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a.html">SKIP</a> ([i915#12247]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html">SKIP</a> ([i915#12247] / [i915#6953]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-factor-0-25.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_plane_scaling@planes-upscale-factor-0-25.html">SKIP</a> ([i915#3555] / [i915#6953] / [i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html">SKIP</a> ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-13/igt@kms_pm_backlight@bad-brightness.html">SKIP</a> ([i915#5354])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-9/igt@kms_pm_backlight@bad-brightness.html">SKIP</a> ([i915#9812])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-3/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_pm_backlight@brightness-with-dpms.html">SKIP</a> ([i915#12343])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_pm_dc@dc6-psr.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> ([i915#3828])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-5/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> ([i915#8430])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> ([i915#8430])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-3/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915#9519]) +1 other test skip</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915#9519]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-18/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-dg2-5/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@pm-tiling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-7/igt@kms_pm_rpm@pm-tiling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_pm_rpm@pm-tiling.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-13/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> ([i915#6524])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-9/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_properties@crtc-properties-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-rkl-7/igt@kms_properties@crtc-properties-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-8/igt@kms_properties@crtc-properties-legacy.html">SKIP</a> ([i915#11521])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-3/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> ([i915#11520]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-glk2/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html">SKIP</a> ([i915#11520]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html">SKIP</a> ([i915#12316]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf@pipe-a-edp-1.html">SKIP</a> ([i915#9808])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-5/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html">SKIP</a> ([i915#11520]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-4/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-18/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf.html">SKIP</a> ([i915#11520]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-1/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-13/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> ([i915#9683])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-9/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_psr@fbc-psr2-basic.html">SKIP</a> ([i915#1072] / [i915#9732]) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-blt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_psr@fbc-psr2-sprite-blt.html">SKIP</a> ([i915#1072] / [i915#9732]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-render:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_psr@fbc-psr2-sprite-render.html">SKIP</a> ([i915#9732]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-no-drrs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-8/igt@kms_psr@pr-no-drrs.html">SKIP</a> ([i915#9688]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-9/igt@kms_psr@psr-basic.html">SKIP</a> ([i915#9732]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-5/igt@kms_psr@psr-cursor-mmap-cpu.html">SKIP</a> ([i915#1072] / [i915#9732]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-5/igt@kms_psr@psr2-suspend.html">SKIP</a> ([i915#1072] / [i915#9732]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> ([i915#9685])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@bad-pixel-format:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_rotation_crc@bad-pixel-format.html">SKIP</a> ([i915#12755])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-18/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-center:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-14/igt@kms_scaling_modes@scaling-mode-center.html">SKIP</a> ([i915#3555]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-9/igt@kms_scaling_modes@scaling-mode-full.html">SKIP</a> ([i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-6/igt@kms_selftest@drm_framebuffer.html">ABORT</a> ([i915#13179]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16090/shard-snb5/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-snb1/igt@kms_setmode@basic.html">FAIL</a> ([i915#5465]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern.html">SKIP</a> ([i915#8623])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-11/igt@kms_tiled_display@basic-test-pattern.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-3/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-dpms:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-mtlp-8/igt@kms_vrr@flip-dpms.html">SKIP</a> ([i915#3555] / [i915#8808])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_vrr@max-min.html">SKIP</a> ([i915#9906])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-4/igt@kms_vrr@max-min.html">SKIP</a> ([i915#9906])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-5/igt@kms_vrr@max-min.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg2-9/igt@kms_vrr@seamless-rr-switch-virtual.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-6/igt@kms_writeback@writeback-check-output-xrgb2101010.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-5/igt@kms_writeback@writeback-fb-id.html">SKIP</a> ([i915#2437])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-dg1-12/igt@kms_writeback@writeback-fb-id.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-tglu-1/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144153v3/shard-rkl-">SKIP</a> ([i915#2436])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============6663488737725770736==--
