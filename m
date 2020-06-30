Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A9820F81E
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 17:19:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66A246E2C8;
	Tue, 30 Jun 2020 15:19:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DC5C66E2C8;
 Tue, 30 Jun 2020 15:19:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D59CEA00E7;
 Tue, 30 Jun 2020 15:19:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Tue, 30 Jun 2020 15:19:01 -0000
Message-ID: <159353034184.22702.7903745831240645250@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200625195252.39312-1-jose.souza@intel.com>
In-Reply-To: <20200625195252.39312-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Implement_new_combo_phy_initialization_step_?=
 =?utf-8?b?KHJldjMp?=
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

Series: drm/i915/display: Implement new combo phy initialization step (rev3)
URL   : https://patchwork.freedesktop.org/series/78796/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8677_full -> Patchwork_18039_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18039_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox:
    - shard-kbl:          [PASS][1] -> [FAIL][2] ([i915#1528])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-kbl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-kbl4/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-tglb3/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-tglb6/igt@i915_module_load@reload.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-random:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#93] / [i915#95]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html

  * igt@kms_cursor_legacy@pipe-b-torture-move:
    - shard-tglb:         [PASS][7] -> [DMESG-WARN][8] ([i915#128])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-tglb5/igt@kms_cursor_legacy@pipe-b-torture-move.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-tglb1/igt@kms_cursor_legacy@pipe-b-torture-move.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset@ab-vga1-hdmi-a1:
    - shard-hsw:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-hsw8/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset@ab-vga1-hdmi-a1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-hsw6/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#79])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#1928])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1635] / [i915#95]) +13 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#1188]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-iclb:         [PASS][21] -> [DMESG-WARN][22] ([i915#1982])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-iclb5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-iclb6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] / [i915#265])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_prime@basic-crc@second-to-first:
    - shard-kbl:          [PASS][25] -> [DMESG-FAIL][26] ([i915#95])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-kbl3/igt@kms_prime@basic-crc@second-to-first.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-kbl7/igt@kms_prime@basic-crc@second-to-first.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-b-query-idle:
    - shard-skl:          [PASS][29] -> [DMESG-WARN][30] ([i915#1982]) +11 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-skl5/igt@kms_vblank@pipe-b-query-idle.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-skl5/igt@kms_vblank@pipe-b-query-idle.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-skl:          [PASS][31] -> [INCOMPLETE][32] ([i915#69])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-skl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-skl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@perf@polling-parameterized:
    - shard-iclb:         [PASS][33] -> [FAIL][34] ([i915#1542])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-iclb6/igt@perf@polling-parameterized.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-iclb7/igt@perf@polling-parameterized.html

  
#### Possible fixes ####

  * igt@gem_exec_whisper@basic-fds-priority-all:
    - shard-glk:          [DMESG-WARN][35] ([i915#118] / [i915#95]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-glk4/igt@gem_exec_whisper@basic-fds-priority-all.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-glk7/igt@gem_exec_whisper@basic-fds-priority-all.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-skl:          [INCOMPLETE][37] ([i915#198]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-skl4/igt@i915_pm_dc@dc5-psr.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-skl6/igt@i915_pm_dc@dc5-psr.html

  * igt@kms_busy@basic-modeset-pipe-b:
    - shard-kbl:          [DMESG-WARN][39] ([i915#93] / [i915#95]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-kbl3/igt@kms_busy@basic-modeset-pipe-b.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-kbl7/igt@kms_busy@basic-modeset-pipe-b.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [DMESG-WARN][41] ([i915#1982]) -> [PASS][42] +5 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-skl5/igt@kms_color@pipe-c-ctm-0-25.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-skl5/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen:
    - shard-skl:          [FAIL][43] ([i915#54]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [FAIL][45] ([i915#96]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled:
    - shard-snb:          [SKIP][47] ([fdo#109271]) -> [PASS][48] +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-snb1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-snb4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html

  * igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][49] ([i915#1928]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-glk6/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [FAIL][51] ([i915#1928]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-tglb:         [DMESG-WARN][53] ([i915#1982]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-tglb3/igt@kms_frontbuffer_tracking@psr-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-tglb6/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][55] ([fdo#108145] / [i915#265]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][57] ([fdo#109642] / [fdo#111068]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-iclb7/igt@kms_psr2_su@page_flip.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [SKIP][59] ([fdo#109441]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-iclb3/igt@kms_psr@psr2_primary_mmap_gtt.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:
    - shard-tglb:         [DMESG-WARN][61] ([i915#402]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-tglb8/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-tglb3/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64] +4 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf@invalid-oa-metric-set-id:
    - shard-apl:          [DMESG-WARN][65] ([i915#1635] / [i915#95]) -> [PASS][66] +17 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-apl3/igt@perf@invalid-oa-metric-set-id.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-apl4/igt@perf@invalid-oa-metric-set-id.html

  
#### Warnings ####

  * igt@kms_color_chamelium@pipe-b-ctm-0-75:
    - shard-apl:          [SKIP][67] ([fdo#109271] / [fdo#111827]) -> [SKIP][68] ([fdo#109271] / [fdo#111827] / [i915#1635])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-apl3/igt@kms_color_chamelium@pipe-b-ctm-0-75.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-apl6/igt@kms_color_chamelium@pipe-b-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][69] ([i915#180] / [i915#93] / [i915#95]) -> [DMESG-WARN][70] ([i915#93] / [i915#95])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:
    - shard-apl:          [SKIP][71] ([fdo#109271] / [i915#1635]) -> [SKIP][72] ([fdo#109271]) +3 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-apl4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-apl8/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
    - shard-apl:          [SKIP][73] ([fdo#109271]) -> [SKIP][74] ([fdo#109271] / [i915#1635]) +5 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-apl7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-apl2/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][75] ([i915#93] / [i915#95]) -> [DMESG-WARN][76] ([i915#180] / [i915#93] / [i915#95]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [DMESG-FAIL][77] ([fdo#108145] / [i915#1982]) -> [FAIL][78] ([fdo#108145] / [i915#265])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][79], [FAIL][80], [FAIL][81]) ([fdo#109271] / [i915#1610] / [i915#1635] / [i915#716]) -> ([FAIL][82], [FAIL][83]) ([fdo#109271] / [i915#1635] / [i915#716])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-apl7/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-apl4/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-apl8/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-apl3/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-apl2/igt@runner@aborted.html
    - shard-tglb:         [FAIL][84] ([i915#2110]) -> [FAIL][85] ([i915#1764] / [i915#2110])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-tglb5/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/shard-tglb3/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1764]: https://gitlab.freedesktop.org/drm/intel/issues/1764
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8677 -> Patchwork_18039

  CI-20190529: 20190529
  CI_DRM_8677: 47bc281ce35e7872ee04238b2f5e81aeeeb2337b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5718: af1ef32bfae90bcdbaf1b5d84c61ff4e04368505 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18039: 4d7881077c256917fd39d2633f0d66a4ec1b7077 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18039/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
