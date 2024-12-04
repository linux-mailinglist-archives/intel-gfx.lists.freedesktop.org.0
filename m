Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B95BF9E43F6
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 20:03:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FEC810E54D;
	Wed,  4 Dec 2024 19:03:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCFC610E54D;
 Wed,  4 Dec 2024 19:03:18 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0504545714798531459=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EFull=3A_success_for_drm/i915/display=3A_hand?=
 =?utf-8?q?le_hdmi_connector_init_failures=2C_and_no_HDMI/DP_cases?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 04 Dec 2024 19:03:18 -0000
Message-ID: <173333899889.2594265.5031130270904003852@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <cover.1733324735.git.jani.nikula@intel.com>
In-Reply-To: <cover.1733324735.git.jani.nikula@intel.com>
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

--===============0504545714798531459==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: handle hdmi connector init failures, and no HDMI/DP cases
URL   : https://patchwork.freedesktop.org/series/142119/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15788_full -> Patchwork_142119v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (10 -> 9)
------------------------------

  Missing    (1): shard-dg2-set2 

Known issues
------------

  Here are the changes found in Patchwork_142119v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_fdinfo@virtual-busy-all:
    - shard-dg2:          NOTRUN -> [SKIP][1] ([i915#8414]) +9 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-6/igt@drm_fdinfo@virtual-busy-all.html

  * igt@gem_ccs@suspend-resume:
    - shard-tglu-1:       NOTRUN -> [SKIP][2] ([i915#9323])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-tglu-1/igt@gem_ccs@suspend-resume.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-dg2:          NOTRUN -> [SKIP][3] ([i915#280])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-6/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg2:          NOTRUN -> [ABORT][4] ([i915#13218]) +2 other tests abort
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-3/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_fence@submit3:
    - shard-dg2:          NOTRUN -> [SKIP][5] ([i915#4812]) +1 other test skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@gem_exec_fence@submit3.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-dg2:          NOTRUN -> [SKIP][6] ([i915#3539])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_exec_params@secure-non-root:
    - shard-dg2:          NOTRUN -> [SKIP][7] +2 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@gem_exec_params@secure-non-root.html

  * igt@gem_fenced_exec_thrash@too-many-fences:
    - shard-dg2:          NOTRUN -> [SKIP][8] ([i915#4860])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-6/igt@gem_fenced_exec_thrash@too-many-fences.html

  * igt@gem_media_fill@media-fill:
    - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#8289])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-6/igt@gem_media_fill@media-fill.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-dg1:          NOTRUN -> [SKIP][10] ([i915#4077]) +1 other test skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg1-18/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-dg2:          NOTRUN -> [SKIP][11] ([i915#4077])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-6/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gem_mmap_wc@copy:
    - shard-dg2:          NOTRUN -> [SKIP][12] ([i915#4083])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-6/igt@gem_mmap_wc@copy.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][13] ([i915#5190] / [i915#8428]) +2 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html

  * igt@gem_set_tiling_vs_gtt:
    - shard-dg2:          NOTRUN -> [SKIP][14] ([i915#4079])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@gem_set_tiling_vs_gtt.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-dg2:          NOTRUN -> [SKIP][15] ([i915#2856])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-6/igt@gen9_exec_parse@bb-start-far.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][16] ([i915#12455]) +1 other test incomplete
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-tglu:         NOTRUN -> [SKIP][17] ([i915#6590]) +1 other test skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-tglu-4/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-tglu-1:       NOTRUN -> [WARN][18] ([i915#2681]) +2 other tests warn
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][19] ([i915#4538] / [i915#5190]) +2 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][20] ([i915#12313])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-6/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][21] ([i915#6095]) +9 other tests skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-tglu-4/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][22] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][23] ([i915#10307] / [i915#6095]) +43 other tests skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-3/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-d-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#6095]) +3 other tests skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-10/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-dp-4.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][25] ([i915#6095]) +41 other tests skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg1-12/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-3.html

  * igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][26] ([i915#6095]) +14 other tests skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-tglu-1/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][27] ([i915#6095]) +33 other tests skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-rkl-4/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_chamelium_hpd@dp-hpd-storm-disable:
    - shard-tglu:         NOTRUN -> [SKIP][28] ([i915#7828])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-tglu-4/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#7118] / [i915#9424])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@srm:
    - shard-tglu:         NOTRUN -> [SKIP][30] ([i915#6944] / [i915#7116] / [i915#7118])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-tglu-4/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#13049])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:
    - shard-glk:          [PASS][32] -> [FAIL][33] ([i915#2346])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-glk4/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-glk8/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#9337])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-6/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][35] ([i915#3637]) +1 other test skip
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-tglu-4/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][36] -> [FAIL][37] ([i915#11989]) +1 other test fail
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-snb1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-snb4/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#9934])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-6/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][39] ([i915#2672] / [i915#3555])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][40] ([i915#2587] / [i915#2672])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:
    - shard-dg1:          NOTRUN -> [SKIP][41] ([i915#2672] / [i915#3555])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg1-18/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][42] ([i915#2587] / [i915#2672])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg1-18/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-rte:
    - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#5354]) +9 other tests skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-2p-rte.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-pwrite:
    - shard-tglu:         NOTRUN -> [SKIP][44] +1 other test skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-tglu-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][45] ([i915#3458])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#10433] / [i915#3458]) +1 other test skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#3458]) +5 other tests skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#8708]) +4 other tests skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-tglu-1:       NOTRUN -> [SKIP][49] +2 other tests skip
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-tglu:         NOTRUN -> [SKIP][50] ([i915#12713])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-tglu-4/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#4816])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][52] ([i915#12343])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-tglu-4/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_dc@dc5-dpms:
    - shard-rkl:          [PASS][53] -> [DMESG-WARN][54] ([i915#12964])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-rkl-1/igt@kms_pm_dc@dc5-dpms.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-rkl-1/igt@kms_pm_dc@dc5-dpms.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#11520]) +1 other test skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr@fbc-pr-cursor-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][56] ([i915#1072] / [i915#9732]) +1 other test skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg1-18/igt@kms_psr@fbc-pr-cursor-mmap-gtt.html

  * igt@kms_psr@psr2-cursor-blt:
    - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#1072] / [i915#9732]) +4 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@kms_psr@psr2-cursor-blt.html

  * igt@kms_psr@psr2-sprite-mmap-cpu:
    - shard-tglu-1:       NOTRUN -> [SKIP][58] ([i915#9732])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-tglu-1/igt@kms_psr@psr2-sprite-mmap-cpu.html

  * igt@kms_rotation_crc@bad-pixel-format:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#12755])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@kms_rotation_crc@bad-pixel-format.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
    - shard-tglu:         NOTRUN -> [SKIP][60] ([i915#5289])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-tglu-4/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html

  * igt@perf@disabled-read-error:
    - shard-tglu-1:       NOTRUN -> [ABORT][61] ([i915#13218]) +2 other tests abort
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-tglu-1/igt@perf@disabled-read-error.html

  * igt@perf@gen12-mi-rpc:
    - shard-tglu:         NOTRUN -> [ABORT][62] ([i915#13218]) +3 other tests abort
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-tglu-4/igt@perf@gen12-mi-rpc.html

  * igt@perf_pmu@idle-no-semaphores:
    - shard-dg1:          NOTRUN -> [ABORT][63] ([i915#13218]) +1 other test abort
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg1-18/igt@perf_pmu@idle-no-semaphores.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#8516])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@perf_pmu@rc6-all-gts.html

  * igt@sriov_basic@enable-vfs-autoprobe-on:
    - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#9917])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-6/igt@sriov_basic@enable-vfs-autoprobe-on.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#4818])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-3/igt@tools_test@sysfs_l3_parity.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - shard-dg2:          ([PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [FAIL][88]) ([i915#13138]) -> ([PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][104], [PASS][105], [PASS][106], [PASS][107], [PASS][108], [PASS][109], [PASS][110], [PASS][111], [PASS][112])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-3/igt@i915_module_load@load.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-3/igt@i915_module_load@load.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-5/igt@i915_module_load@load.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-1/igt@i915_module_load@load.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-8/igt@i915_module_load@load.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-2/igt@i915_module_load@load.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-4/igt@i915_module_load@load.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-10/igt@i915_module_load@load.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-8/igt@i915_module_load@load.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-4/igt@i915_module_load@load.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-2/igt@i915_module_load@load.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-5/igt@i915_module_load@load.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-7/igt@i915_module_load@load.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-6/igt@i915_module_load@load.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-1/igt@i915_module_load@load.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-2/igt@i915_module_load@load.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-8/igt@i915_module_load@load.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-10/igt@i915_module_load@load.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-5/igt@i915_module_load@load.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-6/igt@i915_module_load@load.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-11/igt@i915_module_load@load.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-11/igt@i915_module_load@load.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-2/igt@i915_module_load@load.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-6/igt@i915_module_load@load.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-11/igt@i915_module_load@load.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-3/igt@i915_module_load@load.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@i915_module_load@load.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-6/igt@i915_module_load@load.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-6/igt@i915_module_load@load.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-1/igt@i915_module_load@load.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-11/igt@i915_module_load@load.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-8/igt@i915_module_load@load.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-8/igt@i915_module_load@load.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-7/igt@i915_module_load@load.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-1/igt@i915_module_load@load.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-10/igt@i915_module_load@load.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-3/igt@i915_module_load@load.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-8/igt@i915_module_load@load.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-5/igt@i915_module_load@load.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-2/igt@i915_module_load@load.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-1/igt@i915_module_load@load.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@i915_module_load@load.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-10/igt@i915_module_load@load.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-3/igt@i915_module_load@load.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-5/igt@i915_module_load@load.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-7/igt@i915_module_load@load.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][113] ([i915#2346]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank:
    - shard-rkl:          [FAIL][115] ([i915#11989] / [i915#13152]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-rkl-5/igt@kms_flip@flip-vs-blocking-wf-vblank.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-rkl-4/igt@kms_flip@flip-vs-blocking-wf-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt:
    - shard-dg2:          [FAIL][117] ([i915#6880]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_setmode@basic:
    - shard-rkl:          [FAIL][119] ([i915#5465]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-rkl-7/igt@kms_setmode@basic.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-rkl-3/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@kms_content_protection@lic-type-0:
    - shard-dg2:          [TIMEOUT][121] ([i915#7173]) -> [SKIP][122] ([i915#9424])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-10/igt@kms_content_protection@lic-type-0.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-7/igt@kms_content_protection@lic-type-0.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          [SKIP][123] ([i915#3458]) -> [SKIP][124] ([i915#10433] / [i915#3458])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
  [i915#12455]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12455
  [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
  [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
  [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13138
  [i915#13152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13152
  [i915#13218]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13218
  [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
  [i915#4818]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4818
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5465]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
  [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#8289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8289
  [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_15788 -> Patchwork_142119v1

  CI-20190529: 20190529
  CI_DRM_15788: 62d365d6c3078d7e4f34dd65735f6fcd7b53a856 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8138: 8138
  Patchwork_142119v1: 62d365d6c3078d7e4f34dd65735f6fcd7b53a856 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/index.html

--===============0504545714798531459==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: handle hdmi connector init=
 failures, and no HDMI/DP cases</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/142119/">https://patchwork.freedesktop.org/series/142119/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_142119v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_142119v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15788_full -&gt; Patchwork_142119v=
1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (10 -&gt; 9)</h2>
<p>Missing    (1): shard-dg2-set2 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_142119v1_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_fdinfo@virtual-busy-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-6/igt@drm_fdinfo@virtual-busy-al=
l.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/8414">i915#8414</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-tglu-1/igt@gem_ccs@suspend-resume.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-6/igt@gem_ctx_sseu@invalid-sseu.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-3/igt@gem_exec_balancer@bonded-s=
ync.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13218">i915#13218</a>) +2 other tests abort</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@gem_exec_fence@submit3.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@gem_exec_flush@basic-uc-pr=
w-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3539">i915#3539</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@gem_exec_params@secure-non=
-root.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@too-many-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-6/igt@gem_fenced_exec_thrash@too=
-many-fences.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-6/igt@gem_media_fill@media-fill.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/8289">i915#8289</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg1-18/igt@gem_mmap_gtt@cpuset-basic=
-small-copy-odd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-6/igt@gem_mmap_gtt@cpuset-big-co=
py-xy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-6/igt@gem_mmap_wc@copy.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4=
083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@gem_render_copy@y-tiled-mc=
-ccs-to-yf-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +2 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@gem_set_tiling_vs_gtt.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-6/igt@gen9_exec_parse@bb-start-f=
ar.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@i915_pm_freq_api@freq-susp=
end@gt0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12455">i915#12455</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-tglu-4/igt@i915_pm_freq_mult@media-f=
req@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/6590">i915#6590</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-tglu-1/igt@i915_pm_rc6_residency@rc6=
-idle@gt0-vcs0.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/2681">i915#2681</a>) +2 other tests warn</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@kms_big_fb@yf-tiled-64bpp-=
rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-6/igt@kms_ccs@bad-rotation-90-4-=
tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-tglu-4/igt@kms_ccs@ccs-on-another-bo=
-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +9 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@kms_ccs@ccs-on-another-bo-=
4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#104=
34</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-3/igt@kms_ccs@ccs-on-another-bo-=
y-tiled-ccs@pipe-d-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +4=
3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-10/igt@kms_ccs@crc-primary-suspe=
nd-4-tiled-mtl-rc-ccs-cc@pipe-c-dp-4.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +3 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-3:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg1-12/igt@kms_ccs@crc-primary-suspe=
nd-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-3.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +41 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-tglu-1/igt@kms_ccs@missing-ccs-buffe=
r-yf-tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +14 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-rkl-4/igt@kms_ccs@random-ccs-data-y-=
tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +33 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm-disable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-tglu-4/igt@kms_chamelium_hpd@dp-hpd-=
storm-disable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@kms_content_protection@leg=
acy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-tglu-4/igt@kms_content_protection@sr=
m.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/7116">i915#7116</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@kms_cursor_crc@cursor-rapi=
d-movement-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15788/shard-glk4/igt@kms_cursor_legacy@short-flip-after-cursor-atom=
ic-transitions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_142119v1/shard-glk8/igt@kms_cursor_legacy@short-flip=
-after-cursor-atomic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-6/igt@kms_feature_discovery@dp-m=
st.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/9337">i915#9337</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-tglu-4/igt@kms_flip@2x-flip-vs-absol=
ute-wf_vblank-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15788/shard-snb1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1=
-hdmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_142119v1/shard-snb4/igt@kms_flip@2x-flip-vs-absolute-wf_vb=
lank@ab-vga1-hdmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/11989">i915#11989</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-6/igt@kms_flip@2x-flip-vs-pannin=
g-vs-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:</=
p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-64bpp-yftile-downscaling.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3=
555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pi=
pe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i9=
15#2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg1-18/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-16bpp-4tile-downscaling.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#355=
5</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg1-18/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915=
#2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@kms_frontbuffer_tracking@f=
bc-2p-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/5354">i915#5354</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-tglu-4/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-cur-indfb-draw-pwrite.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg1-18/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@kms_frontbuffer_tracking@f=
bcpsr-rgb565-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +1 ot=
her test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-6/igt@kms_frontbuffer_tracking@p=
sr-1p-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3458">i915#3458</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-3/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +4 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-tglu-1/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> +2 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-tglu-4/igt@kms_hdr@brightness-with-h=
dr.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/12713">i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-3/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-tglu-4/igt@kms_pm_backlight@brightne=
ss-with-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/12343">i915#12343</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15788/shard-rkl-1/igt@kms_pm_dc@dc5-dpms.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-rkl=
-1/igt@kms_pm_dc@dc5-dpms.html">DMESG-WARN</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@kms_psr2_sf@fbc-psr2-overl=
ay-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 =
other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-cursor-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg1-18/igt@kms_psr@fbc-pr-cursor-mma=
p-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/9732">i915#9732</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@kms_psr@psr2-cursor-blt.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-cpu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-tglu-1/igt@kms_psr@psr2-sprite-mmap-=
cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@bad-pixel-format:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@kms_rotation_crc@bad-pixel=
-format.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/12755">i915#12755</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-tglu-4/igt@kms_rotation_crc@primary-=
4-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@disabled-read-error:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-tglu-1/igt@perf@disabled-read-error.=
html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/13218">i915#13218</a>) +2 other tests abort</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-mi-rpc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-tglu-4/igt@perf@gen12-mi-rpc.html">A=
BORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/13218">i915#13218</a>) +3 other tests abort</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@idle-no-semaphores:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg1-18/igt@perf_pmu@idle-no-semaphor=
es.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/13218">i915#13218</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@perf_pmu@rc6-all-gts.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-6/igt@sriov_basic@enable-vfs-aut=
oprobe-on.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_142119v1/shard-dg2-3/igt@tools_test@sysfs_l3_parity=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/4818">i915#4818</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15788/shard-dg2-3/igt@i915_module_load@load.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-3/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_15788/shard-dg2-5/igt@i915_module_load@load.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/sha=
rd-dg2-1/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-8/igt@i915_module_load@l=
oad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_15788/shard-dg2-2/igt@i915_module_load@load.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-4/igt@i915_=
module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_15788/shard-dg2-10/igt@i915_module_load@load.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-d=
g2-8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-4/igt@i915_module_load@load.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15788/shard-dg2-2/igt@i915_module_load@load.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-5/igt@i915_modu=
le_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_15788/shard-dg2-7/igt@i915_module_load@load.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-6/=
igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_15788/shard-dg2-1/igt@i915_module_load@load.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788=
/shard-dg2-2/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-8/igt@i915_module_lo=
ad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15788/shard-dg2-10/igt@i915_module_load@load.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-5/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_15788/shard-dg2-6/igt@i915_module_load@load.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/sha=
rd-dg2-11/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_15788/shard-dg2-11/igt@i915_module_load=
@load.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/13138">i915#13138</a>) -&gt; (<a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-2/igt@i915_module_load@l=
oad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_142119v1/shard-dg2-6/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2=
-11/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-3/igt@i915_module_load@=
load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_142119v1/shard-dg2-4/igt@i915_module_load@load.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg=
2-6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-6/igt@i915_module_load@=
load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_142119v1/shard-dg2-1/igt@i915_module_load@load.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg=
2-11/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-8/igt@i915_module_load=
@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_142119v1/shard-dg2-8/igt@i915_module_load@load.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-d=
g2-7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-1/igt@i915_module_load=
@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_142119v1/shard-dg2-10/igt@i915_module_load@load.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-=
dg2-3/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-8/igt@i915_module_loa=
d@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_142119v1/shard-dg2-5/igt@i915_module_load@load.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-=
dg2-2/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-1/igt@i915_module_loa=
d@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_142119v1/shard-dg2-4/igt@i915_module_load@load.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-=
dg2-10/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-3/igt@i915_module_lo=
ad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_142119v1/shard-dg2-5/igt@i915_module_load@load.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard=
-dg2-7/igt@i915_module_load@load.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15788/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-glk9/igt@kms_cursor=
_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15788/shard-rkl-5/igt@kms_flip@flip-vs-blocking-wf-vblank.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
1989">i915#11989</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/13152">i915#13152</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_142119v1/shard-rkl-4/igt@kms_flip@flip-vs-bl=
ocking-wf-vblank.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15788/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-=
indfb-draw-blt.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/6880">i915#6880</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_142119v1/shard-dg2-2/igt@kms_frontbuff=
er_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15788/shard-rkl-7/igt@kms_setmode@basic.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465">i915#5465</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14211=
9v1/shard-rkl-3/igt@kms_setmode@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15788/shard-dg2-10/igt@kms_content_protection@lic-type-0.html">TIME=
OUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/7173">i915#7173</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_142119v1/shard-dg2-7/igt@kms_content_protection@lic-type-0.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15788/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-indfb-scaledprim=
ary.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3458">i915#3458</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_142119v1/shard-dg2-4/igt@kms_frontbuffer_tracking=
@psr-indfb-scaledprimary.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15788 -&gt; Patchwork_142119v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15788: 62d365d6c3078d7e4f34dd65735f6fcd7b53a856 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_8138: 8138<br />
  Patchwork_142119v1: 62d365d6c3078d7e4f34dd65735f6fcd7b53a856 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============0504545714798531459==--
