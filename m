Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 476A39EBF9F
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 00:49:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C76810EA01;
	Tue, 10 Dec 2024 23:49:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27B4510EA01;
 Tue, 10 Dec 2024 23:49:47 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3916624060134219859=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915=3A_DSB+VRR?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Dec 2024 23:49:47 -0000
Message-ID: <173387458715.994438.9325038257267108246@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
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

--===============3916624060134219859==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: DSB+VRR
URL   : https://patchwork.freedesktop.org/series/142375/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15816_full -> Patchwork_142375v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_142375v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_142375v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_142375v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_async_flips@crc-atomic@pipe-a-hdmi-a-1:
    - shard-snb:          [PASS][1] -> [INCOMPLETE][2] +1 other test incomplete
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15816/shard-snb1/igt@kms_async_flips@crc-atomic@pipe-a-hdmi-a-1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-snb5/igt@kms_async_flips@crc-atomic@pipe-a-hdmi-a-1.html

  
Known issues
------------

  Here are the changes found in Patchwork_142375v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process:
    - shard-snb:          NOTRUN -> [SKIP][3] ([i915#1099])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-snb1/igt@gem_ctx_persistence@engines-mixed-process.html

  * igt@gem_eio@unwedge-stress:
    - shard-snb:          NOTRUN -> [FAIL][4] ([i915#8898])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-snb1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_flush@basic-wb-prw-default:
    - shard-dg1:          NOTRUN -> [SKIP][5] ([i915#3539] / [i915#4852]) +1 other test skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@gem_exec_flush@basic-wb-prw-default.html

  * igt@gem_exec_reloc@basic-cpu-read:
    - shard-dg1:          NOTRUN -> [SKIP][6] ([i915#3281]) +1 other test skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@gem_exec_reloc@basic-cpu-read.html

  * igt@gem_exec_reloc@basic-gtt-active:
    - shard-rkl:          NOTRUN -> [SKIP][7] ([i915#3281]) +2 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-active.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-dg1:          NOTRUN -> [SKIP][8] ([i915#4812])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-rkl:          NOTRUN -> [ABORT][9] ([i915#7975] / [i915#8213]) +1 other test abort
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-7/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-rkl:          NOTRUN -> [SKIP][10] ([i915#4613] / [i915#7582])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-3/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][11] ([i915#4613])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-7/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_mmap_gtt@basic-wc:
    - shard-dg1:          NOTRUN -> [SKIP][12] ([i915#4077]) +1 other test skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@gem_mmap_gtt@basic-wc.html

  * igt@gem_pread@self:
    - shard-dg1:          NOTRUN -> [SKIP][13] ([i915#3282])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@gem_pread@self.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-rkl:          NOTRUN -> [TIMEOUT][14] ([i915#12964])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-3/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_pxp@verify-pxp-stale-buf-execution:
    - shard-dg1:          NOTRUN -> [SKIP][15] ([i915#4270])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@gem_pxp@verify-pxp-stale-buf-execution.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][16] ([i915#3282])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-7/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][17] ([i915#3297])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-3/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_vm_create@invalid-create:
    - shard-snb:          NOTRUN -> [SKIP][18] +157 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-snb1/igt@gem_vm_create@invalid-create.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          NOTRUN -> [SKIP][19] ([i915#2527]) +1 other test skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-3/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_pm_sseu@full-enable:
    - shard-tglu-1:       NOTRUN -> [SKIP][20] ([i915#4387])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-1/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@hwconfig_table:
    - shard-tglu-1:       NOTRUN -> [SKIP][21] ([i915#6245])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-1/igt@i915_query@hwconfig_table.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-dg2:          NOTRUN -> [SKIP][22] ([i915#4077])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg2-2/igt@i915_suspend@fence-restore-untiled.html

  * igt@intel_hwmon@hwmon-read:
    - shard-rkl:          NOTRUN -> [SKIP][23] ([i915#7707])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-7/igt@intel_hwmon@hwmon-read.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][24] ([i915#8709]) +7 other tests skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][25] ([i915#5286]) +2 other tests skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-1/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-dg1:          NOTRUN -> [SKIP][26] ([i915#4538] / [i915#5286])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][27] ([i915#3638])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-3/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-dg1:          NOTRUN -> [SKIP][28] ([i915#4538])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][29] ([i915#6095]) +15 other tests skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-1/igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#6095]) +3 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg2-4/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][31] ([i915#6095]) +46 other tests skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-18/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-4.html

  * igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][32] ([i915#6095]) +9 other tests skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-1/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][33] ([i915#12313])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-7/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#10307] / [i915#6095]) +35 other tests skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg2-6/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-d-hdmi-a-3.html

  * igt@kms_cdclk@mode-transition:
    - shard-dg1:          NOTRUN -> [SKIP][35] ([i915#3742])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#11616] / [i915#7213]) +3 other tests skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-a-dp-4.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - shard-tglu-1:       NOTRUN -> [SKIP][37] ([i915#7828])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-1/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_chamelium_frames@dp-frame-dump:
    - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#7828])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg2-2/igt@kms_chamelium_frames@dp-frame-dump.html

  * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
    - shard-dg1:          NOTRUN -> [SKIP][39] ([i915#7828]) +1 other test skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html

  * igt@kms_content_protection@legacy:
    - shard-tglu-1:       NOTRUN -> [SKIP][40] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-1/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic-type-0:
    - shard-dg1:          NOTRUN -> [SKIP][41] ([i915#9424])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@lic-type-0@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][42] ([i915#7173])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg2-10/igt@kms_content_protection@lic-type-0@pipe-a-dp-4.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][43] ([i915#13049])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-3/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-rkl:          NOTRUN -> [SKIP][44] +1 other test skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-snb:          NOTRUN -> [FAIL][45] ([i915#2346])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-snb1/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-snb:          [PASS][46] -> [FAIL][47] ([i915#2346])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15816/shard-snb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-snb5/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-rkl:          NOTRUN -> [SKIP][48] ([i915#9067])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-7/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-rkl:          NOTRUN -> [SKIP][49] ([i915#4103])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg1:          NOTRUN -> [SKIP][50] ([i915#3555] / [i915#3840])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_feature_discovery@psr2:
    - shard-rkl:          NOTRUN -> [SKIP][51] ([i915#658])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-3/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-dg1:          NOTRUN -> [SKIP][52] ([i915#9934]) +2 other tests skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@2x-flip-vs-panning-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][53] ([i915#3637]) +1 other test skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-panning-interruptible.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#9934]) +2 other tests skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-7/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-rkl:          [PASS][55] -> [ABORT][56] ([i915#13218])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15816/shard-rkl-7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-5/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:
    - shard-dg1:          NOTRUN -> [SKIP][57] ([i915#2672] / [i915#3555])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][58] ([i915#2587] / [i915#2672])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][59] ([i915#2672] / [i915#3555])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][60] ([i915#2587] / [i915#2672])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][61] ([i915#8708]) +1 other test skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt:
    - shard-tglu:         NOTRUN -> [SKIP][62] +1 other test skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html
    - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#5354])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][64] ([i915#3023]) +3 other tests skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-fullscreen:
    - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#1825]) +10 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#8708])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-dg1:          NOTRUN -> [SKIP][67] ([i915#5439])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt:
    - shard-dg1:          NOTRUN -> [SKIP][68] ([i915#3458]) +3 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-tglu-1:       NOTRUN -> [SKIP][69] +14 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-dg1:          NOTRUN -> [SKIP][70] +8 other tests skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@static-toggle:
    - shard-tglu-1:       NOTRUN -> [SKIP][71] ([i915#3555] / [i915#8228])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-1/igt@kms_hdr@static-toggle.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#12247] / [i915#6953])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#12247]) +1 other test skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][74] ([i915#11520]) +1 other test skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
    - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#11520]) +1 other test skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-13/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#11520])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg2-3/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html
    - shard-tglu:         NOTRUN -> [SKIP][77] ([i915#11520])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-2/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#11520]) +1 other test skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
    - shard-snb:          NOTRUN -> [SKIP][79] ([i915#11520]) +2 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-snb1/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr@fbc-psr-primary-render:
    - shard-dg1:          NOTRUN -> [SKIP][80] ([i915#1072] / [i915#9732]) +5 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@kms_psr@fbc-psr-primary-render.html

  * igt@kms_psr@psr-sprite-mmap-cpu:
    - shard-tglu-1:       NOTRUN -> [SKIP][81] ([i915#9732]) +4 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-1/igt@kms_psr@psr-sprite-mmap-cpu.html

  * igt@kms_psr@psr-sprite-plane-move:
    - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#1072] / [i915#9732]) +7 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-1/igt@kms_psr@psr-sprite-plane-move.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-dg1:          NOTRUN -> [SKIP][83] ([i915#9685])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-13/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_setmode@invalid-clone-exclusive-crtc:
    - shard-dg1:          NOTRUN -> [SKIP][84] ([i915#3555])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-13/igt@kms_setmode@invalid-clone-exclusive-crtc.html

  * igt@kms_vrr@flipline:
    - shard-tglu-1:       NOTRUN -> [SKIP][85] ([i915#3555])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-1/igt@kms_vrr@flipline.html

  * igt@perf@enable-disable:
    - shard-tglu:         NOTRUN -> [ABORT][86] ([i915#13218]) +4 other tests abort
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-8/igt@perf@enable-disable.html

  * igt@perf@gen12-group-concurrent-oa-buffer-read:
    - shard-rkl:          NOTRUN -> [ABORT][87] ([i915#13218]) +6 other tests abort
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-3/igt@perf@gen12-group-concurrent-oa-buffer-read.html

  * igt@perf@gen12-group-exclusive-stream-ctx-handle:
    - shard-dg2:          NOTRUN -> [ABORT][88] ([i915#13218]) +1 other test abort
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg2-3/igt@perf@gen12-group-exclusive-stream-ctx-handle.html

  * igt@perf@stress-open-close:
    - shard-tglu-1:       NOTRUN -> [ABORT][89] ([i915#13218]) +4 other tests abort
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-1/igt@perf@stress-open-close.html

  * igt@perf_pmu@busy-accuracy-2@rcs0:
    - shard-dg1:          NOTRUN -> [ABORT][90] ([i915#13218]) +3 other tests abort
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-12/igt@perf_pmu@busy-accuracy-2@rcs0.html

  * igt@perf_pmu@most-busy-check-all@rcs0:
    - shard-snb:          NOTRUN -> [ABORT][91] ([i915#13218]) +9 other tests abort
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-snb5/igt@perf_pmu@most-busy-check-all@rcs0.html

  * igt@prime_vgem@basic-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][92] ([i915#3708] / [i915#4077])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@prime_vgem@basic-gtt.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#9917])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-3/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  
#### Possible fixes ####

  * igt@i915_suspend@fence-restore-untiled:
    - shard-rkl:          [ABORT][94] ([i915#13218]) -> [PASS][95] +1 other test pass
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15816/shard-rkl-5/igt@i915_suspend@fence-restore-untiled.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-4/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-dg1:          [DMESG-WARN][96] ([i915#4423]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15816/shard-dg1-13/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-18/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@short-flip-after-cursor-toggle:
    - shard-glk:          [FAIL][98] ([i915#2346]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15816/shard-glk8/igt@kms_cursor_legacy@short-flip-after-cursor-toggle.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-glk9/igt@kms_cursor_legacy@short-flip-after-cursor-toggle.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:
    - shard-snb:          [SKIP][100] -> [PASS][101] +4 other tests pass
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15816/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-rkl:          [SKIP][102] ([i915#9519]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15816/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  
#### Warnings ####

  * igt@kms_content_protection@lic-type-0:
    - shard-dg2:          [SKIP][104] ([i915#9424]) -> [TIMEOUT][105] ([i915#7173])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15816/shard-dg2-7/igt@kms_content_protection@lic-type-0.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg2-10/igt@kms_content_protection@lic-type-0.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][106] ([i915#3458]) -> [SKIP][107] ([i915#10433] / [i915#3458])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15816/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11616]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11616
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13218]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13218
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
  [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
  [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
  [i915#8898]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8898
  [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_15816 -> Patchwork_142375v1

  CI-20190529: 20190529
  CI_DRM_15816: 2223c2c738ecb056c0a77e115334887da66668c8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8147: df65b61f81a5cc919c10ff9c5ed516b45364135c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_142375v1: 2223c2c738ecb056c0a77e115334887da66668c8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/index.html

--===============3916624060134219859==
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
<tr><td><b>Series:</b></td><td>drm/i915: DSB+VRR</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/142375/">https://patchwork.freedesktop.org/series/142375/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15816_full -&gt; Patchwork_142375v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_142375v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_142375v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_142375v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_async_flips@crc-atomic@pipe-a-hdmi-a-1:<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15816/shard-snb1/igt@kms_async_flips@crc-atomic@pipe-a-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-snb5/igt@kms_async_flips@crc-atomic@pipe-a-hdmi-a-1.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_142375v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@engines-mixed-process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-snb1/igt@gem_ctx_persistence@engines-mixed-process.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-snb1/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8898">i915#8898</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-prw-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@gem_exec_flush@basic-wb-prw-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@gem_exec_reloc@basic-cpu-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-active:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@gem_exec_schedule@preempt-queue-contexts-chain.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-7/igt@gem_exec_suspend@basic-s4-devices.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213">i915#8213</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-3/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582">i915#7582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-7/igt@gem_lmem_swapping@heavy-verify-random-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@gem_mmap_gtt@basic-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@self:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@gem_pread@self.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-3/igt@gem_pxp@regular-baseline-src-copy-readible.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-execution:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@gem_pxp@verify-pxp-stale-buf-execution.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-7/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-3/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_vm_create@invalid-create:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-snb1/igt@gem_vm_create@invalid-create.html">SKIP</a> +157 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-3/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-1/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-1/igt@i915_query@hwconfig_table.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245">i915#6245</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg2-2/igt@i915_suspend@fence-restore-untiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-7/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709">i915#8709</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-1/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-3/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-1/igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg2-4/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-18/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +46 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-1/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-7/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg2-6/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-d-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +35 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@kms_cdclk@mode-transition.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-a-dp-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11616">i915#11616</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213">i915#7213</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-1/igt@kms_chamelium_edid@hdmi-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-frame-dump:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg2-2/igt@kms_chamelium_frames@dp-frame-dump.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-1/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@kms_content_protection@lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg2-10/igt@kms_content_protection@lic-type-0@pipe-a-dp-4.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-3/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-snb1/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15816/shard-snb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-snb5/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-7/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-3/igt@kms_feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@kms_flip@2x-flip-vs-panning.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-panning-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-7/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15816/shard-rkl-7/igt@kms_flip@flip-vs-suspend-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-5/igt@kms_flip@flip-vs-suspend-interruptible.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13218">i915#13218</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html">SKIP</a> +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-fullscreen.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-1/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-13/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg2-3/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-2/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-snb1/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@kms_psr@fbc-psr-primary-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-mmap-cpu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-1/igt@kms_psr@psr-sprite-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-move:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-1/igt@kms_psr@psr-sprite-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-13/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-exclusive-crtc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-13/igt@kms_setmode@invalid-clone-exclusive-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-1/igt@kms_vrr@flipline.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@enable-disable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-8/igt@perf@enable-disable.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13218">i915#13218</a>) +4 other tests abort</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-group-concurrent-oa-buffer-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-3/igt@perf@gen12-group-concurrent-oa-buffer-read.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13218">i915#13218</a>) +6 other tests abort</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-group-exclusive-stream-ctx-handle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg2-3/igt@perf@gen12-group-exclusive-stream-ctx-handle.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13218">i915#13218</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@perf@stress-open-close:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-tglu-1/igt@perf@stress-open-close.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13218">i915#13218</a>) +4 other tests abort</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-accuracy-2@rcs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-12/igt@perf_pmu@busy-accuracy-2@rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13218">i915#13218</a>) +3 other tests abort</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-snb5/igt@perf_pmu@most-busy-check-all@rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13218">i915#13218</a>) +9 other tests abort</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-14/igt@prime_vgem@basic-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-3/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15816/shard-rkl-5/igt@i915_suspend@fence-restore-untiled.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13218">i915#13218</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-4/igt@i915_suspend@fence-restore-untiled.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15816/shard-dg1-13/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg1-18/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-after-cursor-toggle:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15816/shard-glk8/igt@kms_cursor_legacy@short-flip-after-cursor-toggle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-glk9/igt@kms_cursor_legacy@short-flip-after-cursor-toggle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15816/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15816/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15816/shard-dg2-7/igt@kms_content_protection@lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg2-10/igt@kms_content_protection@lic-type-0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15816/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142375v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15816 -&gt; Patchwork_142375v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15816: 2223c2c738ecb056c0a77e115334887da66668c8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8147: df65b61f81a5cc919c10ff9c5ed516b45364135c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_142375v1: 2223c2c738ecb056c0a77e115334887da66668c8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============3916624060134219859==--
