Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFC621E2A7
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2020 23:51:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D62B76E252;
	Mon, 13 Jul 2020 21:51:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 75EEF6E252;
 Mon, 13 Jul 2020 21:51:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6F1BDA66C9;
 Mon, 13 Jul 2020 21:51:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Mon, 13 Jul 2020 21:51:30 -0000
Message-ID: <159467709042.16738.5706060077448253368@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200713182321.12390-1-lucas.demarchi@intel.com>
In-Reply-To: <20200713182321.12390-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/6=5D_drm/i915=3A_Add_has=5Fmaster?=
 =?utf-8?q?=5Funit=5Firq_flag?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [CI,1/6] drm/i915: Add has_master_unit_irq flag
URL   : https://patchwork.freedesktop.org/series/79420/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8739_full -> Patchwork_18150_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18150_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18150_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18150_full:

### Piglit changes ###

#### Possible regressions ####

  * spec@ext_packed_depth_stencil@depthstencil-render-miplevels 1024 s=d=z24_s8 (NEW):
    - pig-snb-2600:       NOTRUN -> [FAIL][1] +1 similar issue
   [1]: None

  
New tests
---------

  New tests have been introduced between CI_DRM_8739_full and Patchwork_18150_full:

### New Piglit tests (1) ###

  * spec@ext_packed_depth_stencil@depthstencil-render-miplevels 1024 s=d=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [4.59] s

  

