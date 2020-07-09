Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A6621980D
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 07:41:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A9FF6E3D8;
	Thu,  9 Jul 2020 05:41:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 04E586E3D2;
 Thu,  9 Jul 2020 05:41:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E8D88A00E6;
 Thu,  9 Jul 2020 05:41:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 09 Jul 2020 05:41:22 -0000
Message-ID: <159427328292.31092.11099132135378574895@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200708221729.17113-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200708221729.17113-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Soften_the_tasklet_flush_frequency_before_waits?=
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

Series: drm/i915: Soften the tasklet flush frequency before waits
URL   : https://patchwork.freedesktop.org/series/79269/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8717_full -> Patchwork_18118_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18118_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-contexts:
    - shard-glk:          [PASS][1] -> [DMESG-WARN][2] ([i915#118] / [i915#95])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-glk4/igt@gem_exec_whisper@basic-contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-glk9/igt@gem_exec_whisper@basic-contexts.html

  * igt@kms_atomic@plane-invalid-params-fence:
    - shard-tglb:         [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-tglb7/igt@kms_atomic@plane-invalid-params-fence.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-tglb3/igt@kms_atomic@plane-invalid-params-fence.html

  * igt@kms_big_fb@linear-16bpp-rotate-0:
    - shard-kbl:          [PASS][5] -> [DMESG-FAIL][6] ([i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-kbl1/igt@kms_big_fb@linear-16bpp-rotate-0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-kbl4/igt@kms_big_fb@linear-16bpp-rotate-0.html
    - shard-apl:          [PASS][7] -> [DMESG-FAIL][8] ([i915#1635] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl7/igt@kms_big_fb@linear-16bpp-rotate-0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-apl7/igt@kms_big_fb@linear-16bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [PASS][9] -> [DMESG-FAIL][10] ([i915#118] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-glk7/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_color@pipe-c-ctm-0-5:
    - shard-skl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982]) +4 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl7/igt@kms_color@pipe-c-ctm-0-5.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-skl6/igt@kms_color@pipe-c-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#93] / [i915#95]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1635] / [i915#95]) +17 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl3/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-apl7/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#79])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#198])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl10/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-skl1/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_flip@plain-flip-ts-check@a-edp1:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#2122])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl6/igt@kms_flip@plain-flip-ts-check@a-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-skl8/igt@kms_flip@plain-flip-ts-check@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check@a-hdmi-a1:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#2122])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-glk5/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-glk1/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
    - shard-tglb:         [PASS][27] -> [DMESG-WARN][28] ([i915#1982])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#1188])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
    - shard-iclb:         [PASS][31] -> [DMESG-WARN][32] ([i915#1982])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-iclb6/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109642] / [fdo#111068])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-iclb5/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-iclb8/igt@kms_psr@psr2_suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-tglb:         [PASS][37] -> [INCOMPLETE][38] ([i915#456])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-tglb5/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-tglb8/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [PASS][39] -> [FAIL][40] ([i915#1820])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-kbl4/igt@perf_pmu@semaphore-busy@rcs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-kbl1/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Possible fixes ####

  * igt@gem_exec_flush@basic-wb-pro-default:
    - shard-apl:          [DMESG-WARN][41] ([i915#1635] / [i915#95]) -> [PASS][42] +19 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl4/igt@gem_exec_flush@basic-wb-pro-default.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-apl3/igt@gem_exec_flush@basic-wb-pro-default.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-glk:          [DMESG-WARN][43] ([i915#118] / [i915#95]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-glk6/igt@gem_exec_whisper@basic-contexts-forked.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-glk7/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@i915_module_load@reload:
    - shard-apl:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl1/igt@i915_module_load@reload.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-apl6/igt@i915_module_load@reload.html

  * igt@kms_addfb_basic@size-max:
    - shard-skl:          [DMESG-WARN][47] ([i915#1982]) -> [PASS][48] +4 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl6/igt@kms_addfb_basic@size-max.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-skl7/igt@kms_addfb_basic@size-max.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][49] ([i915#118] / [i915#95]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-glk1/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +4 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-tglb:         [DMESG-WARN][53] ([i915#402]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-skl:          [FAIL][55] ([i915#49]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [DMESG-WARN][57] ([i915#1982]) -> [PASS][58] +4 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][59] ([fdo#108145] / [i915#265]) -> [PASS][60] +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [SKIP][61] ([fdo#109441]) -> [PASS][62] +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-iclb5/igt@kms_psr@psr2_sprite_render.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-iclb2/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_pwrite_crc:
    - shard-skl:          [FAIL][63] ([i915#150]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl2/igt@kms_pwrite_crc.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-skl1/igt@kms_pwrite_crc.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-skl:          [INCOMPLETE][65] ([i915#1958]) -> [FAIL][66] ([i915#1930])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl5/igt@gem_exec_reloc@basic-concurrent16.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-skl5/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@kms_chamelium@dp-crc-fast:
    - shard-apl:          [SKIP][67] ([fdo#109271] / [fdo#111827] / [i915#1635]) -> [SKIP][68] ([fdo#109271] / [fdo#111827])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl4/igt@kms_chamelium@dp-crc-fast.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-apl2/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          [DMESG-FAIL][69] ([fdo#108145] / [i915#1635] / [i915#95]) -> [FAIL][70] ([fdo#108145] / [i915#265])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-d-coverage-vs-premult-vs-constant:
    - shard-apl:          [SKIP][71] ([fdo#109271] / [i915#1635]) -> [SKIP][72] ([fdo#109271])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl7/igt@kms_plane_alpha_blend@pipe-d-coverage-vs-premult-vs-constant.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-apl2/igt@kms_plane_alpha_blend@pipe-d-coverage-vs-premult-vs-constant.html

  * igt@kms_plane_cursor@pipe-d-viewport-size-128:
    - shard-apl:          [SKIP][73] ([fdo#109271]) -> [SKIP][74] ([fdo#109271] / [i915#1635]) +9 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl8/igt@kms_plane_cursor@pipe-d-viewport-size-128.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-apl1/igt@kms_plane_cursor@pipe-d-viewport-size-128.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][75], [FAIL][76], [FAIL][77]) ([fdo#109271] / [i915#1610] / [i915#1635] / [i915#2110] / [i915#716]) -> ([FAIL][78], [FAIL][79]) ([fdo#109271] / [i915#1635] / [i915#2110] / [i915#716])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl6/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl2/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl6/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-apl1/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/shard-apl1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#150]: https://gitlab.freedesktop.org/drm/intel/issues/150
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8717 -> Patchwork_18118

  CI-20190529: 20190529
  CI_DRM_8717: 6e5ac4c72af4e86138f04cc2dd089b069bad873f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5728: 6988eebf78e9ce9746b8c2b7d21cb4174d6623a9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18118: 1d9832d7f11e5ca091a056bb447f27767a10e494 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18118/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
