Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 471311EF0F3
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 07:47:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BFA66E05F;
	Fri,  5 Jun 2020 05:47:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 424816E05F;
 Fri,  5 Jun 2020 05:47:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3B585A00E6;
 Fri,  5 Jun 2020 05:47:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 05 Jun 2020 05:47:31 -0000
Message-ID: <159133605121.18506.15481920089383679882@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200604235321.3190817-1-matthew.d.roper@intel.com>
In-Reply-To: <20200604235321.3190817-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/rkl=3A_Program_BW=5FBUDDY0?=
 =?utf-8?q?_registers_instead_of_BW=5FBUDDY1/2?=
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

Series: series starting with [1/2] drm/i915/rkl: Program BW_BUDDY0 registers instead of BW_BUDDY1/2
URL   : https://patchwork.freedesktop.org/series/78018/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8588_full -> Patchwork_17879_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17879_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_param@basic:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#95]) +18 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-apl3/igt@gem_ctx_param@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-apl7/igt@gem_ctx_param@basic.html

  * igt@gem_exec_params@control:
    - shard-tglb:         [PASS][3] -> [DMESG-WARN][4] ([i915#402])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-tglb2/igt@gem_exec_params@control.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-tglb1/igt@gem_exec_params@control.html

  * igt@gem_exec_whisper@basic-contexts-priority:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#118] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-glk9/igt@gem_exec_whisper@basic-contexts-priority.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-glk2/igt@gem_exec_whisper@basic-contexts-priority.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [PASS][7] -> [INCOMPLETE][8] ([i915#155])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-kbl6/igt@i915_suspend@debugfs-reader.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-kbl1/igt@i915_suspend@debugfs-reader.html

  * igt@i915_suspend@forcewake:
    - shard-glk:          [PASS][9] -> [INCOMPLETE][10] ([i915#58] / [k.org#198133])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-glk4/igt@i915_suspend@forcewake.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-glk6/igt@i915_suspend@forcewake.html
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#636] / [i915#69])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-skl1/igt@i915_suspend@forcewake.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-skl5/igt@i915_suspend@forcewake.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-apl8/igt@i915_suspend@sysfs-reader.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-apl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-apl2/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-apl1/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982]) +6 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-skl10/igt@kms_color@pipe-c-ctm-0-25.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-skl10/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_color@pipe-d-ctm-0-5:
    - shard-tglb:         [PASS][19] -> [DMESG-WARN][20] ([i915#1149] / [i915#402])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-tglb1/igt@kms_color@pipe-d-ctm-0-5.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-tglb2/igt@kms_color@pipe-d-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#54])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +8 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-snb:          [PASS][25] -> [SKIP][26] ([fdo#109271]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-snb2/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-snb1/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_cursor_legacy@all-pipes-torture-move:
    - shard-skl:          [PASS][27] -> [DMESG-WARN][28] ([i915#128])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-skl1/igt@kms_cursor_legacy@all-pipes-torture-move.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-skl7/igt@kms_cursor_legacy@all-pipes-torture-move.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][29] -> [DMESG-FAIL][30] ([i915#1982])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-kbl:          [PASS][31] -> [DMESG-WARN][32] ([i915#93] / [i915#95])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#49])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145] / [i915#265])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][39] -> [FAIL][40] ([i915#31])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-kbl1/igt@kms_setmode@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-kbl7/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [DMESG-WARN][41] ([i915#118] / [i915#95]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-glk4/igt@gem_exec_whisper@basic-queues-forked-all.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-glk8/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [DMESG-WARN][43] ([i915#1436] / [i915#716]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-kbl6/igt@gen9_exec_parse@allowed-all.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-kbl2/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][45] ([i915#454]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-iclb5/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][47] ([i915#118] / [i915#95]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-glk7/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * igt@kms_color@pipe-c-ctm-red-to-blue:
    - shard-kbl:          [DMESG-WARN][49] ([i915#93] / [i915#95]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-kbl4/igt@kms_color@pipe-c-ctm-red-to-blue.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-kbl3/igt@kms_color@pipe-c-ctm-red-to-blue.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen:
    - shard-apl:          [DMESG-WARN][51] ([i915#95]) -> [PASS][52] +14 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled:
    - shard-apl:          [DMESG-WARN][53] ([i915#1982]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-apl8/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-apl6/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1}:
    - shard-glk:          [FAIL][55] ([i915#79]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][57] ([i915#1188]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][61] ([fdo#108145] / [i915#265]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_scaling@pipe-c-plane-scaling:
    - shard-skl:          [DMESG-WARN][63] ([i915#1982]) -> [PASS][64] +4 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-skl2/igt@kms_plane_scaling@pipe-c-plane-scaling.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-skl3/igt@kms_plane_scaling@pipe-c-plane-scaling.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][65] ([fdo#109642] / [fdo#111068]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-iclb3/igt@kms_psr2_su@page_flip.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][67] ([fdo#109441]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-c:
    - shard-tglb:         [DMESG-WARN][69] ([i915#1982]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-tglb1/igt@kms_universal_plane@universal-plane-gen9-features-pipe-c.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-tglb2/igt@kms_universal_plane@universal-plane-gen9-features-pipe-c.html

  * igt@perf_pmu@other-init-1:
    - shard-iclb:         [DMESG-WARN][71] ([i915#1982]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-iclb7/igt@perf_pmu@other-init-1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-iclb4/igt@perf_pmu@other-init-1.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-snb:          [SKIP][73] ([fdo#109271]) -> [INCOMPLETE][74] ([i915#82])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-snb6/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-snb6/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [FAIL][75] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][76] ([i915#1319] / [i915#1635])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-apl1/igt@kms_content_protection@atomic.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-apl7/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [DMESG-FAIL][77] ([fdo#110321] / [i915#95]) -> [TIMEOUT][78] ([i915#1319] / [i915#1635])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-apl2/igt@kms_content_protection@lic.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-apl3/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [TIMEOUT][79] ([i915#1319] / [i915#1635]) -> [DMESG-FAIL][80] ([fdo#110321] / [i915#95])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-apl3/igt@kms_content_protection@srm.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-apl4/igt@kms_content_protection@srm.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][81] ([i915#180] / [i915#93] / [i915#95]) -> [DMESG-WARN][82] ([i915#93] / [i915#95])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8588 -> Patchwork_17879

  CI-20190529: 20190529
  CI_DRM_8588: 294330ea49d6c0763514747ebc994f0b29a5afbe @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5695: 53e8c878a6fb5708e63c99403691e8960b86ea9c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17879: 2b4ef2a8b8d4062203cb55a06187f02ff458b6f9 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17879/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
