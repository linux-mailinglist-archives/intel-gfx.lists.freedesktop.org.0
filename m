Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 034E473EFB8
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 02:32:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D58E10E26E;
	Tue, 27 Jun 2023 00:32:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3F07510E268;
 Tue, 27 Jun 2023 00:32:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 37C38A73C7;
 Tue, 27 Jun 2023 00:32:23 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7650181027219245074=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Tue, 27 Jun 2023 00:32:23 -0000
Message-ID: <168782594318.2459.11936513325767996444@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230626091450.14757-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20230626091450.14757-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/ttm=3A_Fixes_around_resources_and_bulk_moves_=28rev2=29?=
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

--===============7650181027219245074==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/ttm: Fixes around resources and bulk moves (rev2)
URL   : https://patchwork.freedesktop.org/series/119740/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13322_full -> Patchwork_119740v2_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (9 -> 10)
------------------------------

  Additional (1): shard-rkl0 

New tests
---------

  New tests have been introduced between CI_DRM_13322_full and Patchwork_119740v2_full:

### New IGT tests (2) ###

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-dp-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-c-dp-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_119740v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_fdinfo@idle@rcs0:
    - shard-rkl:          [PASS][1] -> [FAIL][2] ([i915#7742])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-1/igt@drm_fdinfo@idle@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-rkl-6/igt@drm_fdinfo@idle@rcs0.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-tglu:         NOTRUN -> [SKIP][3] ([i915#6335])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [PASS][4] -> [FAIL][5] ([i915#2842])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-rkl:          [PASS][6] -> [FAIL][7] ([i915#2842])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-7/igt@gem_exec_fair@basic-pace@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-rkl-2/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_params@secure-non-master:
    - shard-tglu:         NOTRUN -> [SKIP][8] ([fdo#112283])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@gem_exec_params@secure-non-master.html

  * igt@gem_mmap_gtt@coherency:
    - shard-tglu:         NOTRUN -> [SKIP][9] ([fdo#111656])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@gem_mmap_gtt@coherency.html

  * igt@gen7_exec_parse@cmd-crossing-page:
    - shard-tglu:         NOTRUN -> [SKIP][10] ([fdo#109289])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@gen7_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][11] -> [ABORT][12] ([i915#5566])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-apl4/igt@gen9_exec_parse@allowed-all.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-apl6/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_freq_api@freq-basic-api:
    - shard-tglu:         NOTRUN -> [SKIP][13] ([i915#8399])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@i915_pm_freq_api@freq-basic-api.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-rkl:          [PASS][14] -> [SKIP][15] ([i915#1397]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-1/igt@i915_pm_rpm@modeset-non-lpsp.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][16] ([i915#8502]) +3 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-rkl-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc_ccs.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
    - shard-tglu:         NOTRUN -> [SKIP][17] ([fdo#111615] / [i915#5286])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-4_tiled_mtl_mc_ccs:
    - shard-tglu:         NOTRUN -> [SKIP][18] ([i915#5354] / [i915#6095]) +4 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@kms_ccs@pipe-a-bad-pixel-format-4_tiled_mtl_mc_ccs.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-yf_tiled_ccs:
    - shard-tglu:         NOTRUN -> [SKIP][19] ([fdo#111615] / [i915#3689] / [i915#5354] / [i915#6095])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@kms_ccs@pipe-a-bad-rotation-90-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-tglu:         NOTRUN -> [SKIP][20] ([i915#3689] / [i915#3886] / [i915#5354] / [i915#6095])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_dg2_rc_ccs:
    - shard-tglu:         NOTRUN -> [SKIP][21] ([i915#3689] / [i915#5354] / [i915#6095]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_dg2_rc_ccs.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-tglu:         NOTRUN -> [SKIP][22] ([i915#7828]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][23] ([i915#3359])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
    - shard-tglu:         NOTRUN -> [SKIP][24] ([fdo#109274])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#2346])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          [PASS][27] -> [FAIL][28] ([i915#2346])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-tglu:         NOTRUN -> [SKIP][29] ([i915#4103])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][30] ([i915#2587] / [i915#2672] / [i915#4579])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move:
    - shard-tglu:         NOTRUN -> [SKIP][31] ([fdo#109280]) +5 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-stridechange:
    - shard-tglu:         NOTRUN -> [SKIP][32] ([fdo#110189]) +7 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html

  * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][33] ([i915#5176]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][34] ([i915#4579] / [i915#5176]) +2 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-1:
    - shard-snb:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#4579]) +14 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-snb1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#5235])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][37] ([i915#4579] / [i915#5235])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-a-hdmi-a-1:
    - shard-snb:          NOTRUN -> [SKIP][38] ([fdo#109271]) +20 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-snb1/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-a-hdmi-a-1.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-tglu:         NOTRUN -> [SKIP][39] ([fdo#111068] / [i915#658])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_rotation_crc@sprite-rotation-90:
    - shard-rkl:          [PASS][40] -> [ABORT][41] ([i915#8178])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-2/igt@kms_rotation_crc@sprite-rotation-90.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-rkl-2/igt@kms_rotation_crc@sprite-rotation-90.html

  * igt@v3d/v3d_perfmon@create-perfmon-exceed:
    - shard-tglu:         NOTRUN -> [SKIP][42] ([fdo#109315] / [i915#2575]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@v3d/v3d_perfmon@create-perfmon-exceed.html

  * igt@vc4/vc4_purgeable_bo@mark-purgeable:
    - shard-tglu:         NOTRUN -> [SKIP][43] ([i915#2575])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@vc4/vc4_purgeable_bo@mark-purgeable.html

  
#### Possible fixes ####

  * igt@gem_barrier_race@remote-request@rcs0:
    - shard-tglu:         [ABORT][44] ([i915#8178]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-tglu-5/igt@gem_barrier_race@remote-request@rcs0.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@gem_barrier_race@remote-request@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][46] ([i915#2842]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-rkl:          [FAIL][48] ([i915#2842]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-rkl-2/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-tglu:         [FAIL][50] ([i915#2842]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-tglu-8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_schedule@deep@vcs1:
    - {shard-mtlp}:       [FAIL][52] ([i915#8606]) -> [PASS][53] +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-3/igt@gem_exec_schedule@deep@vcs1.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-mtlp-2/igt@gem_exec_schedule@deep@vcs1.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - {shard-dg2}:        [ABORT][54] ([i915#7975] / [i915#8213] / [i915#8682]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg2-10/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - {shard-mtlp}:       [ABORT][56] ([i915#8131]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-3/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-mtlp-1/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@gem_exec_whisper@basic-fds-all:
    - {shard-mtlp}:       [FAIL][58] ([i915#6363]) -> [PASS][59] +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-1/igt@gem_exec_whisper@basic-fds-all.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-mtlp-8/igt@gem_exec_whisper@basic-fds-all.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - {shard-dg1}:        [DMESG-WARN][60] ([i915#4936] / [i915#5493]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_userptr_blits@huge-split:
    - shard-snb:          [FAIL][62] ([i915#2724]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-snb2/igt@gem_userptr_blits@huge-split.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-snb1/igt@gem_userptr_blits@huge-split.html

  * igt@i915_module_load@reload-with-fault-injection:
    - {shard-dg2}:        [DMESG-WARN][64] ([i915#7061]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg2-5/igt@i915_module_load@reload-with-fault-injection.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-dg2-8/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglu:         [FAIL][66] ([i915#3989] / [i915#454]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-tglu-7/igt@i915_pm_dc@dc6-dpms.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-9/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-tglu:         [SKIP][68] ([i915#4281]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-tglu-3/igt@i915_pm_dc@dc9-dpms.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-2/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
    - {shard-dg2}:        [SKIP][70] ([i915#1937] / [i915#4579]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg2-1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-dg2-10/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
    - shard-rkl:          [SKIP][72] ([i915#1937] / [i915#4579]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-rkl-7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - {shard-dg2}:        [SKIP][74] ([i915#1397]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg2-12/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-dg2-8/igt@i915_pm_rpm@modeset-non-lpsp-stress.html

  * igt@i915_selftest@live@gt_mocs:
    - {shard-mtlp}:       [DMESG-FAIL][76] ([i915#7059]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-4/igt@i915_selftest@live@gt_mocs.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-mtlp-1/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@slpc:
    - {shard-mtlp}:       [DMESG-WARN][78] ([i915#6367]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-4/igt@i915_selftest@live@slpc.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-mtlp-1/igt@i915_selftest@live@slpc.html

  * igt@i915_selftest@live@workarounds:
    - {shard-mtlp}:       [DMESG-FAIL][80] ([i915#6763]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-4/igt@i915_selftest@live@workarounds.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-mtlp-1/igt@i915_selftest@live@workarounds.html

  * igt@i915_suspend@forcewake:
    - {shard-dg2}:        [FAIL][82] ([fdo#103375]) -> [PASS][83] +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg2-5/igt@i915_suspend@forcewake.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-dg2-8/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - {shard-mtlp}:       [FAIL][84] ([i915#5138]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - {shard-mtlp}:       [FAIL][86] ([i915#3743]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-mtlp-3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-apl:          [FAIL][88] ([i915#2346]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a4:
    - {shard-dg1}:        [FAIL][90] ([i915#79]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg1-16/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a4.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-dg1-18/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a4.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu:
    - {shard-dg2}:        [FAIL][92] -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg2-12/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@perf@non-zero-reason@0-rcs0:
    - {shard-dg2}:        [FAIL][94] ([i915#7484]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-dg2-5/igt@perf@non-zero-reason@0-rcs0.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-tglu:         [WARN][96] ([i915#2681]) -> [FAIL][97] ([i915#2681] / [i915#3591])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
    - shard-tglu:         [FAIL][98] ([i915#2681] / [i915#3591]) -> [WARN][99] ([i915#2681])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][100] ([fdo#110189] / [i915#3955]) -> [SKIP][101] ([i915#3955])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-rkl:          [SKIP][102] ([fdo#109285] / [i915#4098]) -> [SKIP][103] ([fdo#109285])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-1/igt@kms_force_connector_basic@force-load-detect.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-rkl-6/igt@kms_force_connector_basic@force-load-detect.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

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
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1339]: https://gitlab.freedesktop.org/drm/intel/issues/1339
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6363]: https://gitlab.freedesktop.org/drm/intel/issues/6363
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6763]: https://gitlab.freedesktop.org/drm/intel/issues/6763
  [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
  [i915#7061]: https://gitlab.freedesktop.org/drm/intel/issues/7061
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7162]: https://gitlab.freedesktop.org/drm/intel/issues/7162
  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
  [i915#7484]: https://gitlab.freedesktop.org/drm/intel/issues/7484
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#7941]: https://gitlab.freedesktop.org/drm/intel/issues/7941
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8131]: https://gitlab.freedesktop.org/drm/intel/issues/8131
  [i915#8178]: https://gitlab.freedesktop.org/drm/intel/issues/8178
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8248]: https://gitlab.freedesktop.org/drm/intel/issues/8248
  [i915#8399]: https://gitlab.freedesktop.org/drm/intel/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
  [i915#8561]: https://gitlab.freedesktop.org/drm/intel/issues/8561
  [i915#8573]: https://gitlab.freedesktop.org/drm/intel/issues/8573
  [i915#8606]: https://gitlab.freedesktop.org/drm/intel/issues/8606
  [i915#8661]: https://gitlab.freedesktop.org/drm/intel/issues/8661
  [i915#8682]: https://gitlab.freedesktop.org/drm/intel/issues/8682
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709


Build changes
-------------

  * Linux: CI_DRM_13322 -> Patchwork_119740v2

  CI-20190529: 20190529
  CI_DRM_13322: 7067d1a82560a2e79adefac0d28e08cb163ae907 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7349: eba3d515fbb832edc7fabcbf90e2564aa7face7b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_119740v2: 7067d1a82560a2e79adefac0d28e08cb163ae907 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/index.html

--===============7650181027219245074==
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
<tr><td><b>Series:</b></td><td>drm/ttm: Fixes around resources and bulk moves (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/119740/">https://patchwork.freedesktop.org/series/119740/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13322_full -&gt; Patchwork_119740v2_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (9 -&gt; 10)</h2>
<p>Additional (1): shard-rkl0 </p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_13322_full and Patchwork_119740v2_full:</p>
<h3>New IGT tests (2)</h3>
<ul>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-dp-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-c-dp-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_119740v2_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_fdinfo@idle@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-1/igt@drm_fdinfo@idle@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-rkl-6/igt@drm_fdinfo@idle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@gem_create@create-ext-cpu-access-big.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-7/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-rkl-2/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@gem_exec_params@secure-non-master.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=112283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@gem_mmap_gtt@coherency.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111656">fdo#111656</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@gen7_exec_parse@cmd-crossing-page.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-apl4/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-apl6/igt@gen9_exec_parse@allowed-all.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-basic-api:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@i915_pm_freq_api@freq-basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-1/igt@i915_pm_rpm@modeset-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-rkl-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8502">i915#8502</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-4_tiled_mtl_mc_ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@kms_ccs@pipe-a-bad-pixel-format-4_tiled_mtl_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-yf_tiled_ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@kms_ccs@pipe-a-bad-rotation-90-yf_tiled_ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109280">fdo#109280</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-stridechange:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-snb1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-snb1/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-2/igt@kms_rotation_crc@sprite-rotation-90.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-rkl-2/igt@kms_rotation_crc@sprite-rotation-90.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8178">i915#8178</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@create-perfmon-exceed:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@v3d/v3d_perfmon@create-perfmon-exceed.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-purgeable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@vc4/vc4_purgeable_bo@mark-purgeable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_barrier_race@remote-request@rcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-tglu-5/igt@gem_barrier_race@remote-request@rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8178">i915#8178</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-8/igt@gem_barrier_race@remote-request@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></p>
</li>
<li>
<p>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-rkl-2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></p>
</li>
<li>
<p>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-tglu-8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@deep@vcs1:</p>
<ul>
<li>{shard-mtlp}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-3/igt@gem_exec_schedule@deep@vcs1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8606">i915#8606</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-mtlp-2/igt@gem_exec_schedule@deep@vcs1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>{shard-dg2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg2-10/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8682">i915#8682</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked-all:</p>
<ul>
<li>{shard-mtlp}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-3/igt@gem_exec_whisper@basic-contexts-forked-all.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8131">i915#8131</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-mtlp-1/igt@gem_exec_whisper@basic-contexts-forked-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-all:</p>
<ul>
<li>{shard-mtlp}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-1/igt@gem_exec_whisper@basic-fds-all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6363">i915#6363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-mtlp-8/igt@gem_exec_whisper@basic-fds-all.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4936">i915#4936</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@huge-split:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-snb2/igt@gem_userptr_blits@huge-split.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2724">i915#2724</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-snb1/igt@gem_userptr_blits@huge-split.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>{shard-dg2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg2-5/igt@i915_module_load@reload-with-fault-injection.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7061">i915#7061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-dg2-8/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-tglu-7/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3989">i915#3989</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-9/igt@i915_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-tglu-3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4281">i915#4281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-2/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:</p>
<ul>
<li>
<p>{shard-dg2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg2-1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1937">i915#1937</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-dg2-10/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">PASS</a></p>
</li>
<li>
<p>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1937">i915#1937</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-rkl-7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>{shard-dg2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg2-12/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-dg2-8/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>{shard-mtlp}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-4/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7059">i915#7059</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-mtlp-1/igt@i915_selftest@live@gt_mocs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>{shard-mtlp}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-4/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-mtlp-1/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>{shard-mtlp}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-4/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6763">i915#6763</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-mtlp-1/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>{shard-dg2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg2-5/igt@i915_suspend@forcewake.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-dg2-8/igt@i915_suspend@forcewake.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>{shard-mtlp}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#5138</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>{shard-mtlp}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-mtlp-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-mtlp-3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a4:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg1-16/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a4.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-dg1-18/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a4.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>{shard-dg2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg2-12/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>{shard-dg2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7484">i915#7484</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-dg2-5/igt@perf@non-zero-reason@0-rcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vecs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13322/shard-rkl-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119740v2/shard-rkl-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13322 -&gt; Patchwork_119740v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13322: 7067d1a82560a2e79adefac0d28e08cb163ae907 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7349: eba3d515fbb832edc7fabcbf90e2564aa7face7b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_119740v2: 7067d1a82560a2e79adefac0d28e08cb163ae907 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============7650181027219245074==--
