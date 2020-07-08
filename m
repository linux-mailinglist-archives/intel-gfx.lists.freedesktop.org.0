Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C862189DB
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 16:10:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C316C6E21D;
	Wed,  8 Jul 2020 14:10:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0B1B06E1B9;
 Wed,  8 Jul 2020 14:10:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EDEB1A41FB;
 Wed,  8 Jul 2020 14:10:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Micha=C5=82_Winiarski?= <michal@hardline.pl>
Date: Wed, 08 Jul 2020 14:10:05 -0000
Message-ID: <159421740596.3838.17335076856751392774@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200708100843.297655-1-michal@hardline.pl>
In-Reply-To: <20200708100843.297655-1-michal@hardline.pl>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/uc=3A_Extract_uc_usage_det?=
 =?utf-8?q?ails_into_separate_debugfs?=
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

Series: series starting with [1/2] drm/i915/uc: Extract uc usage details into separate debugfs
URL   : https://patchwork.freedesktop.org/series/79242/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8714_full -> Patchwork_18105_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18105_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_cs_tlb@engines@rcs0:
    - shard-tglb:         [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-tglb3/igt@gem_cs_tlb@engines@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-tglb6/igt@gem_cs_tlb@engines@rcs0.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#1930])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-glk5/igt@gem_exec_reloc@basic-concurrent0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-glk7/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_reloc@basic-wc-read:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#1635] / [i915#95]) +23 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-apl6/igt@gem_exec_reloc@basic-wc-read.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-apl8/igt@gem_exec_reloc@basic-wc-read.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-kbl2/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-kbl1/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:
    - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#54])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-xtiled:
    - shard-glk:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-glk9/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-xtiled.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-glk2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-xtiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled:
    - shard-skl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982]) +11 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-skl5/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-skl6/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset@ab-vga1-hdmi-a1:
    - shard-hsw:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-hsw6/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset@ab-vga1-hdmi-a1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-hsw6/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +7 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:
    - shard-tglb:         [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#1188])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([i915#69]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145] / [i915#265])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-iclb2/igt@kms_psr@psr2_basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-iclb3/igt@kms_psr@psr2_basic.html

  * igt@kms_psr@suspend:
    - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#198])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-skl9/igt@kms_psr@suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-skl2/igt@kms_psr@suspend.html

  * igt@perf@polling-parameterized:
    - shard-iclb:         [PASS][31] -> [FAIL][32] ([i915#1542])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-iclb2/igt@perf@polling-parameterized.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-iclb7/igt@perf@polling-parameterized.html

  * igt@vgem_basic@dmabuf-export:
    - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#93] / [i915#95]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-kbl7/igt@vgem_basic@dmabuf-export.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-kbl6/igt@vgem_basic@dmabuf-export.html

  
#### Possible fixes ####

  * igt@gem_exec_whisper@basic-contexts-priority:
    - shard-glk:          [DMESG-WARN][35] ([i915#118] / [i915#95]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-glk1/igt@gem_exec_whisper@basic-contexts-priority.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-glk2/igt@gem_exec_whisper@basic-contexts-priority.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt:
    - shard-tglb:         [INCOMPLETE][37] -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-tglb3/igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-tglb6/igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-snb:          [DMESG-WARN][39] ([i915#42]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-snb6/igt@gem_workarounds@suspend-resume-context.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-snb4/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [DMESG-WARN][41] ([i915#1436] / [i915#716]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-kbl2/igt@gen9_exec_parse@allowed-all.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-kbl1/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-kbl:          [DMESG-WARN][43] ([i915#93] / [i915#95]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-kbl1/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-kbl7/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][45] ([i915#118] / [i915#95]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-glk6/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled:
    - shard-skl:          [DMESG-WARN][47] ([i915#1982]) -> [PASS][48] +10 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-skl6/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][49] ([i915#79]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@dpms-vs-vblank-race@a-dp1:
    - shard-kbl:          [DMESG-WARN][51] ([i915#1982]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-kbl7/igt@kms_flip@dpms-vs-vblank-race@a-dp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-kbl6/igt@kms_flip@dpms-vs-vblank-race@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +5 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:
    - shard-iclb:         [FAIL][55] ([i915#49]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:
    - shard-tglb:         [DMESG-WARN][57] ([i915#1982]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-tglb8/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-tglb7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][59] ([i915#1188]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_scaling@pipe-a-scaler-with-rotation:
    - shard-tglb:         [DMESG-WARN][61] ([i915#402]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-tglb7/igt@kms_plane_scaling@pipe-a-scaler-with-rotation.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-tglb3/igt@kms_plane_scaling@pipe-a-scaler-with-rotation.html

  * igt@kms_prop_blob@blob-multiple:
    - shard-glk:          [INCOMPLETE][63] ([i915#58] / [k.org#198133]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-glk8/igt@kms_prop_blob@blob-multiple.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-glk5/igt@kms_prop_blob@blob-multiple.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-b-query-forked:
    - shard-apl:          [DMESG-WARN][67] ([i915#1635] / [i915#95]) -> [PASS][68] +19 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-apl1/igt@kms_vblank@pipe-b-query-forked.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-apl2/igt@kms_vblank@pipe-b-query-forked.html

  * igt@perf@polling-parameterized:
    - shard-tglb:         [FAIL][69] ([i915#1542]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-tglb2/igt@perf@polling-parameterized.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-tglb8/igt@perf@polling-parameterized.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [FAIL][71] ([i915#1820]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-kbl2/igt@perf_pmu@semaphore-busy@rcs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-kbl4/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Warnings ####

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [DMESG-WARN][73] ([i915#93] / [i915#95]) -> [DMESG-WARN][74] ([i915#180] / [i915#93] / [i915#95])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-kbl7/igt@i915_suspend@forcewake.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-kbl6/igt@i915_suspend@forcewake.html

  * igt@kms_chamelium@hdmi-audio-edid:
    - shard-apl:          [SKIP][75] ([fdo#109271] / [fdo#111827] / [i915#1635]) -> [SKIP][76] ([fdo#109271] / [fdo#111827])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-apl1/igt@kms_chamelium@hdmi-audio-edid.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-apl2/igt@kms_chamelium@hdmi-audio-edid.html

  * igt@kms_color_chamelium@pipe-c-ctm-limited-range:
    - shard-apl:          [SKIP][77] ([fdo#109271] / [fdo#111827]) -> [SKIP][78] ([fdo#109271] / [fdo#111827] / [i915#1635])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-apl3/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-apl1/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [DMESG-FAIL][79] ([fdo#110321] / [i915#1635] / [i915#95]) -> [FAIL][80] ([fdo#110321] / [fdo#110336])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-apl1/igt@kms_content_protection@legacy.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-apl8/igt@kms_content_protection@legacy.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1:
    - shard-tglb:         [DMESG-FAIL][81] ([i915#1982]) -> [FAIL][82] ([i915#2122])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-tglb7/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-tglb5/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
    - shard-apl:          [SKIP][83] ([fdo#109271] / [i915#1635]) -> [SKIP][84] ([fdo#109271]) +7 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-apl4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-apl2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_vblank@pipe-d-ts-continuation-dpms-rpm:
    - shard-apl:          [SKIP][85] ([fdo#109271]) -> [SKIP][86] ([fdo#109271] / [i915#1635]) +3 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-apl2/igt@kms_vblank@pipe-d-ts-continuation-dpms-rpm.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-apl6/igt@kms_vblank@pipe-d-ts-continuation-dpms-rpm.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][87], [FAIL][88], [FAIL][89]) ([fdo#109271] / [i915#1436] / [i915#1784] / [i915#2110] / [i915#716]) -> [FAIL][90] ([i915#1436] / [i915#1784] / [i915#2110])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-kbl7/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-kbl7/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-kbl2/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-kbl6/igt@runner@aborted.html
    - shard-apl:          ([FAIL][91], [FAIL][92], [FAIL][93]) ([i915#1610] / [i915#1635] / [i915#2110]) -> [FAIL][94] ([i915#1635] / [i915#2110])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-apl2/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-apl2/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-apl4/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-apl7/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][95], [FAIL][96], [FAIL][97], [FAIL][98]) ([i915#1764] / [i915#2110] / [i915#2148]) -> [FAIL][99] ([i915#2110])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-tglb2/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-tglb5/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-tglb3/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8714/shard-tglb3/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/shard-tglb6/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1764]: https://gitlab.freedesktop.org/drm/intel/issues/1764
  [i915#1784]: https://gitlab.freedesktop.org/drm/intel/issues/1784
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2148]: https://gitlab.freedesktop.org/drm/intel/issues/2148
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8714 -> Patchwork_18105

  CI-20190529: 20190529
  CI_DRM_8714: d8410c7e293b66004f3f6ae4ba59b2183ebdd7e8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5727: 90254c14f4e68bec9d4a114ddf039075f3c1a30c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18105: 5d755cfb2723ad5d0a15d0ba174d471590d7bdd8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18105/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
