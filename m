Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF17D9E5EAC
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 20:17:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1165010E5E3;
	Thu,  5 Dec 2024 19:17:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2049210E5E3;
 Thu,  5 Dec 2024 19:17:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3272424580301904774=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EFull=3A_success_for_drm=3A_add_drm=5Fprinter?=
 =?utf-8?q?_based_hex_dumper_and_use_it?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 05 Dec 2024 19:17:19 -0000
Message-ID: <173342623912.3058905.17608368106134834354@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <cover.1733392101.git.jani.nikula@intel.com>
In-Reply-To: <cover.1733392101.git.jani.nikula@intel.com>
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

--===============3272424580301904774==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: add drm_printer based hex dumper and use it
URL   : https://patchwork.freedesktop.org/series/142156/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15794_full -> Patchwork_142156v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_142156v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@unwedge-stress:
    - shard-dg1:          NOTRUN -> [FAIL][1] ([i915#12714] / [i915#5784])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg1-13/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fence@submit3:
    - shard-dg2:          NOTRUN -> [SKIP][2] ([i915#4812])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@gem_exec_fence@submit3.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-dg2:          NOTRUN -> [SKIP][3] ([i915#3539])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_exec_flush@basic-wb-pro-default:
    - shard-dg2:          NOTRUN -> [SKIP][4] ([i915#3539] / [i915#4852])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-5/igt@gem_exec_flush@basic-wb-pro-default.html

  * igt@gem_exec_reloc@basic-write-gtt-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][5] ([i915#3281])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-5/igt@gem_exec_reloc@basic-write-gtt-noreloc.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][6] ([i915#12193])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg1-12/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][7] ([i915#4565])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg1-12/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          NOTRUN -> [TIMEOUT][8] ([i915#5493]) +1 other test timeout
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-5/igt@gem_lmem_swapping@smem-oom@lmem0.html
    - shard-dg1:          [PASS][9] -> [TIMEOUT][10] ([i915#5493]) +1 other test timeout
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15794/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_mmap_wc@write-gtt-read-wc:
    - shard-dg2:          NOTRUN -> [SKIP][11] ([i915#4083]) +1 other test skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-5/igt@gem_mmap_wc@write-gtt-read-wc.html

  * igt@gem_partial_pwrite_pread@write-uncached:
    - shard-dg1:          NOTRUN -> [SKIP][12] ([i915#3282])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg1-12/igt@gem_partial_pwrite_pread@write-uncached.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][13] ([i915#5190] / [i915#8428]) +2 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html

  * igt@gem_set_tiling_vs_gtt:
    - shard-dg2:          NOTRUN -> [SKIP][14] ([i915#4079])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@gem_set_tiling_vs_gtt.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-tglu:         NOTRUN -> [SKIP][15] ([i915#3297])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-2/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-dg1:          NOTRUN -> [SKIP][16] ([i915#3297])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg1-12/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gen7_exec_parse@bitmasks:
    - shard-dg2:          NOTRUN -> [SKIP][17] +3 other tests skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-5/igt@gen7_exec_parse@bitmasks.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-tglu-1:       NOTRUN -> [SKIP][18] ([i915#2527] / [i915#2856])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          NOTRUN -> [ABORT][19] ([i915#13218]) +1 other test abort
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
    - shard-dg1:          [PASS][20] -> [FAIL][21] ([i915#12739] / [i915#3591])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15794/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@i915_pm_sseu@full-enable:
    - shard-tglu-1:       NOTRUN -> [SKIP][22] ([i915#4387])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@i915_pm_sseu@full-enable.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@pipe-a-edp-1:
    - shard-mtlp:         [PASS][23] -> [FAIL][24] ([i915#11808] / [i915#5956]) +1 other test fail
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15794/shard-mtlp-8/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@pipe-a-edp-1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-mtlp-8/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@pipe-a-edp-1.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][25] ([i915#4538] / [i915#5190]) +1 other test skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][26] +6 other tests skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-9/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html
    - shard-dg1:          NOTRUN -> [SKIP][27] ([i915#4538])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg1-13/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#10307] / [i915#6095]) +41 other tests skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][29] ([i915#6095]) +43 other tests skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-rkl-4/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#6095]) +3 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-4/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][31] ([i915#6095]) +9 other tests skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-2/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][32] ([i915#6095]) +40 other tests skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg1-12/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-c-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][33] ([i915#6095]) +14 other tests skip
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][34] ([i915#12313])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_chamelium_hpd@vga-hpd:
    - shard-dg1:          NOTRUN -> [SKIP][35] ([i915#7828])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg1-12/igt@kms_chamelium_hpd@vga-hpd.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-tglu-1:       NOTRUN -> [SKIP][36] ([i915#7828]) +1 other test skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][37] ([i915#7116] / [i915#9424])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg1-12/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#7118] / [i915#9424])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic-type-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][39] ([i915#6944] / [i915#9424])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@kms_content_protection@lic-type-0.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][40] ([i915#12964]) +1 other test dmesg-warn
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-rkl-1/igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#13049])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#3555])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-5/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_flip@2x-absolute-wf_vblank-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][43] ([i915#3637])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-wf_vblank:
    - shard-tglu:         NOTRUN -> [SKIP][44] ([i915#3637]) +1 other test skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-2/igt@kms_flip@2x-flip-vs-wf_vblank.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank:
    - shard-rkl:          [PASS][45] -> [FAIL][46] ([i915#11989] / [i915#13152])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15794/shard-rkl-1/igt@kms_flip@flip-vs-blocking-wf-vblank.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-rkl-4/igt@kms_flip@flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1:
    - shard-rkl:          NOTRUN -> [FAIL][47] ([i915#13152])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-rkl-4/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][48] ([i915#2672] / [i915#3555]) +2 other tests skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][49] ([i915#2587] / [i915#2672]) +2 other tests skip
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt:
    - shard-tglu-1:       NOTRUN -> [SKIP][50] +10 other tests skip
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-rte:
    - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#5354]) +7 other tests skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt:
    - shard-dg1:          NOTRUN -> [SKIP][52] +1 other test skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#8708]) +1 other test skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][54] ([i915#8708])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#3458]) +6 other tests skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-tglu:         NOTRUN -> [SKIP][56] ([i915#1839])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-9/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
    - shard-tglu-1:       NOTRUN -> [SKIP][57] ([i915#12247] / [i915#6953])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c:
    - shard-tglu-1:       NOTRUN -> [SKIP][58] ([i915#12247]) +3 other tests skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c.html

  * igt@kms_pm_rpm@pm-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#4077])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-5/igt@kms_pm_rpm@pm-tiling.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#11520])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
    - shard-tglu:         NOTRUN -> [SKIP][61] ([i915#11520]) +1 other test skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-9/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][62] ([i915#11520]) +3 other tests skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf.html

  * igt@kms_psr@pr-cursor-mmap-cpu:
    - shard-tglu-1:       NOTRUN -> [SKIP][63] ([i915#9732]) +4 other tests skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@kms_psr@pr-cursor-mmap-cpu.html

  * igt@kms_psr@psr2-cursor-blt:
    - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#1072] / [i915#9732]) +3 other tests skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@kms_psr@psr2-cursor-blt.html

  * igt@kms_rotation_crc@bad-pixel-format:
    - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#12755])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@kms_rotation_crc@bad-pixel-format.html

  * igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:
    - shard-dg2:          NOTRUN -> [ABORT][66] ([i915#13179]) +1 other test abort
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-5/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free.html

  * igt@kms_setmode@basic:
    - shard-tglu:         [PASS][67] -> [FAIL][68] ([i915#5465]) +2 other tests fail
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15794/shard-tglu-6/igt@kms_setmode@basic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-4/igt@kms_setmode@basic.html

  * igt@kms_setmode@basic@pipe-b-hdmi-a-1:
    - shard-rkl:          [PASS][69] -> [FAIL][70] ([i915#5465])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15794/shard-rkl-4/igt@kms_setmode@basic@pipe-b-hdmi-a-1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-rkl-2/igt@kms_setmode@basic@pipe-b-hdmi-a-1.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-tglu-1:       NOTRUN -> [SKIP][71] ([i915#2437])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@gen12-group-exclusive-stream-ctx-handle:
    - shard-tglu-1:       NOTRUN -> [ABORT][72] ([i915#13218])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@perf@gen12-group-exclusive-stream-ctx-handle.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-dg1:          NOTRUN -> [ABORT][73] ([i915#13218]) +2 other tests abort
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg1-13/igt@perf@per-context-mode-unprivileged.html
    - shard-tglu:         NOTRUN -> [ABORT][74] ([i915#13218]) +2 other tests abort
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-9/igt@perf@per-context-mode-unprivileged.html

  * igt@perf_pmu@module-unload:
    - shard-tglu-1:       NOTRUN -> [ABORT][75] ([i915#13010] / [i915#13218])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#8516])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@perf_pmu@rc6-all-gts.html

  
#### Possible fixes ####

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          [SKIP][77] ([i915#3555] / [i915#8228]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15794/shard-dg2-4/igt@kms_hdr@static-toggle-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html

  
#### Warnings ####

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          [INCOMPLETE][79] ([i915#7297]) -> [ABORT][80] ([i915#13218]) +1 other test abort
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15794/shard-dg2-2/igt@gem_ccs@suspend-resume.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@gem_ccs@suspend-resume.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][81] ([i915#10433] / [i915#3458]) -> [SKIP][82] ([i915#3458]) +1 other test skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15794/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-dg2:          [SKIP][83] -> [SKIP][84] ([i915#12713])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15794/shard-dg2-10/igt@kms_hdr@brightness-with-hdr.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-2/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][85] ([i915#4070] / [i915#4816]) -> [SKIP][86] ([i915#4816])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15794/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-rkl-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11808
  [i915#11989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989
  [i915#12193]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12193
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
  [i915#12714]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12714
  [i915#12739]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12739
  [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
  [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
  [i915#13010]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13010
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13152
  [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
  [i915#13218]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13218
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4565]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4565
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5465]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465
  [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
  [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
  [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732


Build changes
-------------

  * Linux: CI_DRM_15794 -> Patchwork_142156v1

  CI-20190529: 20190529
  CI_DRM_15794: 6148006e767be69293d1ec77dd127dba49db51dd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8138: 8138
  Patchwork_142156v1: 6148006e767be69293d1ec77dd127dba49db51dd @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/index.html

--===============3272424580301904774==
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
<tr><td><b>Series:</b></td><td>drm: add drm_printer based hex dumper and use it</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/142156/">https://patchwork.freedesktop.org/series/142156/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15794_full -&gt; Patchwork_142156v1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_142156v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg1-13/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12714">i915#12714</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@gem_exec_fence@submit3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@gem_exec_flush@basic-uc-prw-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-pro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-5/igt@gem_exec_flush@basic-wb-pro-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-5/igt@gem_exec_reloc@basic-write-gtt-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg1-12/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12193">i915#12193</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg1-12/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4565">i915#4565</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-5/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493">i915#5493</a>) +1 other test timeout</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15794/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493">i915#5493</a>) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-gtt-read-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-5/igt@gem_mmap_wc@write-gtt-read-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-uncached:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg1-12/igt@gem_partial_pwrite_pread@write-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@gem_set_tiling_vs_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-2/igt@gem_userptr_blits@coherency-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg1-12/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@bitmasks:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-5/igt@gen7_exec_parse@bitmasks.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@gen9_exec_parse@bb-start-cmd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@i915_pm_freq_api@freq-suspend@gt0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13218">i915#13218</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15794/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12739">i915#12739</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591">i915#3591</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15794/shard-mtlp-8/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@pipe-a-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-mtlp-8/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@pipe-a-edp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11808">i915#11808</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#5956</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-9/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html">SKIP</a> +6 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg1-13/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +41 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-rkl-4/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +43 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-4/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-2/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg1-12/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +40 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-c-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg1-12/igt@kms_chamelium_hpd@vga-hpd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg1-12/igt@kms_content_protection@atomic-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@kms_content_protection@lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-rkl-1/igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-5/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-2/igt@kms_flip@2x-flip-vs-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15794/shard-rkl-1/igt@kms_flip@flip-vs-blocking-wf-vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-rkl-4/igt@kms_flip@flip-vs-blocking-wf-vblank.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989">i915#11989</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13152">i915#13152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-rkl-4/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13152">i915#13152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt.html">SKIP</a> +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-9/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@pm-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-5/igt@kms_pm_rpm@pm-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-9/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-mmap-cpu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@kms_psr@pr-cursor-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@kms_psr@psr2-cursor-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@bad-pixel-format:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@kms_rotation_crc@bad-pixel-format.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755">i915#12755</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-5/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179">i915#13179</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15794/shard-tglu-6/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-4/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465">i915#5465</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15794/shard-rkl-4/igt@kms_setmode@basic@pipe-b-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-rkl-2/igt@kms_setmode@basic@pipe-b-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465">i915#5465</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-group-exclusive-stream-ctx-handle:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@perf@gen12-group-exclusive-stream-ctx-handle.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13218">i915#13218</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg1-13/igt@perf@per-context-mode-unprivileged.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13218">i915#13218</a>) +2 other tests abort</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-9/igt@perf@per-context-mode-unprivileged.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13218">i915#13218</a>) +2 other tests abort</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-tglu-1/igt@perf_pmu@module-unload.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13010">i915#13010</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13218">i915#13218</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@perf_pmu@rc6-all-gts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_hdr@static-toggle-suspend:<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15794/shard-dg2-4/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15794/shard-dg2-2/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297">i915#7297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-6/igt@gem_ccs@suspend-resume.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13218">i915#13218</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15794/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15794/shard-dg2-10/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-dg2-2/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15794/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142156v1/shard-rkl-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15794 -&gt; Patchwork_142156v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15794: 6148006e767be69293d1ec77dd127dba49db51dd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8138: 8138<br />
  Patchwork_142156v1: 6148006e767be69293d1ec77dd127dba49db51dd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============3272424580301904774==--
