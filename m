Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 508CC737F49
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 12:07:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D56B010E439;
	Wed, 21 Jun 2023 10:07:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C07D310E435;
 Wed, 21 Jun 2023 10:07:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BC34DA882E;
 Wed, 21 Jun 2023 10:07:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7543829656052304532=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Yongxin Liu" <yongxin.liu@windriver.com>
Date: Wed, 21 Jun 2023 10:07:54 -0000
Message-ID: <168734207476.7798.1032758534504412296@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230531001205.3410334-1-yongxin.liu@windriver.com>
In-Reply-To: <20230531001205.3410334-1-yongxin.liu@windriver.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_fix_a_memory_leak_in_struct_intel=5Fvbt=5Fpanel=5Fd?=
 =?utf-8?q?ata_=28rev2=29?=
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

--===============7543829656052304532==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: fix a memory leak in struct intel_vbt_panel_data (rev2)
URL   : https://patchwork.freedesktop.org/series/119046/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13297_full -> Patchwork_119046v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_119046v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_119046v2_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (7 -> 7)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_119046v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@2x-busy-flip@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-glk4/igt@kms_flip@2x-busy-flip@ab-hdmi-a1-hdmi-a2.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-glk4/igt@kms_flip@2x-busy-flip@ab-hdmi-a1-hdmi-a2.html

  
Known issues
------------

  Here are the changes found in Patchwork_119046v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@display-2x:
    - shard-rkl:          NOTRUN -> [SKIP][3] ([i915#1839])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@feature_discovery@display-2x.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-rkl:          NOTRUN -> [SKIP][4] ([i915#6335])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-rkl:          NOTRUN -> [SKIP][5] ([fdo#109314])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][6] -> [FAIL][7] ([i915#2846])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-glk4/igt@gem_exec_fair@basic-deadline.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-glk2/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#2842])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-glk7/igt@gem_exec_fair@basic-pace@vecs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-glk5/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][10] ([i915#2842])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html
    - shard-rkl:          NOTRUN -> [FAIL][11] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-rkl:          NOTRUN -> [SKIP][12] ([i915#3281])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_pread@bench:
    - shard-rkl:          NOTRUN -> [SKIP][13] ([i915#3282])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@gem_pread@bench.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][14] ([i915#3297])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [PASS][15] -> [ABORT][16] ([i915#5566])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-apl3/igt@gen9_exec_parse@allowed-single.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-apl7/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@basic-rejected:
    - shard-rkl:          NOTRUN -> [SKIP][17] ([i915#2527])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@gen9_exec_parse@basic-rejected.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][18] ([i915#3361])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - shard-rkl:          [PASS][19] -> [SKIP][20] ([i915#1397]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-2/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#5286]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][22] ([fdo#111614] / [i915#3638])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][23] ([fdo#110723]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#3886]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-glk7/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
    - shard-rkl:          NOTRUN -> [SKIP][25] ([i915#3886] / [i915#5354] / [i915#6095])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3886])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-apl2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][27] ([i915#3734] / [i915#5354] / [i915#6095])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_mtl_mc_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][28] ([i915#5354] / [i915#6095])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_mtl_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_mtl_mc_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][29] ([i915#5354]) +5 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_mtl_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][30] ([fdo#109271]) +34 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-glk7/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs.html

  * igt@kms_chamelium_edid@dp-edid-stress-resolution-4k:
    - shard-rkl:          NOTRUN -> [SKIP][31] ([i915#7828]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html

  * igt@kms_color@deep-color:
    - shard-rkl:          NOTRUN -> [SKIP][32] ([i915#3555] / [i915#4579]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-6/igt@kms_color@deep-color.html

  * igt@kms_cursor_crc@cursor-offscreen-32x32:
    - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#4579])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-apl2/igt@kms_cursor_crc@cursor-offscreen-32x32.html

  * igt@kms_cursor_legacy@single-bo@pipe-b:
    - shard-rkl:          [PASS][34] -> [INCOMPLETE][35] ([i915#8011])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-rkl-1/igt@kms_cursor_legacy@single-bo@pipe-b.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-7/igt@kms_cursor_legacy@single-bo@pipe-b.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#8588])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_flip@2x-plain-flip:
    - shard-rkl:          NOTRUN -> [SKIP][37] ([fdo#111825]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@2x-plain-flip-fb-recreate:
    - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271]) +46 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-apl2/igt@kms_flip@2x-plain-flip-fb-recreate.html

  * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:
    - shard-glk:          [PASS][39] -> [FAIL][40] ([i915#79])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][41] ([i915#2672] / [i915#4579])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][42] ([fdo#111825] / [i915#1825]) +6 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-slowdraw:
    - shard-rkl:          NOTRUN -> [SKIP][43] ([i915#3023]) +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-slowdraw.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][44] ([i915#4573]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-glk7/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1.html

  * igt@kms_plane_lowres@tiling-4:
    - shard-rkl:          NOTRUN -> [SKIP][45] ([i915#4579])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_plane_lowres@tiling-4.html

  * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][46] ([i915#5176]) +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][47] ([i915#4579] / [i915#5176]) +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-1:
    - shard-snb:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#4579]) +6 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-snb1/igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][49] ([i915#5235])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][50] ([i915#4579] / [i915#5235])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-a-hdmi-a-1:
    - shard-snb:          NOTRUN -> [SKIP][51] ([fdo#109271]) +8 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-snb1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-a-hdmi-a-1.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-apl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#658])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-apl2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#1072]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_vblank@pipe-c-wait-busy:
    - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#4070] / [i915#6768]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_vblank@pipe-c-wait-busy.html

  * igt@kms_vblank@pipe-d-accuracy-idle:
    - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#4070] / [i915#533] / [i915#6768])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_vblank@pipe-d-accuracy-idle.html

  * igt@kms_vrr@negative-basic:
    - shard-glk:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#4579]) +3 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-glk7/igt@kms_vrr@negative-basic.html

  * igt@perf_pmu@event-wait@rcs0:
    - shard-rkl:          NOTRUN -> [SKIP][57] ([fdo#112283] / [i915#4579])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@perf_pmu@event-wait@rcs0.html

  * igt@v3d/v3d_wait_bo@used-bo-1ns:
    - shard-rkl:          NOTRUN -> [SKIP][58] ([fdo#109315]) +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@v3d/v3d_wait_bo@used-bo-1ns.html

  * igt@vc4/vc4_purgeable_bo@mark-willneed:
    - shard-rkl:          NOTRUN -> [SKIP][59] ([i915#7711]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@vc4/vc4_purgeable_bo@mark-willneed.html

  
#### Possible fixes ####

  * igt@gem_eio@reset-stress:
    - {shard-dg1}:        [FAIL][60] ([i915#5784]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-dg1-18/igt@gem_eio@reset-stress.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-dg1-19/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          [FAIL][62] ([i915#2842]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-rkl-2/igt@gem_exec_fair@basic-none@bcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-4/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_exec_params@cliprects-invalid:
    - shard-glk:          [TIMEOUT][64] ([i915#8496]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-glk6/igt@gem_exec_params@cliprects-invalid.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-glk7/igt@gem_exec_params@cliprects-invalid.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-tglu:         [SKIP][66] ([i915#4281]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-tglu-3/igt@i915_pm_dc@dc9-dpms.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-tglu-9/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rc6_residency@rc6-idle@bcs0:
    - {shard-dg1}:        [FAIL][68] ([i915#3591]) -> [PASS][69] +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-rkl:          [SKIP][70] ([i915#1397]) -> [PASS][71] +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-7/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-apl:          [DMESG-FAIL][72] ([i915#5334]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-apl6/igt@i915_selftest@live@gt_heartbeat.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-apl4/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-rkl:          [FAIL][74] ([i915#3743]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-rkl-7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
    - {shard-dg1}:        [FAIL][76] ([i915#3743]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-dg1-19/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-dg1-12/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [FAIL][78] ([i915#72]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@forked-bo@pipe-b:
    - shard-rkl:          [INCOMPLETE][80] ([i915#8011]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-rkl-7/igt@kms_cursor_legacy@forked-bo@pipe-b.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-2/igt@kms_cursor_legacy@forked-bo@pipe-b.html
    - {shard-dg1}:        [INCOMPLETE][82] ([i915#8011] / [i915#8347]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-dg1-19/igt@kms_cursor_legacy@forked-bo@pipe-b.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-dg1-12/igt@kms_cursor_legacy@forked-bo@pipe-b.html

  * igt@kms_flip@2x-plain-flip-ts-check@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][84] ([i915#2122]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-glk1/igt@kms_flip@2x-plain-flip-ts-check@bc-hdmi-a1-hdmi-a2.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-glk3/igt@kms_flip@2x-plain-flip-ts-check@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-apl:          [ABORT][86] ([i915#180]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-apl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-apl2/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_prop_blob@invalid-get-prop-any:
    - shard-glk:          [TIMEOUT][88] ([i915#8706]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-glk6/igt@kms_prop_blob@invalid-get-prop-any.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-glk7/igt@kms_prop_blob@invalid-get-prop-any.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-rkl:          [ABORT][90] ([i915#7461]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-rkl-4/igt@kms_rotation_crc@primary-rotation-270.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@perf@enable-disable@0-rcs0:
    - shard-glk:          [TIMEOUT][92] ([i915#8170]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-glk6/igt@perf@enable-disable@0-rcs0.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-glk7/igt@perf@enable-disable@0-rcs0.html

  * igt@perf_pmu@rc6-suspend:
    - shard-rkl:          [FAIL][94] ([fdo#103375]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-rkl-6/igt@perf_pmu@rc6-suspend.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-6/igt@perf_pmu@rc6-suspend.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
    - shard-tglu:         [FAIL][96] ([i915#2681] / [i915#3591]) -> [WARN][97] ([i915#2681])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-tglu-10/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][98] ([i915#3955]) -> [SKIP][99] ([fdo#110189] / [i915#3955])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-rkl:          [SKIP][100] ([fdo#109285] / [i915#4098]) -> [SKIP][101] ([fdo#109285])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-rkl-1/igt@kms_force_connector_basic@force-load-detect.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-7/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-glk:          [TIMEOUT][102] ([i915#8660]) -> [SKIP][103] ([fdo#109271]) +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-glk6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-glk7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
  [i915#8151]: https://gitlab.freedesktop.org/drm/intel/issues/8151
  [i915#8170]: https://gitlab.freedesktop.org/drm/intel/issues/8170
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8304]: https://gitlab.freedesktop.org/drm/intel/issues/8304
  [i915#8347]: https://gitlab.freedesktop.org/drm/intel/issues/8347
  [i915#8496]: https://gitlab.freedesktop.org/drm/intel/issues/8496
  [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
  [i915#8588]: https://gitlab.freedesktop.org/drm/intel/issues/8588
  [i915#8660]: https://gitlab.freedesktop.org/drm/intel/issues/8660
  [i915#8661]: https://gitlab.freedesktop.org/drm/intel/issues/8661
  [i915#8706]: https://gitlab.freedesktop.org/drm/intel/issues/8706


Build changes
-------------

  * Linux: CI_DRM_13297 -> Patchwork_119046v2

  CI-20190529: 20190529
  CI_DRM_13297: 0e4da468fc093f8c8a1a82e5adabf24c67d46c6f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7340: e975155e9167f0fed8f3da9c5b61de71d082b5c7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_119046v2: 0e4da468fc093f8c8a1a82e5adabf24c67d46c6f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/index.html

--===============7543829656052304532==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: fix a memory leak in struct intel_vbt_panel_data (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/119046/">https://patchwork.freedesktop.org/series/119046/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13297_full -&gt; Patchwork_119046v2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_119046v2_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_119046v2_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (7 -&gt; 7)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_119046v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_flip@2x-busy-flip@ab-hdmi-a1-hdmi-a2:<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-glk4/igt@kms_flip@2x-busy-flip@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-glk4/igt@kms_flip@2x-busy-flip@ab-hdmi-a1-hdmi-a2.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_119046v2_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@display-2x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@feature_discovery@display-2x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@gem_create@create-ext-cpu-access-sanity-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@gem_ctx_param@set-priority-not-supported.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109314">fdo#109314</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-glk4/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-glk2/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-glk7/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-glk5/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-concurrent0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@gem_exec_reloc@basic-concurrent0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@bench:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@gem_pread@bench.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-apl3/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-apl7/igt@gen9_exec_parse@allowed-single.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@gen9_exec_parse@basic-rejected.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3361">i915#3361</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-2/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614">fdo#111614</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110723">fdo#110723</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-glk7/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-apl2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3734">i915#3734</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_mtl_mc_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_mtl_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_mtl_mc_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_mtl_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-glk7/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-stress-resolution-4k:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-6/igt@kms_color@deep-color.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x32:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-apl2/igt@kms_cursor_crc@cursor-offscreen-32x32.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@single-bo@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-rkl-1/igt@kms_cursor_legacy@single-bo@pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-7/igt@kms_cursor_legacy@single-bo@pipe-b.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8011">i915#8011</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8588">i915#8588</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_flip@2x-plain-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-apl2/igt@kms_flip@2x-plain-flip-fb-recreate.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +46 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-slowdraw:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-slowdraw.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-glk7/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4573">i915#4573</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-4:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_plane_lowres@tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-snb1/igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-snb1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-apl2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-wait-busy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_vblank@pipe-c-wait-busy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6768">i915#6768</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-accuracy-idle:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_vblank@pipe-d-accuracy-idle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6768">i915#6768</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-glk7/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@event-wait@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@perf_pmu@event-wait@rcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=112283">fdo#112283</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_wait_bo@used-bo-1ns:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@v3d/v3d_wait_bo@used-bo-1ns.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-willneed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@vc4/vc4_purgeable_bo@mark-willneed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-dg1-18/igt@gem_eio@reset-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-dg1-19/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-rkl-2/igt@gem_exec_fair@basic-none@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-4/igt@gem_exec_fair@basic-none@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@cliprects-invalid:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-glk6/igt@gem_exec_params@cliprects-invalid.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8496">i915#8496</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-glk7/igt@gem_exec_params@cliprects-invalid.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-tglu-3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4281">i915#4281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-tglu-9/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@bcs0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-7/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-apl6/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-apl4/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>
<p>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-rkl-7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">PASS</a></p>
</li>
<li>
<p>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-dg1-19/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-dg1-12/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/72">i915#72</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@forked-bo@pipe-b:</p>
<ul>
<li>
<p>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-rkl-7/igt@kms_cursor_legacy@forked-bo@pipe-b.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8011">i915#8011</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-2/igt@kms_cursor_legacy@forked-bo@pipe-b.html">PASS</a></p>
</li>
<li>
<p>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-dg1-19/igt@kms_cursor_legacy@forked-bo@pipe-b.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8011">i915#8011</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8347">i915#8347</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-dg1-12/igt@kms_cursor_legacy@forked-bo@pipe-b.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-glk1/igt@kms_flip@2x-plain-flip-ts-check@bc-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-glk3/igt@kms_flip@2x-plain-flip-ts-check@bc-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-apl4/igt@kms_flip@flip-vs-suspend@c-dp1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-apl2/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_prop_blob@invalid-get-prop-any:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-glk6/igt@kms_prop_blob@invalid-get-prop-any.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8706">i915#8706</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-glk7/igt@kms_prop_blob@invalid-get-prop-any.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-rkl-4/igt@kms_rotation_crc@primary-rotation-270.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-1/igt@kms_rotation_crc@primary-rotation-270.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@enable-disable@0-rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-glk6/igt@perf@enable-disable@0-rcs0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8170">i915#8170</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-glk7/igt@perf@enable-disable@0-rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-rkl-6/igt@perf_pmu@rc6-suspend.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-6/igt@perf_pmu@rc6-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vecs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-tglu-10/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-rkl-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-rkl-7/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13297/shard-glk6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8660">i915#8660</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119046v2/shard-glk7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13297 -&gt; Patchwork_119046v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13297: 0e4da468fc093f8c8a1a82e5adabf24c67d46c6f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7340: e975155e9167f0fed8f3da9c5b61de71d082b5c7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_119046v2: 0e4da468fc093f8c8a1a82e5adabf24c67d46c6f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============7543829656052304532==--
