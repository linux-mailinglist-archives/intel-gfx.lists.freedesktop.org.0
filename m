Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C042CF8D4
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Dec 2020 02:52:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16B606E3AC;
	Sat,  5 Dec 2020 01:52:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A80376E3A0;
 Sat,  5 Dec 2020 01:52:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 98511A0019;
 Sat,  5 Dec 2020 01:52:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Sat, 05 Dec 2020 01:52:55 -0000
Message-ID: <160713317559.22632.531106588729749577@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201204223603.249878-1-lyude@redhat.com>
In-Reply-To: <20201204223603.249878-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_support_for_Intel=27s_eDP_backlight_controls_=28re?=
 =?utf-8?b?djMp?=
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
Content-Type: multipart/mixed; boundary="===============1659786845=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1659786845==
Content-Type: multipart/alternative;
 boundary="===============1278661968347971742=="

--===============1278661968347971742==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add support for Intel's eDP backlight controls (rev3)
URL   : https://patchwork.freedesktop.org/series/81702/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9444_full -> Patchwork_19066_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19066_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19066_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19066_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip_tiling@flip-to-yf-tiled@edp-1-pipe-c:
    - shard-skl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-skl4/igt@kms_flip_tiling@flip-to-yf-tiled@edp-1-pipe-c.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-skl9/igt@kms_flip_tiling@flip-to-yf-tiled@edp-1-pipe-c.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_ctx_exec@basic-close-race}:
    - shard-glk:          [DMESG-FAIL][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-glk7/igt@gem_ctx_exec@basic-close-race.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-glk1/igt@gem_ctx_exec@basic-close-race.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9444_full and Patchwork_19066_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 174 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19066_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@render-ccs:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#2405] / [i915#2499])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-skl4/igt@api_intel_bb@render-ccs.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-skl8/igt@api_intel_bb@render-ccs.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-glk:          [PASS][7] -> [DMESG-WARN][8] ([i915#118] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-glk2/igt@gem_exec_whisper@basic-fds-priority.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-glk2/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][9] -> [INCOMPLETE][10] ([i915#2405])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-apl8/igt@gem_softpin@noreloc-s3.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-apl3/igt@gem_softpin@noreloc-s3.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1436] / [i915#716])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-skl8/igt@gen9_exec_parse@allowed-single.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-skl4/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#54]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-tglb:         [PASS][15] -> [FAIL][16] ([i915#2598])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#79])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
    - shard-apl:          [PASS][19] -> [FAIL][20] ([i915#49])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#49])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-glk2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-glk5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
    - shard-kbl:          [PASS][23] -> [FAIL][24] ([i915#49])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#1188]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_lowres@pipe-b-tiling-yf:
    - shard-iclb:         [PASS][27] -> [FAIL][28] ([i915#899])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-iclb6/igt@kms_plane_lowres@pipe-b-tiling-yf.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-iclb7/igt@kms_plane_lowres@pipe-b-tiling-yf.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_psr@suspend:
    - shard-skl:          [PASS][31] -> [INCOMPLETE][32] ([i915#198]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-skl4/igt@kms_psr@suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-skl9/igt@kms_psr@suspend.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#1542])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-skl10/igt@perf@polling-parameterized.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-skl8/igt@perf@polling-parameterized.html

  
#### Possible fixes ####

  * igt@gem_softpin@noreloc-s3:
    - shard-glk:          [INCOMPLETE][35] ([i915#2199] / [i915#2405]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-glk6/igt@gem_softpin@noreloc-s3.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-glk4/igt@gem_softpin@noreloc-s3.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [DMESG-WARN][37] ([i915#1982]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-skl1/igt@kms_color@pipe-a-ctm-0-75.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-skl2/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen:
    - shard-skl:          [FAIL][39] ([i915#54]) -> [PASS][40] +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][41] ([i915#2122]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-pgflip-blt:
    - shard-glk:          [FAIL][43] ([i915#49]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-pgflip-blt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
    - shard-skl:          [FAIL][45] ([i915#49]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-skl1/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][47] ([fdo#108145] / [i915#265]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-b-tiling-yf:
    - shard-kbl:          [DMESG-WARN][49] ([i915#165] / [i915#180] / [i915#78]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-kbl2/igt@kms_plane_lowres@pipe-b-tiling-yf.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-kbl4/igt@kms_plane_lowres@pipe-b-tiling-yf.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][51] ([fdo#109441]) -> [PASS][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-kbl:          [INCOMPLETE][53] ([i915#1602] / [i915#794]) -> [INCOMPLETE][54] ([i915#794])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][55] ([i915#588]) -> [SKIP][56] ([i915#658])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][57] ([i915#2681] / [i915#2684]) -> [WARN][58] ([i915#2684])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [FAIL][59] ([i915#2680]) -> [WARN][60] ([i915#2681] / [i915#2684])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][61] ([fdo#109349]) -> [DMESG-WARN][62] ([i915#1226])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-apl:          [DMESG-WARN][63] ([i915#2635]) -> [INCOMPLETE][64] ([i915#2635])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-apl4/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-tglb:         [DMESG-WARN][65] ([i915#1602] / [i915#2411]) -> [INCOMPLETE][66] ([i915#1436] / [i915#1602] / [i915#1887] / [i915#2411] / [i915#456])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-tglb1/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-tglb3/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][67], [FAIL][68], [FAIL][69]) ([i915#1436] / [i915#1814] / [i915#2295] / [i915#2722] / [i915#483] / [i915#602]) -> ([FAIL][70], [FAIL][71]) ([i915#1814] / [i915#2295] / [i915#2722] / [i915#483] / [i915#602])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-kbl2/igt@runner@aborted.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-kbl6/igt@runner@aborted.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-kbl2/igt@runner@aborted.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-kbl7/igt@runner@aborted.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-kbl6/igt@runner@aborted.html
    - shard-skl:          [FAIL][72] ([i915#2295] / [i915#2722] / [i915#483]) -> ([FAIL][73], [FAIL][74]) ([i915#1436] / [i915#2295] / [i915#2722])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-skl3/igt@runner@aborted.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-skl4/igt@runner@aborted.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-skl6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1887]: https://gitlab.freedesktop.org/drm/intel/issues/1887
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2199]: https://gitlab.freedesktop.org/drm/intel/issues/2199
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2499]: https://gitlab.freedesktop.org/drm/intel/issues/2499
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#2635]: https://gitlab.freedesktop.org/drm/intel/issues/2635
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2680]: https://gitlab.freedesktop.org/drm/intel/issues/2680
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#602]: https://gitlab.freedesktop.org/drm/intel/issues/602
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9444 -> Patchwork_19066

  CI-20190529: 20190529
  CI_DRM_9444: cee8f6ace633b555c64b14938577e6da02710a0b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5881: 10d4e2e9177eb747b9f2ab9122e3ab60e91654fb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19066: 0246c3bf43a014e16ba421f18a17c4e17898cdd3 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/index.html

--===============1278661968347971742==
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
<tr><td><b>Series:</b></td><td>drm/i915: Add support for Intel&#39;s eDP ba=
cklight controls (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/81702/">https://patchwork.freedesktop.org/series/81702/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19066/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19066/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9444_full -&gt; Patchwork_19066_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19066_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19066_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19066_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_flip_tiling@flip-to-yf-tiled@edp-1-pipe-c:<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-skl4/igt@kms_flip_tiling@flip-to-yf-tiled@edp-1-pipe-c.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19066/shard-skl9/igt@kms_flip_tiling@flip-to-yf-tiled@edp-1-pipe-c.h=
tml">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@gem_ctx_exec@basic-close-race}:<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-glk7/igt@gem_ctx_exec@basic-close-race.html">DMESG-FAIL<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_190=
66/shard-glk1/igt@gem_ctx_exec@basic-close-race.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9444_full and Patchwork_19=
066_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 174 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19066_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@render-ccs:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-skl4/igt@api_intel_bb@render-ccs.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-skl=
8/igt@api_intel_bb@render-ccs.html">INCOMPLETE</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/2405">i915#2405</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2499">i915#2499</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-glk2/igt@gem_exec_whisper@basic-fds-priority.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_190=
66/shard-glk2/igt@gem_exec_whisper@basic-fds-priority.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-apl8/igt@gem_softpin@noreloc-s3.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-apl3=
/igt@gem_softpin@noreloc-s3.html">INCOMPLETE</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/2405">i915#2405</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-skl8/igt@gen9_exec_parse@allowed-single.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/sh=
ard-skl4/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19066/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i=
915#54</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19066/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-interr=
uptible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2598">i915#2598</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19066/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915#=
79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9444/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-p=
lflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19066/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-prim=
scrn-shrfb-plflip-blt.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/49">i915#49</a>)</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9444/shard-glk2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-p=
lflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19066/shard-glk5/igt@kms_frontbuffer_tracking@fbc-1p-prim=
scrn-shrfb-plflip-blt.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/49">i915#49</a>)</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9444/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-p=
lflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19066/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-prim=
scrn-shrfb-plflip-blt.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/49">i915#49</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-skl=
8/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1188">i915#1188</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-yf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-iclb6/igt@kms_plane_lowres@pipe-b-tiling-yf.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1906=
6/shard-iclb7/igt@kms_plane_lowres@pipe-b-tiling-yf.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/899">i915#899</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/s=
hard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-skl4/igt@kms_psr@suspend.html">PASS</a> -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-skl9/igt@km=
s_psr@suspend.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/198">i915#198</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-skl10/igt@perf@polling-parameterized.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard=
-skl8/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-glk6/igt@gem_softpin@noreloc-s3.html">INCOMPLETE</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2199">i915#2199</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2=
405</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19066/shard-glk4/igt@gem_softpin@noreloc-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-skl1/igt@kms_color@pipe-a-ctm-0-75.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9066/shard-skl2/igt@kms_color@pipe-a-ctm-0-75.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
54">i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19066/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-256x256-offscr=
een.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19066/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-i=
nterruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-=
pgflip-blt.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/49">i915#49</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19066/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-s=
cndscrn-indfb-pgflip-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/49">i915#49</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19066/shard-skl1/igt@kms_frontbuffer_tracking@psr-rgb565-draw-re=
nder.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19066/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-=
7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-yf:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-kbl2/igt@kms_plane_lowres@pipe-b-tiling-yf.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/165">i9=
15#165</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180=
">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/78">i915#78</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19066/shard-kbl4/igt@kms_plane_lowres@pipe-b-tiling-yf.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109=
441</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19066/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a> +2 s=
imilar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html">IN=
COMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/16=
02">i915#1602</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/794">i915#794</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19066/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@rcs0=
.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/794">i915#794</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
066/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#268=
1</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i9=
15#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19066/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684=
</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2680">i915#2680=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9066/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109349">fdo#109=
349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19066/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1226">i915#12=
26</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.=
html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2635">i915#2635</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19066/shard-apl4/igt@kms_vblank@pipe-b-ts-continuation-=
dpms-suspend.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2635">i915#2635</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-tglb1/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1602">i915#1602</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2411">i915#2411</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19066/shard-tglb3/igt@kms_vblank@pipe-c-ts-conti=
nuation-dpms-suspend.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1887">i915#1887</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/456">i915#456</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-kbl6/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9444/shard-kbl2/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#4=
83</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/602">i9=
15#602</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19066/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/shard-kbl6/igt@runner@ab=
orted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2722">i915#2722</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/483">i915#483</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/602">i915#602</a>)</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9444/shard-skl3/igt@runner@aborted.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>) -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19066/sh=
ard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_19066/shard-skl6/igt@runner@aborted.html">FA=
IL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i=
915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2722">i915#2722</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9444 -&gt; Patchwork_19066</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9444: cee8f6ace633b555c64b14938577e6da02710a0b @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5881: 10d4e2e9177eb747b9f2ab9122e3ab60e91654fb @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19066: 0246c3bf43a014e16ba421f18a17c4e17898cdd3 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1278661968347971742==--

--===============1659786845==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1659786845==--
