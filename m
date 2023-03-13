Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBDFD6B7782
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Mar 2023 13:31:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 383A510E121;
	Mon, 13 Mar 2023 12:31:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7124810E509;
 Mon, 13 Mar 2023 12:31:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 696D8A00E6;
 Mon, 13 Mar 2023 12:31:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9161171005910444800=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Mon, 13 Mar 2023 12:31:14 -0000
Message-ID: <167871067441.1030.15214887084358232632@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230310141138.6592-1-nirmoy.das@intel.com>
In-Reply-To: <20230310141138.6592-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/active=3A_Fix_missing_debug_object_activation?=
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

--===============9161171005910444800==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/active: Fix missing debug object activation
URL   : https://patchwork.freedesktop.org/series/114981/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12839_full -> Patchwork_114981v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (11 -> 10)
------------------------------

  Missing    (1): shard-tglu-10 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_114981v1_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1:
    - {shard-tglu}:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-tglu-5/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-8/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1.html

  * igt@kms_vblank@pipe-d-query-idle-hang:
    - {shard-tglu}:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-tglu-5/igt@kms_vblank@pipe-d-query-idle-hang.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-8/igt@kms_vblank@pipe-d-query-idle-hang.html

  
Known issues
------------

  Here are the changes found in Patchwork_114981v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-tglu-9:       NOTRUN -> [FAIL][5] ([i915#2842])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@gem_exec_fair@basic-none-solo@rcs0.html
    - shard-apl:          [PASS][6] -> [FAIL][7] ([i915#2842])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#2842])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-tglu-9:       NOTRUN -> [SKIP][10] ([i915#4613]) +4 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-tglu-9:       NOTRUN -> [SKIP][11] ([i915#4270])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-tglu-9:       NOTRUN -> [SKIP][12] ([i915#3297])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-tglu-9:       NOTRUN -> [SKIP][13] ([fdo#109289]) +5 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@gen7_exec_parse@chained-batch.html

  * igt@gen9_exec_parse@bb-large:
    - shard-tglu-9:       NOTRUN -> [SKIP][14] ([i915#2527] / [i915#2856]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@gen9_exec_parse@bb-large.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-tglu-9:       NOTRUN -> [SKIP][15] ([i915#658]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-tglu-9:       NOTRUN -> [WARN][16] ([i915#2681])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - shard-tglu-9:       NOTRUN -> [SKIP][17] ([i915#1397])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-tglu-9:       NOTRUN -> [SKIP][18] ([fdo#109506])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_query@hwconfig_table:
    - shard-tglu-9:       NOTRUN -> [SKIP][19] ([i915#6245])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@i915_query@hwconfig_table.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-tglu-9:       NOTRUN -> [SKIP][20] ([i915#3826])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-yf_tiled_ccs:
    - shard-tglu-9:       NOTRUN -> [SKIP][21] ([fdo#111615] / [i915#1845] / [i915#7651]) +6 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_ccs@pipe-a-missing-ccs-buffer-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs:
    - shard-tglu-9:       NOTRUN -> [SKIP][22] ([i915#1845] / [i915#7651]) +67 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-tglu-9:       NOTRUN -> [SKIP][23] ([i915#3742])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_chamelium_color@degamma:
    - shard-tglu-9:       NOTRUN -> [SKIP][24] ([fdo#111827]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_chamelium_color@degamma.html

  * igt@kms_chamelium_edid@hdmi-mode-timings:
    - shard-tglu-9:       NOTRUN -> [SKIP][25] ([i915#7828]) +4 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_chamelium_edid@hdmi-mode-timings.html

  * igt@kms_color@legacy-gamma-reset:
    - shard-tglu-9:       NOTRUN -> [SKIP][26] ([i915#3546]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_color@legacy-gamma-reset.html

  * igt@kms_cursor_crc@cursor-onscreen-256x256:
    - shard-tglu-9:       NOTRUN -> [SKIP][27] ([i915#1845]) +19 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_cursor_crc@cursor-onscreen-256x256.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][28] -> [FAIL][29] ([i915#2346]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-tglu-9:       NOTRUN -> [SKIP][30] ([fdo#109274] / [i915#3637] / [i915#3966])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-tglu-9:       NOTRUN -> [SKIP][31] ([fdo#109274] / [i915#3637]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][32] -> [FAIL][33] ([i915#79])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@modeset-vs-vblank-race-interruptible:
    - shard-tglu-9:       NOTRUN -> [SKIP][34] ([i915#3637]) +5 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_flip@modeset-vs-vblank-race-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-blt:
    - shard-tglu-9:       NOTRUN -> [SKIP][35] ([i915#1849]) +49 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-blt.html

  * igt@kms_plane_alpha_blend@constant-alpha-max:
    - shard-tglu-9:       NOTRUN -> [SKIP][36] ([i915#7128] / [i915#7294])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_plane_alpha_blend@constant-alpha-max.html

  * igt@kms_plane_scaling@plane-scaler-with-modifiers-unity-scaling:
    - shard-tglu-9:       NOTRUN -> [SKIP][37] ([i915#3555]) +9 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_plane_scaling@plane-scaler-with-modifiers-unity-scaling.html

  * igt@kms_plane_scaling@planes-upscale-20x20:
    - shard-tglu-9:       NOTRUN -> [SKIP][38] ([i915#6953] / [i915#8152])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_plane_scaling@planes-upscale-20x20.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25:
    - shard-tglu-9:       NOTRUN -> [SKIP][39] ([i915#3555] / [i915#6953])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_plane_scaling@planes-upscale-factor-0-25.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-tglu-9:       NOTRUN -> [SKIP][40] ([fdo#111068] / [i915#658]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr@primary_page_flip:
    - shard-tglu-9:       NOTRUN -> [SKIP][41] ([fdo#110189]) +4 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_psr@primary_page_flip.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglu-9:       NOTRUN -> [SKIP][42] ([i915#5461])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-tglu-9:       NOTRUN -> [SKIP][43] ([fdo#111615] / [i915#1845])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:
    - shard-tglu-9:       NOTRUN -> [SKIP][44] ([fdo#109274]) +3 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_universal_plane@disable-primary-vs-flip-pipe-d.html

  * igt@v3d/v3d_perfmon@get-values-invalid-perfmon:
    - shard-tglu-9:       NOTRUN -> [SKIP][45] ([fdo#109315] / [i915#2575]) +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@v3d/v3d_perfmon@get-values-invalid-perfmon.html

  * igt@vc4/vc4_perfmon@destroy-invalid-perfmon:
    - shard-tglu-9:       NOTRUN -> [SKIP][46] ([i915#2575]) +5 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@vc4/vc4_perfmon@destroy-invalid-perfmon.html

  
#### Possible fixes ####

  * igt@api_intel_bb@object-reloc-keep-cache:
    - {shard-rkl}:        [SKIP][47] ([i915#3281]) -> [PASS][48] +10 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-2/igt@api_intel_bb@object-reloc-keep-cache.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-5/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@drm_fdinfo@virtual-idle:
    - {shard-rkl}:        [FAIL][49] ([i915#7742]) -> [PASS][50] +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-2/igt@drm_fdinfo@virtual-idle.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html

  * igt@fbdev@nullptr:
    - {shard-tglu}:       [SKIP][51] ([i915#2582]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-tglu-6/igt@fbdev@nullptr.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-4/igt@fbdev@nullptr.html

  * igt@fbdev@unaligned-write:
    - {shard-rkl}:        [SKIP][53] ([i915#2582]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-5/igt@fbdev@unaligned-write.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-6/igt@fbdev@unaligned-write.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - {shard-rkl}:        [FAIL][55] ([i915#6268]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_eio@suspend:
    - {shard-rkl}:        [FAIL][57] ([i915#5115] / [i915#7052]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-4/igt@gem_eio@suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-1/igt@gem_eio@suspend.html

  * igt@gem_exec_balancer@fairslice:
    - {shard-rkl}:        [SKIP][59] ([i915#6259]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-5/igt@gem_exec_balancer@fairslice.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-2/igt@gem_exec_balancer@fairslice.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][61] ([i915#2846]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-glk1/igt@gem_exec_fair@basic-deadline.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-glk3/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [FAIL][63] ([i915#2842]) -> [PASS][64] +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-glk3/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-glk7/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - {shard-rkl}:        [FAIL][65] ([i915#2842]) -> [PASS][66] +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-2/igt@gem_exec_fair@basic-pace@rcs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_tiled_pread_pwrite:
    - {shard-rkl}:        [SKIP][67] ([i915#3282]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-3/igt@gem_tiled_pread_pwrite.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-5/igt@gem_tiled_pread_pwrite.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - {shard-rkl}:        [SKIP][69] ([i915#2527]) -> [PASS][70] +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-2/igt@gen9_exec_parse@batch-invalid-length.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-5/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@i915_hangman@engine-engine-error@bcs0:
    - {shard-rkl}:        [SKIP][71] ([i915#6258]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-6/igt@i915_hangman@engine-engine-error@bcs0.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - {shard-rkl}:        [SKIP][73] ([i915#1397]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-5/igt@i915_pm_rpm@modeset-lpsp.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html

  * {igt@i915_power@sanity}:
    - {shard-rkl}:        [SKIP][75] ([i915#7984]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-2/igt@i915_power@sanity.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-5/igt@i915_power@sanity.html

  * igt@i915_suspend@forcewake:
    - {shard-rkl}:        [FAIL][77] ([fdo#103375]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-4/igt@i915_suspend@forcewake.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-1/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
    - {shard-tglu}:       [SKIP][79] ([i915#1845]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-tglu-6/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-4/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [FAIL][81] ([i915#4767]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1:
    - shard-glk:          [FAIL][83] ([i915#2122]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-glk8/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-glk5/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render:
    - {shard-tglu}:       [SKIP][85] ([i915#1849]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-badstride:
    - {shard-rkl}:        [SKIP][87] ([i915#1849] / [i915#4098]) -> [PASS][88] +15 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-badstride.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-badstride.html

  * igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:
    - {shard-rkl}:        [SKIP][89] ([i915#1849]) -> [PASS][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-5/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-6/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html

  * igt@kms_psr@sprite_plane_onoff:
    - {shard-rkl}:        [SKIP][91] ([i915#1072]) -> [PASS][92] +2 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-3/igt@kms_psr@sprite_plane_onoff.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-6/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - {shard-rkl}:        [SKIP][93] ([i915#5461]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@exhaust-fences:
    - {shard-rkl}:        [SKIP][95] ([i915#1845] / [i915#4098]) -> [PASS][96] +28 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-5/igt@kms_rotation_crc@exhaust-fences.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-6/igt@kms_rotation_crc@exhaust-fences.html

  * igt@kms_universal_plane@universal-plane-pipe-c-sanity:
    - {shard-tglu}:       [SKIP][97] ([fdo#109274]) -> [PASS][98] +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-tglu-6/igt@kms_universal_plane@universal-plane-pipe-c-sanity.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-4/igt@kms_universal_plane@universal-plane-pipe-c-sanity.html

  * igt@kms_vblank@invalid:
    - {shard-tglu}:       [SKIP][99] ([i915#1845] / [i915#7651]) -> [PASS][100] +8 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-tglu-6/igt@kms_vblank@invalid.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-4/igt@kms_vblank@invalid.html

  * igt@prime_vgem@coherency-gtt:
    - {shard-rkl}:        [SKIP][101] ([fdo#109295] / [fdo#111656] / [i915#3708]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-3/igt@prime_vgem@coherency-gtt.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-5/igt@prime_vgem@coherency-gtt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2532]: https://gitlab.freedesktop.org/drm/intel/issues/2532
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3547]: https://gitlab.freedesktop.org/drm/intel/issues/3547
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
  [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
  [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6403]: https://gitlab.freedesktop.org/drm/intel/issues/6403
  [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
  [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7128]: https://gitlab.freedesktop.org/drm/intel/issues/7128
  [i915#7294]: https://gitlab.freedesktop.org/drm/intel/issues/7294
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7582]: https://gitlab.freedesktop.org/drm/intel/issues/7582
  [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#7949]: https://gitlab.freedesktop.org/drm/intel/issues/7949
  [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#7984]: https://gitlab.freedesktop.org/drm/intel/issues/7984
  [i915#8018]: https://gitlab.freedesktop.org/drm/intel/issues/8018
  [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152
  [i915#8154]: https://gitlab.freedesktop.org/drm/intel/issues/8154
  [i915#8155]: https://gitlab.freedesktop.org/drm/intel/issues/8155
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8282]: https://gitlab.freedesktop.org/drm/intel/issues/8282


Build changes
-------------

  * Linux: CI_DRM_12839 -> Patchwork_114981v1

  CI-20190529: 20190529
  CI_DRM_12839: 6f2c187f6ad9f3907ac7fc3e08b259f5f1d41270 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7190: f9d49501eaaadd39ae471094bc45a76a1ff93e42 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114981v1: 6f2c187f6ad9f3907ac7fc3e08b259f5f1d41270 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/index.html

--===============9161171005910444800==
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
<tr><td><b>Series:</b></td><td>drm/i915/active: Fix missing debug object activation</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114981/">https://patchwork.freedesktop.org/series/114981/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12839_full -&gt; Patchwork_114981v1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (11 -&gt; 10)</h2>
<p>Missing    (1): shard-tglu-10 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_114981v1_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-tglu-5/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-8/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-query-idle-hang:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-tglu-5/igt@kms_vblank@pipe-d-query-idle-hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-8/igt@kms_vblank@pipe-d-query-idle-hang.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114981v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>
<p>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@gem_lmem_swapping@smem-oom.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@gem_pxp@create-regular-context-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@chained-batch:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@gen7_exec_parse@chained-batch.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@gen9_exec_parse@bb-large.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-psr:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@i915_pm_dc@dc5-psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@i915_query@hwconfig_table.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6245">i915#6245</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3826">i915#3826</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-yf_tiled_ccs:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_ccs@pipe-a-missing-ccs-buffer-yf_tiled_ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7651">i915#7651</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7651">i915#7651</a>) +67 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@degamma:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_chamelium_color@degamma.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-mode-timings:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_chamelium_edid@hdmi-mode-timings.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@legacy-gamma-reset:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_color@legacy-gamma-reset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x256:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_cursor_crc@cursor-onscreen-256x256.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_flip@2x-absolute-wf_vblank.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3966">i915#3966</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@modeset-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_flip@modeset-vs-vblank-race-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) +49 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_plane_alpha_blend@constant-alpha-max.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7128">i915#7128</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7294">i915#7294</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-modifiers-unity-scaling:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_plane_scaling@plane-scaler-with-modifiers-unity-scaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_plane_scaling@planes-upscale-20x20.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_plane_scaling@planes-upscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5461">i915#5461</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@kms_universal_plane@disable-primary-vs-flip-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@get-values-invalid-perfmon:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@v3d/v3d_perfmon@get-values-invalid-perfmon.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@destroy-invalid-perfmon:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-9/igt@vc4/vc4_perfmon@destroy-invalid-perfmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +5 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-2/igt@api_intel_bb@object-reloc-keep-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-5/igt@api_intel_bb@object-reloc-keep-cache.html">PASS</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-idle:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-2/igt@drm_fdinfo@virtual-idle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-tglu-6/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-4/igt@fbdev@nullptr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-5/igt@fbdev@unaligned-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-6/igt@fbdev@unaligned-write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@suspend:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-4/igt@gem_eio@suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5115">i915#5115</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7052">i915#7052</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-1/igt@gem_eio@suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@fairslice:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-5/igt@gem_exec_balancer@fairslice.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6259">i915#6259</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-2/igt@gem_exec_balancer@fairslice.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-glk1/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-glk3/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-glk3/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-glk7/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-2/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_pwrite:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-3/igt@gem_tiled_pread_pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-5/igt@gem_tiled_pread_pwrite.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-2/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-5/igt@gen9_exec_parse@batch-invalid-length.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-engine-error@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6258">i915#6258</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-6/igt@i915_hangman@engine-engine-error@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-5/igt@i915_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@i915_power@sanity}:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-2/igt@i915_power@sanity.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7984">i915#7984</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-5/igt@i915_power@sanity.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-4/igt@i915_suspend@forcewake.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-1/igt@i915_suspend@forcewake.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-varying-size:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-tglu-6/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-4/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-glk8/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-glk5/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-badstride:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-badstride.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-badstride.html">PASS</a> +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-5/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-6/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-3/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-6/igt@kms_psr@sprite_plane_onoff.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5461">i915#5461</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@exhaust-fences:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-5/igt@kms_rotation_crc@exhaust-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-6/igt@kms_rotation_crc@exhaust-fences.html">PASS</a> +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pipe-c-sanity:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-tglu-6/igt@kms_universal_plane@universal-plane-pipe-c-sanity.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-4/igt@kms_universal_plane@universal-plane-pipe-c-sanity.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@invalid:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-tglu-6/igt@kms_vblank@invalid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7651">i915#7651</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-tglu-4/igt@kms_vblank@invalid.html">PASS</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12839/shard-rkl-3/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111656">fdo#111656</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114981v1/shard-rkl-5/igt@prime_vgem@coherency-gtt.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12839 -&gt; Patchwork_114981v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12839: 6f2c187f6ad9f3907ac7fc3e08b259f5f1d41270 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7190: f9d49501eaaadd39ae471094bc45a76a1ff93e42 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114981v1: 6f2c187f6ad9f3907ac7fc3e08b259f5f1d41270 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============9161171005910444800==--
