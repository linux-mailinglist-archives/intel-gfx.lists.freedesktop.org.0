Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E1C6A2553
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Feb 2023 01:07:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D25BA10E56E;
	Sat, 25 Feb 2023 00:07:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5FC7C10E56E;
 Sat, 25 Feb 2023 00:07:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 586EAA03D2;
 Sat, 25 Feb 2023 00:07:02 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8578831964418282538=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jonathan Cavitt" <jonathan.cavitt@intel.com>
Date: Sat, 25 Feb 2023 00:07:02 -0000
Message-ID: <167728362232.24568.6354258159722452106@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230224174016.2081135-1-jonathan.cavitt@intel.com>
In-Reply-To: <20230224174016.2081135-1-jonathan.cavitt@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Use_correct_huge_page_manager_for_MTL_=28rev2=29?=
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

--===============8578831964418282538==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Use correct huge page manager for MTL (rev2)
URL   : https://patchwork.freedesktop.org/series/114259/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12776_full -> Patchwork_114259v2_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_114259v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - shard-tglu-9:       NOTRUN -> [SKIP][1] ([i915#7456])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@debugfs_test@basic-hwmon.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-tglu-9:       NOTRUN -> [SKIP][2] ([i915#5325])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-tglu-9:       NOTRUN -> [SKIP][3] ([i915#3555] / [i915#5325])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ctx_persistence@engines-mixed-process:
    - shard-snb:          NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#1099]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-snb5/igt@gem_ctx_persistence@engines-mixed-process.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-tglu-9:       NOTRUN -> [FAIL][5] ([i915#2842])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-tglu-9:       NOTRUN -> [SKIP][6] ([fdo#109283])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_lmem_swapping@verify:
    - shard-tglu-9:       NOTRUN -> [SKIP][7] ([i915#4613]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@gem_lmem_swapping@verify.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-tglu-9:       NOTRUN -> [SKIP][8] ([i915#4270]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_softpin@evict-snoop:
    - shard-tglu-9:       NOTRUN -> [SKIP][9] ([fdo#109312])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@gem_softpin@evict-snoop.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-tglu-9:       NOTRUN -> [FAIL][10] ([i915#3318])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@gem_userptr_blits@vma-merge.html

  * igt@gen7_exec_parse@bitmasks:
    - shard-tglu-9:       NOTRUN -> [SKIP][11] ([fdo#109289])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@gen7_exec_parse@bitmasks.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-tglu-9:       NOTRUN -> [SKIP][12] ([i915#2527] / [i915#2856]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@gen9_exec_parse@bb-chained.html

  * igt@i915_pm_backlight@bad-brightness:
    - shard-tglu-9:       NOTRUN -> [SKIP][13] ([i915#7561])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@i915_pm_backlight@bad-brightness.html

  * igt@i915_pm_rpm@drm-resources-equal:
    - shard-tglu-9:       NOTRUN -> [SKIP][14] ([i915#3547])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@i915_pm_rpm@drm-resources-equal.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-tglu-9:       NOTRUN -> [SKIP][15] ([fdo#109506])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@kms_big_joiner@2x-modeset:
    - shard-tglu-9:       NOTRUN -> [SKIP][16] ([i915#2705])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_big_joiner@2x-modeset.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-yf_tiled_ccs:
    - shard-tglu-9:       NOTRUN -> [SKIP][17] ([fdo#111615] / [i915#1845] / [i915#7651]) +5 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_ccs@pipe-c-ccs-on-another-bo-yf_tiled_ccs.html

  * igt@kms_chamelium_color@ctm-0-50:
    - shard-tglu-9:       NOTRUN -> [SKIP][18] ([fdo#111827]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_chamelium_color@ctm-0-50.html

  * igt@kms_chamelium_hpd@dp-hpd-storm:
    - shard-tglu-9:       NOTRUN -> [SKIP][19] ([i915#7828]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_chamelium_hpd@dp-hpd-storm.html

  * igt@kms_color@ctm-negative:
    - shard-tglu-9:       NOTRUN -> [SKIP][20] ([i915#3546])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_color@ctm-negative.html

  * igt@kms_cursor_crc@cursor-random-128x42:
    - shard-tglu-9:       NOTRUN -> [SKIP][21] ([i915#1845]) +11 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_cursor_crc@cursor-random-128x42.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          [PASS][22] -> [FAIL][23] ([i915#2346])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-tglu-9:       NOTRUN -> [SKIP][24] ([i915#1845] / [i915#7651]) +51 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-tglu-9:       NOTRUN -> [SKIP][25] ([fdo#109274] / [i915#3637]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip@bo-too-big-interruptible:
    - shard-tglu-9:       NOTRUN -> [SKIP][26] ([i915#3637]) +4 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_flip@bo-too-big-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt:
    - shard-tglu-9:       NOTRUN -> [SKIP][27] ([i915#1849]) +32 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen:
    - shard-tglu-10:      NOTRUN -> [SKIP][28] ([fdo#110189])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_plane_alpha_blend@alpha-basic:
    - shard-tglu-9:       NOTRUN -> [SKIP][29] ([i915#7128] / [i915#7294])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_plane_alpha_blend@alpha-basic.html

  * igt@kms_plane_alpha_blend@coverage-7efc:
    - shard-tglu-9:       NOTRUN -> [SKIP][30] ([i915#7128])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_plane_alpha_blend@coverage-7efc.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-vga-1:
    - shard-snb:          NOTRUN -> [SKIP][31] ([fdo#109271]) +89 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-snb4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-vga-1.html

  * igt@kms_plane_scaling@plane-upscale-with-rotation-20x20:
    - shard-tglu-9:       NOTRUN -> [SKIP][32] ([i915#3555]) +4 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_plane_scaling@plane-upscale-with-rotation-20x20.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:
    - shard-tglu-9:       NOTRUN -> [SKIP][33] ([i915#3555] / [i915#6953])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-tglu-9:       NOTRUN -> [SKIP][34] ([i915#658])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-tglu-9:       NOTRUN -> [SKIP][35] ([fdo#111068] / [i915#658])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr@primary_page_flip:
    - shard-tglu-9:       NOTRUN -> [SKIP][36] ([fdo#110189]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_psr@primary_page_flip.html

  * igt@v3d/v3d_perfmon@get-values-valid-perfmon:
    - shard-tglu-9:       NOTRUN -> [SKIP][37] ([fdo#109315] / [i915#2575]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@v3d/v3d_perfmon@get-values-valid-perfmon.html

  * igt@vc4/vc4_mmap@mmap-bad-handle:
    - shard-tglu-9:       NOTRUN -> [SKIP][38] ([i915#2575]) +3 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@vc4/vc4_mmap@mmap-bad-handle.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@hang:
    - {shard-rkl}:        [SKIP][39] ([i915#6252]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-rkl-5/igt@gem_ctx_persistence@hang.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-rkl-3/igt@gem_ctx_persistence@hang.html

  * igt@gem_eio@in-flight-suspend:
    - {shard-rkl}:        [FAIL][41] ([fdo#103375]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-rkl-4/igt@gem_eio@in-flight-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-rkl-5/igt@gem_eio@in-flight-suspend.html

  * igt@gem_eio@suspend:
    - {shard-rkl}:        [FAIL][43] ([i915#5115] / [i915#7052]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-rkl-3/igt@gem_eio@suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-rkl-2/igt@gem_eio@suspend.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][45] ([i915#2842]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - {shard-rkl}:        [FAIL][47] ([i915#2842]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-rkl-5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-rkl-5/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - {shard-rkl}:        [SKIP][49] ([i915#3281]) -> [PASS][50] +9 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-rkl-4/igt@gem_exec_reloc@basic-write-read-noreloc.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-snb:          [ABORT][51] ([i915#5161]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-snb2/igt@gem_mmap_gtt@fault-concurrent-x.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-snb5/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - {shard-rkl}:        [SKIP][53] ([i915#3282]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-rkl-1/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - {shard-rkl}:        [SKIP][55] ([i915#2527]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-rkl-4/igt@gen9_exec_parse@basic-rejected-ctx-param.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-rkl-5/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@i915_hangman@gt-engine-error@bcs0:
    - {shard-rkl}:        [SKIP][57] ([i915#6258]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-rkl-1/igt@i915_hangman@gt-engine-error@bcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - {shard-rkl}:        [WARN][59] ([i915#2681]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-apl:          [DMESG-FAIL][61] ([i915#5334]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-apl3/igt@i915_selftest@live@gt_heartbeat.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-apl7/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [FAIL][63] ([i915#2346]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [FAIL][65] ([i915#4767]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][67] ([i915#2122]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:
    - shard-glk:          [FAIL][69] ([i915#79]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen:
    - {shard-rkl}:        [SKIP][71] ([i915#1849] / [i915#4098]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3547]: https://gitlab.freedesktop.org/drm/intel/issues/3547
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
  [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
  [i915#5161]: https://gitlab.freedesktop.org/drm/intel/issues/5161
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5431]: https://gitlab.freedesktop.org/drm/intel/issues/5431
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
  [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
  [i915#6333]: https://gitlab.freedesktop.org/drm/intel/issues/6333
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7128]: https://gitlab.freedesktop.org/drm/intel/issues/7128
  [i915#7294]: https://gitlab.freedesktop.org/drm/intel/issues/7294
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#7949]: https://gitlab.freedesktop.org/drm/intel/issues/7949
  [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
  [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152


Build changes
-------------

  * Linux: CI_DRM_12776 -> Patchwork_114259v2

  CI-20190529: 20190529
  CI_DRM_12776: f86cdb8690c1cd968b6763b613a4a0fde424895e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7173: deab4e0bdf5a9366b67d0a44f478f3da3c9a943b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114259v2: f86cdb8690c1cd968b6763b613a4a0fde424895e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/index.html

--===============8578831964418282538==
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
<tr><td><b>Series:</b></td><td>drm/i915: Use correct huge page manager for MTL (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114259/">https://patchwork.freedesktop.org/series/114259/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12776_full -&gt; Patchwork_114259v2_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114259v2_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7456">i915#7456</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5325">i915#5325</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5325">i915#5325</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-mixed-process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-snb5/igt@gem_ctx_persistence@engines-mixed-process.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1099">i915#1099</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@gem_exec_params@rsvd2-dirt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109283">fdo#109283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@gem_lmem_swapping@verify.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@gem_pxp@create-regular-context-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@gem_softpin@evict-snoop.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109312">fdo#109312</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@gem_userptr_blits@vma-merge.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3318">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@bitmasks:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@gen7_exec_parse@bitmasks.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@gen9_exec_parse@bb-chained.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@i915_pm_backlight@bad-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7561">i915#7561</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@drm-resources-equal:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@i915_pm_rpm@drm-resources-equal.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3547">i915#3547</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@i915_pm_rpm@modeset-pc8-residency-stress.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@2x-modeset:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_big_joiner@2x-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-yf_tiled_ccs:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_ccs@pipe-c-ccs-on-another-bo-yf_tiled_ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7651">i915#7651</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-0-50:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_chamelium_color@ctm-0-50.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_chamelium_hpd@dp-hpd-storm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-negative:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_color@ctm-negative.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-128x42:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_cursor_crc@cursor-random-128x42.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_dsc@dsc-with-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7651">i915#7651</a>) +51 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@bo-too-big-interruptible:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_flip@bo-too-big-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) +32 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_plane_alpha_blend@alpha-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7128">i915#7128</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7294">i915#7294</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@coverage-7efc:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_plane_alpha_blend@coverage-7efc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7128">i915#7128</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-snb4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-vga-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +89 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-with-rotation-20x20:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_plane_scaling@plane-upscale-with-rotation-20x20.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@get-values-valid-perfmon:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@v3d/v3d_perfmon@get-values-valid-perfmon.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_mmap@mmap-bad-handle:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-tglu-9/igt@vc4/vc4_mmap@mmap-bad-handle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-rkl-5/igt@gem_ctx_persistence@hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6252">i915#6252</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-rkl-3/igt@gem_ctx_persistence@hang.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-rkl-4/igt@gem_eio@in-flight-suspend.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-rkl-5/igt@gem_eio@in-flight-suspend.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@suspend:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-rkl-3/igt@gem_eio@suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5115">i915#5115</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7052">i915#7052</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-rkl-2/igt@gem_eio@suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-rkl-5/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-rkl-5/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-rkl-4/igt@gem_exec_reloc@basic-write-read-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.html">PASS</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-snb2/igt@gem_mmap_gtt@fault-concurrent-x.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5161">i915#5161</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-snb5/igt@gem_mmap_gtt@fault-concurrent-x.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-display:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-rkl-1/igt@gem_partial_pwrite_pread@writes-after-reads-display.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-display.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-rkl-4/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-rkl-5/igt@gen9_exec_parse@basic-rejected-ctx-param.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@gt-engine-error@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6258">i915#6258</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-rkl-1/igt@i915_hangman@gt-engine-error@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-apl3/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-apl7/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12776/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12776 -&gt; Patchwork_114259v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12776: f86cdb8690c1cd968b6763b613a4a0fde424895e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7173: deab4e0bdf5a9366b67d0a44f478f3da3c9a943b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114259v2: f86cdb8690c1cd968b6763b613a4a0fde424895e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============8578831964418282538==--
