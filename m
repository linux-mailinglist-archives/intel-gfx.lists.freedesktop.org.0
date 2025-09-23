Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 540C1B95354
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 11:18:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3729F10E5C8;
	Tue, 23 Sep 2025 09:18:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F270A10E5C8;
 Tue, 23 Sep 2025 09:18:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1712667154524447331=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/vrr=3A_Refactor?=
 =?utf-8?q?_VRR_live_status_wait_into_common_helper_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Sep 2025 09:18:20 -0000
Message-ID: <175861910098.357031.4995431610634037439@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250902122850.3649828-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250902122850.3649828-1-ankit.k.nautiyal@intel.com>
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

--===============1712667154524447331==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/vrr: Refactor VRR live status wait into common helper (rev2)
URL   : https://patchwork.freedesktop.org/series/153874/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17254_full -> Patchwork_153874v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_153874v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_153874v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (12 -> 12)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_153874v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-dg2:          NOTRUN -> [SKIP][1] +2 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@gem_lmem_swapping@heavy-multi.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-dg2:          NOTRUN -> [WARN][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@i915_suspend@basic-s3-without-i915.html

  
Known issues
------------

  Here are the changes found in Patchwork_153874v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@nullptr:
    - shard-dg2:          NOTRUN -> [SKIP][3] ([i915#2582])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@fbdev@nullptr.html

  * igt@gem_create@create-ext-set-pat:
    - shard-rkl:          NOTRUN -> [SKIP][4] ([i915#14544] / [i915#8562])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-rkl:          NOTRUN -> [SKIP][5] ([i915#14544] / [i915#280])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
    - shard-rkl:          NOTRUN -> [SKIP][6] ([i915#14544] / [i915#4525])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html

  * igt@gem_exec_reloc@basic-gtt-read:
    - shard-rkl:          NOTRUN -> [SKIP][7] ([i915#14544] / [i915#3281]) +2 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-read.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-rkl:          NOTRUN -> [SKIP][8] ([i915#14544] / [i915#4613])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_mmap_gtt@basic-small-bo:
    - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#2575]) +77 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@gem_mmap_gtt@basic-small-bo.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-rkl:          NOTRUN -> [SKIP][10] ([i915#14544] / [i915#3282]) +1 other test skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-glk10:        NOTRUN -> [WARN][11] ([i915#14702] / [i915#2658])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk10/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@create-valid-protected-context:
    - shard-rkl:          NOTRUN -> [TIMEOUT][12] ([i915#12964])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_pxp@create-valid-protected-context.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][13] ([i915#2575] / [i915#5190]) +2 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html

  * igt@gem_userptr_blits@stress-purge:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][14] ([i915#12964])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_userptr_blits@stress-purge.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-rkl:          NOTRUN -> [SKIP][15] ([i915#14544] / [i915#3297])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-rkl:          NOTRUN -> [SKIP][16] ([i915#14544] / [i915#2527])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gen9_exec_parse@bb-chained.html

  * igt@i915_drm_fdinfo@busy:
    - shard-dg2:          NOTRUN -> [SKIP][17] ([i915#14959]) +8 other tests skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@i915_drm_fdinfo@busy.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#14962])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_suspend@sysfs-reader:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][19] ([i915#4817])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk10/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][20] ([i915#5190]) +7 other tests skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html

  * igt@kms_chamelium_hpd@dp-hpd:
    - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#11151] / [i915#14544] / [i915#7828]) +1 other test skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd.html

  * igt@kms_color@ctm-blue-to-red:
    - shard-rkl:          NOTRUN -> [SKIP][22] ([i915#12655] / [i915#14544])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_color@ctm-blue-to-red.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          NOTRUN -> [SKIP][23] ([i915#14544]) +23 other tests skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-dg2:          NOTRUN -> [SKIP][24] +74 other tests skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          NOTRUN -> [SKIP][25] ([i915#14544] / [i915#3955])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_fbcon_fbt@psr.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][26] ([i915#14544] / [i915#9934]) +2 other tests skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - shard-rkl:          NOTRUN -> [SKIP][27] ([i915#14544] / [i915#3637])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][28] ([i915#14544] / [i915#3555]) +1 other test skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:
    - shard-glk10:        NOTRUN -> [SKIP][29] +113 other tests skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk10/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-rkl:          NOTRUN -> [SKIP][30] ([i915#14544] / [i915#1849] / [i915#5354]) +18 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_joiner@invalid-modeset-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][31] ([i915#10656] / [i915#14544])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_joiner@invalid-modeset-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][32] ([i915#12388] / [i915#14544])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_pipe_crc_basic@read-crc:
    - shard-rkl:          NOTRUN -> [SKIP][33] ([i915#11190] / [i915#14544])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_pipe_crc_basic@read-crc.html

  * igt@kms_plane@plane-panning-top-left:
    - shard-rkl:          NOTRUN -> [SKIP][34] ([i915#14544] / [i915#8825])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_plane@plane-panning-top-left.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format:
    - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#14958] / [i915#9423]) +2 other tests skip
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#14544] / [i915#6953] / [i915#8152])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][37] ([i915#12247] / [i915#14544])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-b:
    - shard-rkl:          NOTRUN -> [SKIP][38] ([i915#12247] / [i915#14544] / [i915#8152])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-b.html

  * igt@kms_pm_rpm@fences-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][39] ([i915#14544] / [i915#1849])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_pm_rpm@fences-dpms.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#14960])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_prime@d3hot:
    - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#15026])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:
    - shard-rkl:          NOTRUN -> [SKIP][42] ([i915#11520] / [i915#14544]) +1 other test skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
    - shard-glk10:        NOTRUN -> [SKIP][43] ([i915#11520]) +1 other test skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk10/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr@fbc-psr2-sprite-render:
    - shard-rkl:          NOTRUN -> [SKIP][44] ([i915#1072] / [i915#14544] / [i915#9732]) +5 other tests skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#14958] / [i915#5190])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_vblank@ts-continuation-modeset:
    - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#14958]) +72 other tests skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_vblank@ts-continuation-modeset.html

  * igt@perf_pmu@module-unload:
    - shard-glk10:        NOTRUN -> [FAIL][47] ([i915#14433])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk10/igt@perf_pmu@module-unload.html

  * igt@prime_vgem@basic-write:
    - shard-rkl:          NOTRUN -> [SKIP][48] ([i915#14544] / [i915#3291] / [i915#3708])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@gem_exec_schedule@manyslice:
    - shard-rkl:          [DMESG-WARN][49] ([i915#12964]) -> [PASS][50] +2 other tests pass
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-rkl-6/igt@gem_exec_schedule@manyslice.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_exec_schedule@manyslice.html

  
#### Warnings ####

  * igt@i915_module_load@load:
    - shard-glk:          ([ABORT][51], [ABORT][52], [ABORT][53], [PASS][54], [ABORT][55], [ABORT][56], [ABORT][57], [ABORT][58], [ABORT][59], [ABORT][60], [ABORT][61], [ABORT][62]) ([i915#15020]) -> ([ABORT][63], [ABORT][64], [ABORT][65], [ABORT][66], [ABORT][67], [ABORT][68], [ABORT][69], [ABORT][70], [ABORT][71], [ABORT][72]) ([i915#15020])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk5/igt@i915_module_load@load.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk6/igt@i915_module_load@load.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk5/igt@i915_module_load@load.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk6/igt@i915_module_load@load.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk6/igt@i915_module_load@load.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk5/igt@i915_module_load@load.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk1/igt@i915_module_load@load.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk8/igt@i915_module_load@load.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk1/igt@i915_module_load@load.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk8/igt@i915_module_load@load.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk1/igt@i915_module_load@load.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk1/igt@i915_module_load@load.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk5/igt@i915_module_load@load.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk1/igt@i915_module_load@load.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk5/igt@i915_module_load@load.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk1/igt@i915_module_load@load.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk1/igt@i915_module_load@load.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk1/igt@i915_module_load@load.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk5/igt@i915_module_load@load.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk6/igt@i915_module_load@load.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk6/igt@i915_module_load@load.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk6/igt@i915_module_load@load.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:
    - shard-dg2:          [SKIP][73] ([i915#9423]) -> [SKIP][74] ([i915#14958] / [i915#9423]) +2 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
    - shard-dg2:          [SKIP][75] ([i915#5190]) -> [SKIP][76] ([i915#14958] / [i915#5190])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-dg2-11/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
  [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
  [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
  [i915#14433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14702]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14702
  [i915#14958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14958
  [i915#14959]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14959
  [i915#14960]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14960
  [i915#14962]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14962
  [i915#15020]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15020
  [i915#15026]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15026
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
  [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
  [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
  [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_17254 -> Patchwork_153874v2

  CI-20190529: 20190529
  CI_DRM_17254: 3ff214d6c6a86025aa3feadcb5bba4abfc2dd8f1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8547: 8547
  Patchwork_153874v2: 3ff214d6c6a86025aa3feadcb5bba4abfc2dd8f1 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/index.html

--===============1712667154524447331==
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
<tr><td><b>Series:</b></td><td>drm/i915/vrr: Refactor VRR live status wait =
into common helper (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/153874/">https://patchwork.freedesktop.org/series/153874/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_153874v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_153874v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17254_full -&gt; Patchwork_153874v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_153874v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_153874v2_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (12 -&gt; 12)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
153874v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@gem_lmem_swapping@heavy-m=
ulti.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@i915_suspend@basic-s3-wit=
hout-i915.html">WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_153874v2_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@fbdev@nullptr.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/258=
2">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_create@create-ext-set-=
pat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_ctx_sseu@invalid-sseu.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_exec_balancer@parallel=
-dmabuf-import-out-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-r=
ead.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_lmem_swapping@parallel=
-random-verify.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@gem_mmap_gtt@basic-small-=
bo.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/2575">i915#2575</a>) +77 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_partial_pwrite_pread@r=
eads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-glk10/igt@gem_pwrite@basic-exhaustio=
n.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14702">i915#14702</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-valid-protected-context:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_pxp@create-valid-prote=
cted-context.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@gem_render_copy@y-tiled-m=
c-ccs-to-yf-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/2575">i915#2575</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +2 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@stress-purge:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_userptr_blits@stress-p=
urge.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gem_userptr_blits@unsync-u=
nmap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@gen9_exec_parse@bb-chained=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@i915_drm_fdinfo@busy.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/14959">i915#14959</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@i915_pm_rpm@gem-execbuf-s=
tress-pc8.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/14962">i915#14962</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-glk10/igt@i915_suspend@sysfs-reader.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_big_fb@yf-tiled-64bpp=
-rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/5190">i915#5190</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-blue-to-red:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_color@ctm-blue-to-red.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/12655">i915#12655</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-varying-size.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +23 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_dsc@dsc-fractional-bp=
p.html">SKIP</a> +74 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_fbcon_fbt@psr.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_flip@2x-flip-vs-absolu=
te-wf_vblank-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_flip@basic-flip-vs-mod=
eset.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-6=
4bpp-linear-to-32bpp-linear-upscaling.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#35=
55</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-glk10/igt@kms_frontbuffer_tracking@f=
bc-1p-offscren-pri-indfb-draw-blt.html">SKIP</a> +113 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_frontbuffer_tracking@p=
ipe-fbc-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +18 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_joiner@invalid-modeset=
-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/10656">i915#10656</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_joiner@invalid-modeset=
-force-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/12388">i915#12388</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_pipe_crc_basic@read-cr=
c.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/11190">i915#11190</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-top-left:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_plane@plane-panning-to=
p-left.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/8825">i915#8825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_plane_scaling@plane-u=
pscale-20x20-with-pixel-format.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/14958">i915#14958</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)=
 +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-75-upscale-factor-0-25.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915=
#6953</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@p=
ipe-a:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-75-upscale-factor-0-25@pipe-a.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@p=
ipe-b:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-75-upscale-factor-0-25@pipe-b.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@fences-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_pm_rpm@fences-dpms.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp-s=
tress-no-wait.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/14960">i915#14960</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_prime@d3hot.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
5026">i915#15026</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-curso=
r-plane-update-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other t=
est skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-glk10/igt@kms_psr2_sf@psr2-overlay-p=
lane-update-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-re=
nder.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +5 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/14958">i915#14958</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-modeset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_vblank@ts-continuatio=
n-modeset.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/14958">i915#14958</a>) +72 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-glk10/igt@perf_pmu@module-unload.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14433">i915#14433</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_153874v2/shard-rkl-6/igt@prime_vgem@basic-write.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3291">i915#3291</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_schedule@manyslice:<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17254/shard-rkl-6/igt@gem_exec_schedule@manyslice.html">DMESG-WARN<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/129=
64">i915#12964</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_153874v2/shard-rkl-6/igt@gem_exec_schedule@manyslice.html">PAS=
S</a> +2 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17254/shard-glk5/igt@i915_module_load@load.html">ABORT</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk6/igt@i=
915_module_load@load.html">ABORT</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_17254/shard-glk5/igt@i915_module_load@load.html">ABOR=
T</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/sha=
rd-glk6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk6/igt@i915_module_load@loa=
d.html">ABORT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_17254/shard-glk5/igt@i915_module_load@load.html">ABORT</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk1/igt@i915_mo=
dule_load@load.html">ABORT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_17254/shard-glk8/igt@i915_module_load@load.html">ABORT</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk=
1/igt@i915_module_load@load.html">ABORT</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_17254/shard-glk8/igt@i915_module_load@load.htm=
l">ABORT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17=
254/shard-glk1/igt@i915_module_load@load.html">ABORT</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/shard-glk1/igt@i915_module_=
load@load.html">ABORT</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/15020">i915#15020</a>) -&gt; (<a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk5/igt@i915_module_lo=
ad@load.html">ABORT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_153874v2/shard-glk1/igt@i915_module_load@load.html">ABORT</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shar=
d-glk5/igt@i915_module_load@load.html">ABORT</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk1/igt@i915_module_lo=
ad@load.html">ABORT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_153874v2/shard-glk1/igt@i915_module_load@load.html">ABORT</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shar=
d-glk1/igt@i915_module_load@load.html">ABORT</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk5/igt@i915_module_lo=
ad@load.html">ABORT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_153874v2/shard-glk6/igt@i915_module_load@load.html">ABORT</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shar=
d-glk6/igt@i915_module_load@load.html">ABORT</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-glk6/igt@i915_module_lo=
ad@load.html">ABORT</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15020">i915#15020</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17254/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-=
5-upscale-20x20.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/9423">i915#9423</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_plane_s=
caling@planes-downscale-factor-0-5-upscale-20x20.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14958">i915#14958<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/94=
23">i915#9423</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17254/shard-dg2-11/igt@kms_rotation_crc@primary-y-tiled-reflect-x-2=
70.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/5190">i915#5190</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_153874v2/shard-dg2-11/igt@kms_rotation_crc@primary=
-y-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/14958">i915#14958</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17254 -&gt; Patchwork_153874v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17254: 3ff214d6c6a86025aa3feadcb5bba4abfc2dd8f1 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_8547: 8547<br />
  Patchwork_153874v2: 3ff214d6c6a86025aa3feadcb5bba4abfc2dd8f1 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1712667154524447331==--
