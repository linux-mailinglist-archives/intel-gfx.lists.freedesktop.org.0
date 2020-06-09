Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E88B71F4871
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jun 2020 22:58:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56C496E342;
	Tue,  9 Jun 2020 20:58:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0B62289948;
 Tue,  9 Jun 2020 20:58:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D80B7A47EB;
 Tue,  9 Jun 2020 20:58:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 09 Jun 2020 20:58:41 -0000
Message-ID: <159173632185.17060.7305715607581242818@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200608181023.11503-1-imre.deak@intel.com>
In-Reply-To: <20200608181023.11503-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_the_i915=5Fdsc=5Ffec=5Fsupport_debugfs_file_for_DP?=
 =?utf-8?q?_MST_connectors_=28rev3=29?=
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

Series: drm/i915: Fix the i915_dsc_fec_support debugfs file for DP MST connectors (rev3)
URL   : https://patchwork.freedesktop.org/series/78128/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8604_full -> Patchwork_17916_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17916_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_shared@q-independent@bcs0:
    - shard-kbl:          [PASS][1] -> [FAIL][2] ([i915#2013])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl6/igt@gem_ctx_shared@q-independent@bcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-kbl1/igt@gem_ctx_shared@q-independent@bcs0.html

  * igt@gem_exec_create@forked:
    - shard-hsw:          [PASS][3] -> [INCOMPLETE][4] ([i915#61])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-hsw7/igt@gem_exec_create@forked.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-hsw2/igt@gem_exec_create@forked.html

  * igt@gem_exec_schedule@implicit-read-write@rcs0:
    - shard-snb:          [PASS][5] -> [INCOMPLETE][6] ([i915#82])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-snb4/igt@gem_exec_schedule@implicit-read-write@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-snb6/igt@gem_exec_schedule@implicit-read-write@rcs0.html

  * igt@gem_exec_whisper@basic-forked-all:
    - shard-glk:          [PASS][7] -> [DMESG-WARN][8] ([i915#118] / [i915#95]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-glk8/igt@gem_exec_whisper@basic-forked-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-glk4/igt@gem_exec_whisper@basic-forked-all.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl7/igt@gem_workarounds@suspend-resume-context.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-apl4/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglb:         [PASS][11] -> [DMESG-WARN][12] ([i915#402]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-tglb6/igt@i915_module_load@reload-with-fault-injection.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-tglb5/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rps@reset:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#39])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl10/igt@i915_pm_rps@reset.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-skl5/igt@i915_pm_rps@reset.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [PASS][15] -> [DMESG-FAIL][16] ([i915#118] / [i915#95]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-glk2/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl3/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-kbl1/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:
    - shard-kbl:          [PASS][19] -> [DMESG-FAIL][20] ([i915#54] / [i915#95]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#54]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
    - shard-kbl:          [PASS][25] -> [DMESG-FAIL][26] ([i915#95])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-kbl4/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([IGT#5])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@pipe-c-torture-move:
    - shard-iclb:         [PASS][29] -> [DMESG-WARN][30] ([i915#128])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-iclb4/igt@kms_cursor_legacy@pipe-c-torture-move.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-iclb4/igt@kms_cursor_legacy@pipe-c-torture-move.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled:
    - shard-kbl:          [PASS][31] -> [DMESG-WARN][32] ([i915#93] / [i915#95]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl4/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-kbl6/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled:
    - shard-skl:          [PASS][33] -> [DMESG-WARN][34] ([i915#1982]) +10 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-skl10/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-iclb:         [PASS][35] -> [INCOMPLETE][36] ([i915#1185])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-iclb5/igt@kms_fbcon_fbt@psr-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-iclb3/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-tglb:         [PASS][37] -> [DMESG-WARN][38] ([i915#1982])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#1188])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl2/igt@kms_hdr@bpc-switch.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-skl1/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([fdo#108145] / [i915#265]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109642] / [fdo#111068])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-iclb4/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109441]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-iclb4/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([i915#31])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl8/igt@kms_setmode@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-skl2/igt@kms_setmode@basic.html

  * igt@perf_pmu@module-unload:
    - shard-iclb:         [PASS][49] -> [DMESG-WARN][50] ([i915#1982])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-iclb8/igt@perf_pmu@module-unload.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-iclb3/igt@perf_pmu@module-unload.html

  * igt@syncobj_wait@invalid-wait-illegal-handle:
    - shard-apl:          [PASS][51] -> [DMESG-WARN][52] ([i915#95]) +25 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl1/igt@syncobj_wait@invalid-wait-illegal-handle.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-apl8/igt@syncobj_wait@invalid-wait-illegal-handle.html

  
#### Possible fixes ####

  * igt@gem_ctx_shared@q-independent@bcs0:
    - shard-apl:          [FAIL][53] ([i915#2013]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl2/igt@gem_ctx_shared@q-independent@bcs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-apl1/igt@gem_ctx_shared@q-independent@bcs0.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [DMESG-WARN][55] ([i915#93] / [i915#95]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl4/igt@gem_exec_suspend@basic-s3.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-kbl2/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][57] ([i915#118] / [i915#95]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-glk4/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-apl:          [DMESG-WARN][59] ([i915#1982]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl6/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-apl1/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [DMESG-WARN][61] ([i915#1982]) -> [PASS][62] +5 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl7/igt@kms_color@pipe-a-ctm-0-5.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-skl8/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-apl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-skl:          [INCOMPLETE][65] ([i915#198]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl8/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-skl5/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +5 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-kbl:          [DMESG-WARN][69] ([i915#1982]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl4/igt@kms_flip_tiling@flip-changes-tiling.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-kbl2/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
    - shard-skl:          [FAIL][71] ([i915#49]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][73] ([i915#1188]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c-frame-sequence:
    - shard-skl:          [FAIL][75] ([i915#53]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl6/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c-frame-sequence.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-skl3/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][77] ([fdo#108145] / [i915#265]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [DMESG-FAIL][79] ([fdo#108145] / [i915#1982]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][81] ([fdo#109441]) -> [PASS][82] +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][83] ([i915#31]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl4/igt@kms_setmode@basic.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-kbl6/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-query-busy-hang:
    - shard-tglb:         [DMESG-WARN][85] ([i915#402]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-tglb1/igt@kms_vblank@pipe-c-query-busy-hang.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-tglb7/igt@kms_vblank@pipe-c-query-busy-hang.html

  * igt@sw_sync@sync_merge_same:
    - shard-apl:          [DMESG-WARN][87] ([i915#95]) -> [PASS][88] +19 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl4/igt@sw_sync@sync_merge_same.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-apl8/igt@sw_sync@sync_merge_same.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][89] ([i915#588]) -> [SKIP][90] ([i915#658])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][91] ([i915#454]) -> [SKIP][92] ([i915#468])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [FAIL][93] ([i915#454]) -> [DMESG-FAIL][94] ([i915#1982])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-skl4/igt@i915_pm_dc@dc6-psr.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-skl9/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [FAIL][95] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][96] ([i915#1319] / [i915#1635])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl1/igt@kms_content_protection@atomic.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-apl8/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][97] ([i915#1319]) -> [TIMEOUT][98] ([i915#1319] / [i915#1635])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl3/igt@kms_content_protection@atomic-dpms.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-apl6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [TIMEOUT][99] ([i915#1319] / [i915#1635]) -> [FAIL][100] ([fdo#110321] / [fdo#110336])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl4/igt@kms_content_protection@legacy.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-apl4/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][101] ([i915#1319] / [i915#1635]) -> [TIMEOUT][102] ([i915#1319]) +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl2/igt@kms_content_protection@lic.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-apl7/igt@kms_content_protection@lic.html

  * igt@kms_draw_crc@fill-fb:
    - shard-apl:          [DMESG-WARN][103] ([i915#95]) -> [DMESG-FAIL][104] ([i915#95])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-apl7/igt@kms_draw_crc@fill-fb.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-apl2/igt@kms_draw_crc@fill-fb.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-kbl:          [FAIL][105] ([i915#64]) -> [DMESG-FAIL][106] ([i915#95])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8604/shard-kbl6/igt@kms_fbcon_fbt@fbc.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/shard-kbl1/igt@kms_fbcon_fbt@fbc.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2013]: https://gitlab.freedesktop.org/drm/intel/issues/2013
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#64]: https://gitlab.freedesktop.org/drm/intel/issues/64
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8604 -> Patchwork_17916

  CI-20190529: 20190529
  CI_DRM_8604: 24c6364ec0e3c895ec4237d7a8f3516316a761ff @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5700: 88e379cef970db3dab020966d5dd117de7cc03ab @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17916: b4af214db886283d6bc416bb70d95623c8c47ff6 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17916/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
