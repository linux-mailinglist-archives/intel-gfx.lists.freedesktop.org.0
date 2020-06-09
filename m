Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6E61F4A32
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2020 01:56:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB9D16E357;
	Tue,  9 Jun 2020 23:56:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AB6896E357;
 Tue,  9 Jun 2020 23:56:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9B863A47E8;
 Tue,  9 Jun 2020 23:56:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 09 Jun 2020 23:56:12 -0000
Message-ID: <159174697260.17060.16481357416186052848@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200609220616.6015-1-imre.deak@intel.com>
In-Reply-To: <20200609220616.6015-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/icl=3A_Disable_DIP_on_MST_ports_with_the_transcoder_clock?=
 =?utf-8?q?_still_on?=
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

Series: drm/i915/icl: Disable DIP on MST ports with the transcoder clock still on
URL   : https://patchwork.freedesktop.org/series/78172/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8604_full -> Patchwork_17917_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17917_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_create@madvise:
    - shard-glk:          [PASS][1] -> [DMESG-WARN][2] ([i915#118] / [i915#95])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-glk6/igt@gem_exec_create@madvise.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-glk4/igt@gem_exec_create@madvise.html

  * igt@gem_exec_whisper@basic-normal:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#93] / [i915#95]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl4/igt@gem_exec_whisper@basic-normal.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-kbl3/igt@gem_exec_whisper@basic-normal.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [PASS][5] -> [DMESG-FAIL][6] ([i915#118] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-glk2/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:
    - shard-kbl:          [PASS][7] -> [DMESG-FAIL][8] ([i915#54] / [i915#95]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#54])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
    - shard-kbl:          [PASS][11] -> [DMESG-FAIL][12] ([i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-kbl4/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled:
    - shard-skl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982]) +7 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-skl10/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl2/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-apl4/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#1928])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-wc:
    - shard-tglb:         [PASS][19] -> [DMESG-WARN][20] ([i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-wc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#1188])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl2/igt@kms_hdr@bpc-switch.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-skl1/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] / [i915#265]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109642] / [fdo#111068])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-iclb7/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-iclb6/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#31])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl8/igt@kms_setmode@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-skl8/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-idle-hang:
    - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#1982])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-idle-hang.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation-idle-hang.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +6 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [PASS][35] -> [FAIL][36] ([i915#1542])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-iclb8/igt@perf@blocking-parameterized.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-iclb7/igt@perf@blocking-parameterized.html

  * igt@syncobj_wait@invalid-wait-illegal-handle:
    - shard-apl:          [PASS][37] -> [DMESG-WARN][38] ([i915#95]) +17 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl1/igt@syncobj_wait@invalid-wait-illegal-handle.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-apl8/igt@syncobj_wait@invalid-wait-illegal-handle.html

  
#### Possible fixes ####

  * igt@drm_read@short-buffer-block:
    - shard-kbl:          [DMESG-WARN][39] ([i915#93] / [i915#95]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl4/igt@drm_read@short-buffer-block.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-kbl3/igt@drm_read@short-buffer-block.html

  * igt@gem_ctx_shared@q-independent@bcs0:
    - shard-apl:          [FAIL][41] ([i915#2013]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl2/igt@gem_ctx_shared@q-independent@bcs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-apl2/igt@gem_ctx_shared@q-independent@bcs0.html

  * igt@gem_workarounds@suspend-resume:
    - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl7/igt@gem_workarounds@suspend-resume.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-kbl4/igt@gem_workarounds@suspend-resume.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][45] ([i915#118] / [i915#95]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-glk7/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - shard-glk:          [DMESG-WARN][47] ([i915#1982]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-glk9/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-glk4/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [DMESG-WARN][49] ([i915#1982]) -> [PASS][50] +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl7/igt@kms_color@pipe-a-ctm-0-5.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-skl6/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-apl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-skl:          [INCOMPLETE][53] ([i915#198]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl8/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-skl4/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-kbl:          [DMESG-WARN][55] ([i915#1982]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl4/igt@kms_flip_tiling@flip-changes-tiling.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-kbl3/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-tglb:         [DMESG-WARN][57] ([i915#1982]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][59] ([fdo#108145] / [i915#265]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][61] ([fdo#109441]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@sw_sync@sync_merge_same:
    - shard-apl:          [DMESG-WARN][63] ([i915#95]) -> [PASS][64] +17 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl4/igt@sw_sync@sync_merge_same.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-apl3/igt@sw_sync@sync_merge_same.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-apl:          [INCOMPLETE][65] ([i915#1635] / [i915#1958]) -> [TIMEOUT][66] ([i915#1635])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl7/igt@gem_exec_reloc@basic-concurrent16.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-apl1/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][67] ([i915#588]) -> [SKIP][68] ([i915#658])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [FAIL][69] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][70] ([i915#1319] / [i915#1635])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl1/igt@kms_content_protection@atomic.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-apl3/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [TIMEOUT][71] ([i915#1319] / [i915#1635]) -> [FAIL][72] ([fdo#110321] / [fdo#110336])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl4/igt@kms_content_protection@legacy.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-apl4/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic:
    - shard-kbl:          [TIMEOUT][73] ([i915#1319]) -> [TIMEOUT][74] ([i915#1319] / [i915#1958])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl7/igt@kms_content_protection@lic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-kbl4/igt@kms_content_protection@lic.html

  * igt@kms_draw_crc@fill-fb:
    - shard-apl:          [DMESG-WARN][75] ([i915#95]) -> [DMESG-FAIL][76] ([i915#95])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl7/igt@kms_draw_crc@fill-fb.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-apl8/igt@kms_draw_crc@fill-fb.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-kbl:          [FAIL][77] ([i915#64]) -> [DMESG-FAIL][78] ([i915#95])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl6/igt@kms_fbcon_fbt@fbc.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-kbl2/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [DMESG-FAIL][79] ([fdo#108145] / [i915#1982]) -> [DMESG-WARN][80] ([i915#1982])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2013]: https://gitlab.freedesktop.org/drm/intel/issues/2013
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#64]: https://gitlab.freedesktop.org/drm/intel/issues/64
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8604 -> Patchwork_17917

  CI-20190529: 20190529
  CI_DRM_8604: 24c6364ec0e3c895ec4237d7a8f3516316a761ff @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5700: 88e379cef970db3dab020966d5dd117de7cc03ab @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17917: 28cda6a9ac5e59753727007e79807876b33d43ac @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17917/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
