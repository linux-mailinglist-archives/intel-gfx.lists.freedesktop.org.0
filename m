Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E475363ACD3
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Nov 2022 16:44:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C42910E088;
	Mon, 28 Nov 2022 15:44:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 09D6B10E050;
 Mon, 28 Nov 2022 15:44:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 021E2A0078;
 Mon, 28 Nov 2022 15:44:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8321816606171625594=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Aravind Iddamsetty" <aravind.iddamsetty@intel.com>
Date: Mon, 28 Nov 2022 15:44:11 -0000
Message-ID: <166965025195.8066.13287201946055516942@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <3a47d428e1929942374b9eaead5372bfaaefdeed.1669629369.git.aravind.iddamsetty@intel.com>
In-Reply-To: <3a47d428e1929942374b9eaead5372bfaaefdeed.1669629369.git.aravind.iddamsetty@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/mtl=3A_Define_MOCS_and_PAT?=
 =?utf-8?q?_tables_for_MTL?=
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

--===============8321816606171625594==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] drm/i915/mtl: Define MOCS and PAT tables for MTL
URL   : https://patchwork.freedesktop.org/series/111390/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12438_full -> Patchwork_111390v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (8 -> 8)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_111390v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([i915#4525]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb1/igt@gem_exec_balancer@parallel.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb8/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][3] -> [FAIL][4] ([i915#2842])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-skl:          NOTRUN -> [SKIP][5] ([fdo#109271]) +106 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl10/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-skl:          NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#4613]) +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl7/igt@gem_lmem_swapping@random-engines.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#5566] / [i915#716])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-apl1/igt@gen9_exec_parse@allowed-single.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-apl7/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][9] ([i915#1886])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl6/igt@i915_selftest@live@gt_pm.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1:
    - shard-skl:          NOTRUN -> [FAIL][10] ([i915#2521])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-iclb:         [PASS][11] -> [DMESG-FAIL][12] ([i915#5138])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#3886]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl6/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_color_chamelium@ctm-limited-range:
    - shard-skl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl10/igt@kms_color_chamelium@ctm-limited-range.html

  * igt@kms_cursor_legacy@flip-vs-cursor@varying-size:
    - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#2346]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#79])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#4839])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-skl10/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl3/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#2122]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][23] ([i915#2587] / [i915#2672])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][24] ([i915#2672]) +6 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][25] ([i915#2672] / [i915#3555])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:
    - shard-iclb:         [PASS][26] -> [FAIL][27] ([i915#2546])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb5/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb7/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html

  * igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers:
    - shard-skl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#5776]) +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl10/igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([i915#5235]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb8/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-skl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#658]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl10/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][32] -> [SKIP][33] ([fdo#109441]) +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb3/igt@kms_psr@psr2_sprite_blt.html

  * igt@syncobj_timeline@wait-all-delayed-signal:
    - shard-skl:          [PASS][34] -> [DMESG-WARN][35] ([i915#1982])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-skl1/igt@syncobj_timeline@wait-all-delayed-signal.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl10/igt@syncobj_timeline@wait-all-delayed-signal.html

  * igt@sysfs_clients@pidname:
    - shard-skl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#2994]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl6/igt@sysfs_clients@pidname.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [FAIL][37] ([i915#2842]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-iclb:         [FAIL][39] ([i915#2842]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb5/igt@gem_exec_fair@basic-pace@vecs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb7/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_softpin@evict-single-offset:
    - shard-iclb:         [FAIL][41] ([i915#4171]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb3/igt@gem_softpin@evict-single-offset.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb2/igt@gem_softpin@evict-single-offset.html

  * igt@kms_cursor_legacy@cursor-vs-flip@atomic:
    - shard-iclb:         [FAIL][43] ([i915#5072]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@atomic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb6/igt@kms_cursor_legacy@cursor-vs-flip@atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic:
    - shard-skl:          [FAIL][45] ([i915#2346]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor@atomic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor@atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor@varying-size:
    - shard-skl:          [FAIL][47] -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [FAIL][49] ([i915#79]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [FAIL][51] ([i915#2122]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode:
    - shard-iclb:         [SKIP][53] ([i915#3555]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][55] ([fdo#109441]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_psr@sprite_plane_move:
    - shard-skl:          [DMESG-WARN][57] ([i915#1982]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-skl1/igt@kms_psr@sprite_plane_move.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl6/igt@kms_psr@sprite_plane_move.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-iclb:         [SKIP][59] ([i915#5519]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@perf@blocking:
    - shard-skl:          [FAIL][61] ([i915#1542]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-skl4/igt@perf@blocking.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl7/igt@perf@blocking.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [SKIP][63] ([i915#4525]) -> [FAIL][64] ([i915#6117])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb8/igt@gem_exec_balancer@parallel-ordering.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][65] ([i915#588]) -> [SKIP][66] ([i915#658])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-edp-1:
    - shard-skl:          [FAIL][67] ([i915#4573]) -> [DMESG-FAIL][68] ([IGT#6])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-skl9/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-edp-1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl7/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-edp-1.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
    - shard-iclb:         [SKIP][69] ([i915#2920]) -> [SKIP][70] ([i915#658])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb1/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-iclb:         [SKIP][71] ([i915#2920]) -> [SKIP][72] ([fdo#111068] / [i915#658])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb1/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][73] ([fdo#111068] / [i915#658]) -> [SKIP][74] ([i915#2920])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][75], [FAIL][76]) ([i915#3002] / [i915#4312]) -> ([FAIL][77], [FAIL][78], [FAIL][79]) ([fdo#109271] / [i915#3002] / [i915#4312])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-apl2/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-apl8/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-apl3/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-apl7/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-apl8/igt@runner@aborted.html
    - shard-skl:          ([FAIL][80], [FAIL][81], [FAIL][82]) ([i915#3002] / [i915#4312] / [i915#6949]) -> ([FAIL][83], [FAIL][84]) ([i915#3002] / [i915#4312])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-skl6/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-skl10/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-skl1/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl1/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl6/igt@runner@aborted.html

  
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4839]: https://gitlab.freedesktop.org/drm/intel/issues/4839
  [i915#5072]: https://gitlab.freedesktop.org/drm/intel/issues/5072
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5776]: https://gitlab.freedesktop.org/drm/intel/issues/5776
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6949]: https://gitlab.freedesktop.org/drm/intel/issues/6949
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12438 -> Patchwork_111390v1

  CI-20190529: 20190529
  CI_DRM_12438: 26363b95074fe20d6a4e723ae24cf566f6878751 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7072: 69ba7163475925cdc69aebbdfa0e87453ae165c7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111390v1: 26363b95074fe20d6a4e723ae24cf566f6878751 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/index.html

--===============8321816606171625594==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] drm/i915/mtl: Define MOCS and PAT tables for MTL</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/111390/">https://patchwork.freedesktop.org/series/111390/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12438_full -&gt; Patchwork_111390v1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (8 -&gt; 8)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111390v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb1/igt@gem_exec_balancer@parallel.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb8/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl10/igt@gem_exec_fair@basic-pace@vecs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +106 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl7/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-apl1/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-apl7/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl6/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl6/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@ctm-limited-range:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl10/igt@kms_color_chamelium@ctm-limited-range.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@varying-size:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-skl10/igt@kms_flip@flip-vs-suspend@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl3/igt@kms_flip@flip-vs-suspend@b-edp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb5/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb7/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2546">i915#2546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl10/igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5776">i915#5776</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb8/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl10/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb3/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-delayed-signal:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-skl1/igt@syncobj_timeline@wait-all-delayed-signal.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl10/igt@syncobj_timeline@wait-all-delayed-signal.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl6/igt@sysfs_clients@pidname.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2994">i915#2994</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb5/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb7/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-single-offset:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb3/igt@gem_softpin@evict-single-offset.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4171">i915#4171</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb2/igt@gem_softpin@evict-single-offset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip@atomic:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5072">i915#5072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb6/igt@kms_cursor_legacy@cursor-vs-flip@atomic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor@atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor@atomic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@varying-size:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_move:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-skl1/igt@kms_psr@sprite_plane_move.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl6/igt@kms_psr@sprite_plane_move.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5519">i915#5519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-skl4/igt@perf@blocking.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl7/igt@perf@blocking.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb8/igt@gem_exec_balancer@parallel-ordering.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6117">i915#6117</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-c-edp-1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-skl9/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-edp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4573">i915#4573</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl7/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-edp-1.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6">IGT#6</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2920">i915#2920</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb1/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2920">i915#2920</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb1/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-apl8/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-apl8/igt@runner@aborted.html">FAIL</a>) (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-skl6/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-skl10/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12438/shard-skl1/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6949">i915#6949</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111390v1/shard-skl6/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12438 -&gt; Patchwork_111390v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12438: 26363b95074fe20d6a4e723ae24cf566f6878751 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7072: 69ba7163475925cdc69aebbdfa0e87453ae165c7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111390v1: 26363b95074fe20d6a4e723ae24cf566f6878751 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============8321816606171625594==--
