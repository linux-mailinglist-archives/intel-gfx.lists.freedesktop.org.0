Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A3173F0E4
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 04:39:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E27D10E13B;
	Tue, 27 Jun 2023 02:39:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 540F010E04C;
 Tue, 27 Jun 2023 02:39:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 02B80AA3D8;
 Tue, 27 Jun 2023 02:39:17 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2140011424494103842=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Simon Ser" <contact@emersion.fr>
Date: Tue, 27 Jun 2023 02:39:17 -0000
Message-ID: <168783355797.2456.10902051245656598867@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230623094229.120264-1-contact@emersion.fr>
In-Reply-To: <20230623094229.120264-1-contact@emersion.fr>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5/display/hotplug=3A_use_drm=5Fkms=5Fhelper=5Fconnector=5Fhotpl?=
 =?utf-8?b?dWdfZXZlbnQoKSAocmV2Myk=?=
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

--===============2140011424494103842==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915/display/hotplug: use drm_kms_helper_connector_hotplug_event() (rev3)
URL   : https://patchwork.freedesktop.org/series/119603/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13322_full -> Patchwork_119603v3_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_119603v3_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_119603v3_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_119603v3_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_rotation_crc@primary-rotation-90:
    - shard-rkl:          [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-7/igt@kms_rotation_crc@primary-rotation-90.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-rkl-6/igt@kms_rotation_crc@primary-rotation-90.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_ctx_persistence@hostile:
    - {shard-mtlp}:       [PASS][3] -> [TIMEOUT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-3/igt@gem_ctx_persistence@hostile.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-mtlp-7/igt@gem_ctx_persistence@hostile.html

  * igt@gem_exec_schedule@deep@vecs0:
    - {shard-mtlp}:       [FAIL][5] ([i915#8606]) -> [TIMEOUT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-3/igt@gem_exec_schedule@deep@vecs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-mtlp-7/igt@gem_exec_schedule@deep@vecs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_119603v3_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_fdinfo@idle@rcs0:
    - shard-rkl:          [PASS][7] -> [FAIL][8] ([i915#7742])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-1/igt@drm_fdinfo@idle@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-rkl-7/igt@drm_fdinfo@idle@rcs0.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-tglu:         NOTRUN -> [SKIP][9] ([i915#6335])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglu:         [PASS][10] -> [FAIL][11] ([i915#6268])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-tglu-6/igt@gem_ctx_exec@basic-nohangcheck.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#2842])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_params@secure-non-master:
    - shard-tglu:         NOTRUN -> [SKIP][14] ([fdo#112283])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@gem_exec_params@secure-non-master.html

  * igt@gem_mmap_gtt@coherency:
    - shard-tglu:         NOTRUN -> [SKIP][15] ([fdo#111656])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@gem_mmap_gtt@coherency.html

  * igt@gen7_exec_parse@cmd-crossing-page:
    - shard-tglu:         NOTRUN -> [SKIP][16] ([fdo#109289])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@gen7_exec_parse@cmd-crossing-page.html

  * igt@i915_pm_freq_api@freq-basic-api:
    - shard-tglu:         NOTRUN -> [SKIP][17] ([i915#8399])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@i915_pm_freq_api@freq-basic-api.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          [PASS][18] -> [SKIP][19] ([i915#1397])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-1/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
    - shard-tglu:         NOTRUN -> [SKIP][20] ([fdo#111615] / [i915#5286])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-4_tiled_mtl_mc_ccs:
    - shard-tglu:         NOTRUN -> [SKIP][21] ([i915#5354] / [i915#6095]) +4 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@kms_ccs@pipe-a-bad-pixel-format-4_tiled_mtl_mc_ccs.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-yf_tiled_ccs:
    - shard-tglu:         NOTRUN -> [SKIP][22] ([fdo#111615] / [i915#3689] / [i915#5354] / [i915#6095])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@kms_ccs@pipe-a-bad-rotation-90-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-tglu:         NOTRUN -> [SKIP][23] ([i915#3689] / [i915#3886] / [i915#5354] / [i915#6095])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_dg2_rc_ccs:
    - shard-tglu:         NOTRUN -> [SKIP][24] ([i915#3689] / [i915#5354] / [i915#6095]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_dg2_rc_ccs.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-tglu:         NOTRUN -> [SKIP][25] ([i915#7828]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][26] ([i915#3359])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#72])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
    - shard-tglu:         NOTRUN -> [SKIP][29] ([fdo#109274])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-tglu:         NOTRUN -> [SKIP][30] ([i915#4103])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][31] ([i915#2587] / [i915#2672] / [i915#4579])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move:
    - shard-tglu:         NOTRUN -> [SKIP][32] ([fdo#109280]) +5 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-stridechange:
    - shard-tglu:         NOTRUN -> [SKIP][33] ([fdo#110189]) +7 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html

  * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][34] ([i915#5176]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][35] ([i915#4579] / [i915#5176]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-hdmi-a-1:
    - shard-snb:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#4579]) +9 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-snb1/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-a-vga-1:
    - shard-snb:          NOTRUN -> [SKIP][37] ([fdo#109271]) +14 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-snb7/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-a-vga-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][38] ([i915#5235])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][39] ([i915#4579] / [i915#5235])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-tglu:         NOTRUN -> [SKIP][40] ([fdo#111068] / [i915#658])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-rkl:          [PASS][41] -> [ABORT][42] ([i915#7461])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-6/igt@kms_rotation_crc@primary-rotation-270.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-rkl-1/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_setmode@basic@pipe-a-hdmi-a-1:
    - shard-snb:          NOTRUN -> [FAIL][43] ([i915#5465]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-snb1/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html

  * igt@perf@stress-open-close@0-rcs0:
    - shard-glk:          [PASS][44] -> [ABORT][45] ([i915#5213] / [i915#7941])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-glk6/igt@perf@stress-open-close@0-rcs0.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-glk4/igt@perf@stress-open-close@0-rcs0.html

  * igt@v3d/v3d_perfmon@create-perfmon-exceed:
    - shard-tglu:         NOTRUN -> [SKIP][46] ([fdo#109315] / [i915#2575]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@v3d/v3d_perfmon@create-perfmon-exceed.html

  * igt@vc4/vc4_purgeable_bo@mark-purgeable:
    - shard-tglu:         NOTRUN -> [SKIP][47] ([i915#2575])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@vc4/vc4_purgeable_bo@mark-purgeable.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          [FAIL][48] ([i915#7742]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-rkl-7/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@gem_barrier_race@remote-request@rcs0:
    - shard-tglu:         [ABORT][50] ([i915#8178]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-tglu-5/igt@gem_barrier_race@remote-request@rcs0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@gem_barrier_race@remote-request@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][52] ([i915#2842]) -> [PASS][53] +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-rkl:          [FAIL][54] ([i915#2842]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-7/igt@gem_exec_fair@basic-pace@vcs0.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-rkl-2/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_schedule@deep@vcs1:
    - {shard-mtlp}:       [FAIL][56] ([i915#8606]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-3/igt@gem_exec_schedule@deep@vcs1.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-mtlp-7/igt@gem_exec_schedule@deep@vcs1.html

  * igt@gem_exec_whisper@basic-fds-all:
    - {shard-mtlp}:       [FAIL][58] ([i915#6363]) -> [PASS][59] +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-1/igt@gem_exec_whisper@basic-fds-all.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-mtlp-1/igt@gem_exec_whisper@basic-fds-all.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - {shard-dg2}:        [TIMEOUT][60] ([i915#5493]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg2-8/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html
    - {shard-dg1}:        [DMESG-WARN][62] ([i915#4936] / [i915#5493]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_userptr_blits@huge-split:
    - shard-snb:          [FAIL][64] ([i915#2724]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-snb2/igt@gem_userptr_blits@huge-split.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-snb5/igt@gem_userptr_blits@huge-split.html

  * igt@i915_module_load@reload-with-fault-injection:
    - {shard-mtlp}:       [ABORT][66] ([i915#8489]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-tglu:         [SKIP][68] ([i915#4281]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-tglu-3/igt@i915_pm_dc@dc9-dpms.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-9/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - {shard-dg2}:        [SKIP][70] ([i915#1397]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg2-12/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-dg2-7/igt@i915_pm_rpm@modeset-non-lpsp-stress.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [SKIP][72] ([i915#1397]) -> [PASS][73] +3 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-rkl-2/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@i915_selftest@live@gt_mocs:
    - {shard-mtlp}:       [DMESG-FAIL][74] ([i915#7059]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-4/igt@i915_selftest@live@gt_mocs.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-mtlp-6/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@slpc:
    - {shard-mtlp}:       [DMESG-WARN][76] ([i915#6367]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-4/igt@i915_selftest@live@slpc.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-mtlp-6/igt@i915_selftest@live@slpc.html

  * igt@i915_selftest@live@workarounds:
    - {shard-mtlp}:       [DMESG-FAIL][78] ([i915#6763]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-4/igt@i915_selftest@live@workarounds.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-mtlp-6/igt@i915_selftest@live@workarounds.html

  * igt@i915_suspend@debugfs-reader:
    - {shard-dg2}:        [FAIL][80] ([fdo#103375]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg2-5/igt@i915_suspend@debugfs-reader.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-dg2-7/igt@i915_suspend@debugfs-reader.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - {shard-mtlp}:       [FAIL][82] ([i915#5138]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - {shard-mtlp}:       [FAIL][84] ([i915#3743]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-mtlp-3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-apl:          [FAIL][86] ([i915#2346]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu:
    - {shard-dg2}:        [FAIL][88] -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg2-12/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-dg2-12/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_sysfs_edid_timing:
    - {shard-dg2}:        [FAIL][90] ([IGT#2]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg2-8/igt@kms_sysfs_edid_timing.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-dg2-11/igt@kms_sysfs_edid_timing.html

  * igt@perf@non-zero-reason@0-rcs0:
    - {shard-dg2}:        [FAIL][92] ([i915#7484]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-dg2-6/igt@perf@non-zero-reason@0-rcs0.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
    - shard-tglu:         [WARN][94] ([i915#2681]) -> [FAIL][95] ([i915#2681] / [i915#3591]) +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
    - shard-tglu:         [FAIL][96] ([i915#2681] / [i915#3591]) -> [WARN][97] ([i915#2681])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][98] ([fdo#110189] / [i915#3955]) -> [SKIP][99] ([i915#3955])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-rkl:          [SKIP][100] ([fdo#109285] / [i915#4098]) -> [SKIP][101] ([fdo#109285])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-1/igt@kms_force_connector_basic@force-load-detect.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-rkl-7/igt@kms_force_connector_basic@force-load-detect.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4348]: https://gitlab.freedesktop.org/drm/intel/issues/4348
  [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5464]: https://gitlab.freedesktop.org/drm/intel/issues/5464
  [i915#5465]: https://gitlab.freedesktop.org/drm/intel/issues/5465
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6363]: https://gitlab.freedesktop.org/drm/intel/issues/6363
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6763]: https://gitlab.freedesktop.org/drm/intel/issues/6763
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#6950]: https://gitlab.freedesktop.org/drm/intel/issues/6950
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7162]: https://gitlab.freedesktop.org/drm/intel/issues/7162
  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#7331]: https://gitlab.freedesktop.org/drm/intel/issues/7331
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7484]: https://gitlab.freedesktop.org/drm/intel/issues/7484
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7941]: https://gitlab.freedesktop.org/drm/intel/issues/7941
  [i915#8178]: https://gitlab.freedesktop.org/drm/intel/issues/8178
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8399]: https://gitlab.freedesktop.org/drm/intel/issues/8399
  [i915#8489]: https://gitlab.freedesktop.org/drm/intel/issues/8489
  [i915#8521]: https://gitlab.freedesktop.org/drm/intel/issues/8521
  [i915#8545]: https://gitlab.freedesktop.org/drm/intel/issues/8545
  [i915#8606]: https://gitlab.freedesktop.org/drm/intel/issues/8606
  [i915#8661]: https://gitlab.freedesktop.org/drm/intel/issues/8661
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708


Build changes
-------------

  * Linux: CI_DRM_13322 -> Patchwork_119603v3

  CI-20190529: 20190529
  CI_DRM_13322: 7067d1a82560a2e79adefac0d28e08cb163ae907 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7349: eba3d515fbb832edc7fabcbf90e2564aa7face7b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_119603v3: 7067d1a82560a2e79adefac0d28e08cb163ae907 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/index.html

--===============2140011424494103842==
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
<tr><td><b>Series:</b></td><td>i915/display/hotplug: use drm_kms_helper_connector_hotplug_event() (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/119603/">https://patchwork.freedesktop.org/series/119603/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13322_full -&gt; Patchwork_119603v3_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_119603v3_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_119603v3_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_119603v3_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_rotation_crc@primary-rotation-90:<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-7/igt@kms_rotation_crc@primary-rotation-90.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-rkl-6/igt@kms_rotation_crc@primary-rotation-90.html">ABORT</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>{shard-mtlp}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-3/igt@gem_ctx_persistence@hostile.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-mtlp-7/igt@gem_ctx_persistence@hostile.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@deep@vecs0:</p>
<ul>
<li>{shard-mtlp}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-3/igt@gem_exec_schedule@deep@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8606">i915#8606</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-mtlp-7/igt@gem_exec_schedule@deep@vecs0.html">TIMEOUT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_119603v3_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_fdinfo@idle@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-1/igt@drm_fdinfo@idle@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-rkl-7/igt@drm_fdinfo@idle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@gem_create@create-ext-cpu-access-big.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-tglu-6/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@gem_exec_params@secure-non-master.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=112283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@gem_mmap_gtt@coherency.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111656">fdo#111656</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@gen7_exec_parse@cmd-crossing-page.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-basic-api:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@i915_pm_freq_api@freq-basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-1/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-4_tiled_mtl_mc_ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@kms_ccs@pipe-a-bad-pixel-format-4_tiled_mtl_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-yf_tiled_ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@kms_ccs@pipe-a-bad-rotation-90-yf_tiled_ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/72">i915#72</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109280">fdo#109280</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-stridechange:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-snb1/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-a-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-snb7/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-a-vga-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-6/igt@kms_rotation_crc@primary-rotation-270.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-rkl-1/igt@kms_rotation_crc@primary-rotation-270.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-snb1/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5465">i915#5465</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@stress-open-close@0-rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-glk6/igt@perf@stress-open-close@0-rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-glk4/igt@perf@stress-open-close@0-rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5213">i915#5213</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7941">i915#7941</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@create-perfmon-exceed:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@v3d/v3d_perfmon@create-perfmon-exceed.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-purgeable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@vc4/vc4_purgeable_bo@mark-purgeable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-rkl-7/igt@drm_fdinfo@most-busy-check-all@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_barrier_race@remote-request@rcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-tglu-5/igt@gem_barrier_race@remote-request@rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8178">i915#8178</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-8/igt@gem_barrier_race@remote-request@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-7/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-rkl-2/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@deep@vcs1:</p>
<ul>
<li>{shard-mtlp}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-3/igt@gem_exec_schedule@deep@vcs1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8606">i915#8606</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-mtlp-7/igt@gem_exec_schedule@deep@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-all:</p>
<ul>
<li>{shard-mtlp}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-1/igt@gem_exec_whisper@basic-fds-all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6363">i915#6363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-mtlp-1/igt@gem_exec_whisper@basic-fds-all.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>
<p>{shard-dg2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg2-8/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a></p>
</li>
<li>
<p>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4936">i915#4936</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@huge-split:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-snb2/igt@gem_userptr_blits@huge-split.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2724">i915#2724</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-snb5/igt@gem_userptr_blits@huge-split.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>{shard-mtlp}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8489">i915#8489</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-tglu-3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4281">i915#4281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-9/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>{shard-dg2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg2-12/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-dg2-7/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-rkl-2/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>{shard-mtlp}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-4/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7059">i915#7059</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-mtlp-6/igt@i915_selftest@live@gt_mocs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>{shard-mtlp}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-4/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-mtlp-6/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>{shard-mtlp}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-4/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6763">i915#6763</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>{shard-dg2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg2-5/igt@i915_suspend@debugfs-reader.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-dg2-7/igt@i915_suspend@debugfs-reader.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>{shard-mtlp}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#5138</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>{shard-mtlp}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-mtlp-3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>{shard-dg2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg2-12/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-dg2-12/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>{shard-dg2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg2-8/igt@kms_sysfs_edid_timing.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2">IGT#2</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-dg2-11/igt@kms_sysfs_edid_timing.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>{shard-dg2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7484">i915#7484</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-dg2-6/igt@perf@non-zero-reason@0-rcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@rcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vecs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119603v3/shard-rkl-7/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13322 -&gt; Patchwork_119603v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13322: 7067d1a82560a2e79adefac0d28e08cb163ae907 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7349: eba3d515fbb832edc7fabcbf90e2564aa7face7b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_119603v3: 7067d1a82560a2e79adefac0d28e08cb163ae907 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============2140011424494103842==--