Known issues
------------

  Here are the changes found in Patchwork_18150_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [PASS][2] -> [INCOMPLETE][3] ([i915#69])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-skl2/igt@gem_eio@in-flight-suspend.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-skl7/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@bonded-early:
    - shard-kbl:          [PASS][4] -> [FAIL][5] ([i915#2079])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-kbl7/igt@gem_exec_balancer@bonded-early.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-kbl7/igt@gem_exec_balancer@bonded-early.html

  * igt@gem_exec_balancer@hang:
    - shard-apl:          [PASS][6] -> [DMESG-WARN][7] ([i915#1635] / [i915#95]) +11 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-apl3/igt@gem_exec_balancer@hang.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-apl4/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_whisper@basic-fds:
    - shard-glk:          [PASS][8] -> [DMESG-WARN][9] ([i915#118] / [i915#95])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-glk2/igt@gem_exec_whisper@basic-fds.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-glk9/igt@gem_exec_whisper@basic-fds.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-skl:          [PASS][10] -> [INCOMPLETE][11] ([i915#198])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-skl3/igt@i915_pm_dc@dc5-psr.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-skl10/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-tglb:         [PASS][12] -> [DMESG-WARN][13] ([i915#402])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-tglb3/igt@i915_pm_rpm@system-suspend-execbuf.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-tglb7/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [PASS][14] -> [DMESG-FAIL][15] ([i915#118] / [i915#95])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-glk4/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen:
    - shard-kbl:          [PASS][16] -> [DMESG-WARN][17] ([i915#93] / [i915#95]) +4 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled:
    - shard-apl:          [PASS][18] -> [DMESG-WARN][19] ([i915#1635] / [i915#1982])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-apl1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-apl8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html
    - shard-glk:          [PASS][20] -> [DMESG-WARN][21] ([i915#1982])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-glk5/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-glk1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][22] -> [FAIL][23] ([i915#79])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [PASS][24] -> [FAIL][25] ([i915#2122]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-tglb:         [PASS][26] -> [DMESG-WARN][27] ([i915#1982])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#1188])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][30] -> [DMESG-WARN][31] ([i915#180]) +6 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-128:
    - shard-skl:          [PASS][32] -> [DMESG-WARN][33] ([i915#1982]) +10 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-skl7/igt@kms_plane_cursor@pipe-a-viewport-size-128.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-skl1/igt@kms_plane_cursor@pipe-a-viewport-size-128.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][34] -> [SKIP][35] ([fdo#109642] / [fdo#111068])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-iclb1/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][36] -> [SKIP][37] ([fdo#109441]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [PASS][38] -> [FAIL][39] ([i915#1542])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-iclb1/igt@perf@blocking-parameterized.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-iclb6/igt@perf@blocking-parameterized.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [PASS][40] -> [FAIL][41] ([i915#1820])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-kbl2/igt@perf_pmu@semaphore-busy@rcs0.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-kbl4/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Possible fixes ####

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-glk:          [DMESG-WARN][42] ([i915#118] / [i915#95]) -> [PASS][43] +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-glk9/igt@gem_exec_whisper@basic-contexts-forked.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-glk6/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [DMESG-WARN][44] ([i915#402]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-tglb1/igt@i915_module_load@reload.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-tglb8/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-skl:          [INCOMPLETE][46] ([i915#151] / [i915#69]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-skl6/igt@i915_pm_rpm@system-suspend.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-skl5/igt@i915_pm_rpm@system-suspend.html

  * igt@kms_addfb_basic@addfb25-modifier-no-flag:
    - shard-kbl:          [DMESG-WARN][48] ([i915#93] / [i915#95]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-kbl3/igt@kms_addfb_basic@addfb25-modifier-no-flag.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-kbl3/igt@kms_addfb_basic@addfb25-modifier-no-flag.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen:
    - shard-skl:          [FAIL][50] ([i915#54]) -> [PASS][51] +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [INCOMPLETE][52] ([i915#300]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][54] ([IGT#5] / [i915#697]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled:
    - shard-glk:          [DMESG-WARN][56] ([i915#1982]) -> [PASS][57] +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-glk3/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-glk3/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-kbl:          [DMESG-WARN][58] ([i915#180]) -> [PASS][59] +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a1:
    - shard-glk:          [FAIL][60] ([i915#2122]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-glk9/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-glk6/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a1.html

  * igt@kms_flip_tiling@flip-yf-tiled:
    - shard-apl:          [DMESG-WARN][62] ([i915#1635] / [i915#95]) -> [PASS][63] +13 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-apl7/igt@kms_flip_tiling@flip-yf-tiled.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-apl8/igt@kms_flip_tiling@flip-yf-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [DMESG-WARN][64] ([i915#1982]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-msflip-blt:
    - shard-skl:          [DMESG-WARN][66] ([i915#1982]) -> [PASS][67] +9 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-msflip-blt.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][68] ([fdo#108145] / [i915#265]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [SKIP][70] ([fdo#109441]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][72] ([i915#31]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-kbl1/igt@kms_setmode@basic.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-kbl2/igt@kms_setmode@basic.html

  * igt@testdisplay:
    - shard-kbl:          [TIMEOUT][74] ([i915#1692] / [i915#1958] / [i915#2119]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-kbl3/igt@testdisplay.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-kbl1/igt@testdisplay.html

  
#### Warnings ####

  * igt@kms_content_protection@srm:
    - shard-kbl:          [TIMEOUT][76] ([i915#1319] / [i915#1958] / [i915#2119]) -> [TIMEOUT][77] ([i915#1319] / [i915#2119])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-kbl3/igt@kms_content_protection@srm.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-kbl1/igt@kms_content_protection@srm.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][78] ([i915#1226]) -> [SKIP][79] ([fdo#109349])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][80] ([i915#180] / [i915#93] / [i915#95]) -> [DMESG-WARN][81] ([i915#93] / [i915#95])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-apl:          [DMESG-FAIL][82] ([fdo#108145] / [i915#1635] / [i915#95]) -> [FAIL][83] ([fdo#108145] / [i915#1635] / [i915#265])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-apl4/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-skl:          [DMESG-FAIL][84] ([fdo#108145] / [i915#1982]) -> [FAIL][85] ([fdo#108145] / [i915#265])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][86], [FAIL][87], [FAIL][88]) ([fdo#109271] / [i915#1610] / [i915#1635] / [i915#2110] / [i915#716]) -> ([FAIL][89], [FAIL][90]) ([fdo#109271] / [i915#1635] / [i915#2110] / [i915#716])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-apl8/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-apl4/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8739/shard-apl3/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-apl7/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/shard-apl7/igt@runner@aborted.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1692]: https://gitlab.freedesktop.org/drm/intel/issues/1692
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2079]: https://gitlab.freedesktop.org/drm/intel/issues/2079
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#697]: https://gitlab.freedesktop.org/drm/intel/issues/697
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 12)
------------------------------

  Additional (1): pig-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_8739 -> Patchwork_18150

  CI-20190529: 20190529
  CI_DRM_8739: 147656a7a6fdad7901fce3b2df7b673906961439 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5735: 21f8204e54c122e4a0f8ca4b59e4b2db8d1ba687 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18150: eeecf7e95d4c383e1e3e06bf47710f7578b0485a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18150/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
