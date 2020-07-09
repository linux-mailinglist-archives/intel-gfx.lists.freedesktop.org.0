Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2976021A766
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 20:59:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89D156EAD1;
	Thu,  9 Jul 2020 18:59:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7DE8B6EAD1;
 Thu,  9 Jul 2020 18:59:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 77F92A47EE;
 Thu,  9 Jul 2020 18:59:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Thu, 09 Jul 2020 18:59:41 -0000
Message-ID: <159432118146.31092.15737642226133451011@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200708205512.21625-1-jose.souza@intel.com>
In-Reply-To: <20200708205512.21625-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv4=2C1/5=5D_drm/i915/display=3A_Replace_dr?=
 =?utf-8?q?m=5Fi915=5Fprivate_in_voltage_swing_functions_by_intel=5Fencode?=
 =?utf-8?q?r_=28rev2=29?=
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

Series: series starting with [v4,1/5] drm/i915/display: Replace drm_i915_private in voltage swing functions by intel_encoder (rev2)
URL   : https://patchwork.freedesktop.org/series/79265/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8719_full -> Patchwork_18124_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18124_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-skl:          [PASS][1] -> [FAIL][2] ([i915#1528])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-skl6/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-skl8/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@gem_eio@kms:
    - shard-snb:          [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-snb1/igt@gem_eio@kms.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-snb6/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@bonded-early:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#2079])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-kbl4/igt@gem_exec_balancer@bonded-early.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-kbl6/igt@gem_exec_balancer@bonded-early.html

  * igt@gem_exec_params@invalid-fence-in:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#93] / [i915#95]) +4 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-kbl7/igt@gem_exec_params@invalid-fence-in.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-kbl2/igt@gem_exec_params@invalid-fence-in.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#1930])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-glk3/igt@gem_exec_reloc@basic-concurrent0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-glk5/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#69])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-skl5/igt@i915_pm_backlight@fade_with_suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-skl1/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_selftest@mock@requests:
    - shard-apl:          [PASS][13] -> [INCOMPLETE][14] ([i915#1635] / [i915#2110])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-apl3/igt@i915_selftest@mock@requests.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-apl2/igt@i915_selftest@mock@requests.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-apl3/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-apl2/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982]) +8 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-skl1/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-skl2/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-glk:          [PASS][19] -> [DMESG-FAIL][20] ([i915#118] / [i915#95])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-glk6/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#1635] / [i915#95]) +15 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +4 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#54])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-glk3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-glk8/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-toggle:
    - shard-tglb:         [PASS][27] -> [DMESG-WARN][28] ([i915#402])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-tglb5/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-tglb2/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1:
    - shard-tglb:         [PASS][29] -> [FAIL][30] ([i915#2122])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-tglb2/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-tglb3/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#2122])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html

  * igt@kms_frontbuffer_tracking@basic:
    - shard-glk:          [PASS][33] -> [DMESG-WARN][34] ([i915#1982])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-glk8/igt@kms_frontbuffer_tracking@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-glk4/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         [PASS][35] -> [DMESG-WARN][36] ([i915#1982])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][37] -> [FAIL][38] ([i915#173])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-iclb2/igt@kms_psr@no_drrs.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441]) +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [PASS][41] -> [FAIL][42] ([i915#1820])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-kbl7/igt@perf_pmu@semaphore-busy@rcs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-kbl2/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-hsw:          [TIMEOUT][45] ([i915#1958] / [i915#1976] / [i915#2119]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-hsw2/igt@gem_eio@in-flight-contexts-10ms.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-hsw7/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_eio@reset-stress:
    - shard-hsw:          [INCOMPLETE][47] ([CI#80]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-hsw2/igt@gem_eio@reset-stress.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-hsw7/igt@gem_eio@reset-stress.html

  * igt@gem_exec_whisper@basic-normal:
    - shard-glk:          [DMESG-WARN][49] ([i915#118] / [i915#95]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-glk9/igt@gem_exec_whisper@basic-normal.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-glk7/igt@gem_exec_whisper@basic-normal.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [DMESG-WARN][51] ([i915#402]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-tglb2/igt@i915_module_load@reload.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-tglb3/igt@i915_module_load@reload.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [INCOMPLETE][53] ([i915#198] / [i915#2110]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-skl8/igt@i915_selftest@mock@requests.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-skl1/igt@i915_selftest@mock@requests.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][55] ([i915#118] / [i915#95]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-glk4/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_color@pipe-b-ctm-negative:
    - shard-skl:          [DMESG-WARN][57] ([i915#1982]) -> [PASS][58] +6 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-skl2/igt@kms_color@pipe-b-ctm-negative.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-skl6/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge:
    - shard-glk:          [DMESG-WARN][59] ([i915#1982]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-glk7/igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-glk9/igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
    - shard-tglb:         [DMESG-WARN][61] ([i915#1982]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-tglb3/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:
    - shard-apl:          [DMESG-WARN][63] ([i915#1982]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-apl1/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-apl6/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible@ab-vga1-hdmi-a1:
    - shard-hsw:          [DMESG-WARN][65] ([i915#1982]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-hsw6/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible@ab-vga1-hdmi-a1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-hsw6/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
    - shard-apl:          [DMESG-WARN][67] ([i915#1635] / [i915#95]) -> [PASS][68] +13 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-apl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
    - shard-tglb:         [SKIP][69] ([i915#668]) -> [PASS][70] +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][71] ([i915#1188]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-skl10/igt@kms_hdr@bpc-switch.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-skl5/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][73] ([fdo#108145] / [i915#265]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][75] ([fdo#109441]) -> [PASS][76] +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-iclb5/igt@kms_psr@psr2_cursor_render.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][77] ([i915#658]) -> [SKIP][78] ([i915#588])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-5:
    - shard-apl:          [SKIP][79] ([fdo#109271] / [fdo#111827] / [i915#1635]) -> [SKIP][80] ([fdo#109271] / [fdo#111827])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-apl7/igt@kms_color_chamelium@pipe-b-ctm-0-5.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-apl2/igt@kms_color_chamelium@pipe-b-ctm-0-5.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
    - shard-apl:          [SKIP][81] ([fdo#109271] / [i915#1635]) -> [SKIP][82] ([fdo#109271]) +3 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-apl7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-apl8/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-tglb:         [DMESG-WARN][83] ([i915#1602] / [i915#1887]) -> [INCOMPLETE][84] ([i915#1602] / [i915#1887] / [i915#456])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-tglb8/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-tglb5/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-pwrite:
    - shard-apl:          [SKIP][85] ([fdo#109271]) -> [SKIP][86] ([fdo#109271] / [i915#1635])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-apl3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-pwrite.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-apl1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          [DMESG-FAIL][87] ([fdo#108145] / [i915#1982]) -> [FAIL][88] ([fdo#108145] / [i915#265])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][89], [FAIL][90]) ([i915#1610] / [i915#1635] / [i915#2110]) -> [FAIL][91] ([i915#1635] / [i915#2110])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-apl2/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-apl4/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-apl2/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][92], [FAIL][93]) ([i915#2110] / [i915#2150]) -> ([FAIL][94], [FAIL][95]) ([i915#1764] / [i915#2110] / [i915#2150])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-tglb8/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-tglb2/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-tglb5/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/shard-tglb3/igt@runner@aborted.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#1764]: https://gitlab.freedesktop.org/drm/intel/issues/1764
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1887]: https://gitlab.freedesktop.org/drm/intel/issues/1887
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1976]: https://gitlab.freedesktop.org/drm/intel/issues/1976
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2079]: https://gitlab.freedesktop.org/drm/intel/issues/2079
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2150]: https://gitlab.freedesktop.org/drm/intel/issues/2150
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8719 -> Patchwork_18124

  CI-20190529: 20190529
  CI_DRM_8719: 6ca80d83ae657da395ab20034f0f66209b456127 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5729: a048d54f58dd70b07dbeb4541b273ec230ddb586 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18124: fc1806ac58ba125b3ae1694ecf14b24a6dc5ffa0 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18124/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
