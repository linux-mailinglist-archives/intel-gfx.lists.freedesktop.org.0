Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D57204315
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 23:58:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F8396E1D3;
	Mon, 22 Jun 2020 21:58:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 296036E1D3;
 Mon, 22 Jun 2020 21:58:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 22EBEA47E1;
 Mon, 22 Jun 2020 21:58:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uma Shankar" <uma.shankar@intel.com>
Date: Mon, 22 Jun 2020 21:58:49 -0000
Message-ID: <159286312911.9208.1723250140234651221@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200622200038.14034-1-uma.shankar@intel.com>
In-Reply-To: <20200622200038.14034-1-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRW5h?=
 =?utf-8?q?ble_HDR_on_MCA_LSPCON_based_Gen9_devices_=28rev5=29?=
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

Series: Enable HDR on MCA LSPCON based Gen9 devices (rev5)
URL   : https://patchwork.freedesktop.org/series/68081/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8651_full -> Patchwork_18005_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18005_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18005_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18005_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-kbl:          NOTRUN -> ([FAIL][1], [FAIL][2], [FAIL][3], [FAIL][4]) ([i915#1611] / [i915#602])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-kbl4/igt@runner@aborted.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-kbl3/igt@runner@aborted.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-kbl6/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-kbl6/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_18005_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_sseu@engines:
    - shard-iclb:         [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-iclb2/igt@gem_ctx_sseu@engines.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-iclb2/igt@gem_ctx_sseu@engines.html

  * igt@gem_exec_fence@parallel@vcs0:
    - shard-glk:          [PASS][7] -> [DMESG-WARN][8] ([i915#118] / [i915#95]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-glk9/igt@gem_exec_fence@parallel@vcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-glk4/igt@gem_exec_fence@parallel@vcs0.html

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [PASS][9] -> [INCOMPLETE][10] ([i915#180] / [i915#1959])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-kbl1/igt@gem_softpin@noreloc-s3.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-kbl6/igt@gem_softpin@noreloc-s3.html

  * igt@gem_tiled_fence_blits@basic:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#93] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-kbl3/igt@gem_tiled_fence_blits@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-kbl3/igt@gem_tiled_fence_blits@basic.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-kbl4/igt@i915_suspend@forcewake.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-kbl3/igt@i915_suspend@forcewake.html

  * igt@i915_suspend@sysfs-reader:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#69])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-skl8/igt@i915_suspend@sysfs-reader.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-skl1/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-glk:          [PASS][17] -> [DMESG-FAIL][18] ([i915#118] / [i915#95])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-glk2/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-skl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +12 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-skl4/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-skl6/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#54])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html

  * igt@kms_cursor_legacy@pipe-b-torture-move:
    - shard-tglb:         [PASS][23] -> [DMESG-WARN][24] ([i915#128])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-tglb3/igt@kms_cursor_legacy@pipe-b-torture-move.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-tglb3/igt@kms_cursor_legacy@pipe-b-torture-move.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled:
    - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#1635] / [i915#95]) +14 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-apl3/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-apl6/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#1982])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-apl4/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-apl6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#1982])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#49])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-glk2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#1188])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145] / [i915#265]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109642] / [fdo#111068])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-iclb8/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [PASS][41] -> [INCOMPLETE][42] ([i915#155] / [i915#180] / [i915#794])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-kbl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-kbl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-tglb:         [PASS][43] -> [DMESG-WARN][44] ([i915#402])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-tglb2/igt@sw_sync@sync_multi_producer_single_consumer.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-tglb6/igt@sw_sync@sync_multi_producer_single_consumer.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@replace@bcs0:
    - shard-skl:          [FAIL][45] -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-skl8/igt@gem_ctx_persistence@replace@bcs0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-skl1/igt@gem_ctx_persistence@replace@bcs0.html

  * igt@gem_exec_whisper@basic-fds:
    - shard-glk:          [DMESG-WARN][47] ([i915#118] / [i915#95]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-glk4/igt@gem_exec_whisper@basic-fds.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-glk6/igt@gem_exec_whisper@basic-fds.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [INCOMPLETE][49] ([i915#636] / [i915#69]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-skl1/igt@i915_suspend@forcewake.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-skl8/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][51] ([i915#118] / [i915#95]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-glk9/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [DMESG-WARN][53] ([i915#1982]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-skl3/igt@kms_color@pipe-a-ctm-0-5.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-skl10/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge:
    - shard-glk:          [DMESG-WARN][55] ([i915#1982]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-glk2/igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-glk1/igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge.html

  * igt@kms_flip@2x-nonexisting-fb-interruptible@ab-vga1-hdmi-a1:
    - shard-hsw:          [DMESG-WARN][57] ([i915#1982]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-hsw6/igt@kms_flip@2x-nonexisting-fb-interruptible@ab-vga1-hdmi-a1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-hsw4/igt@kms_flip@2x-nonexisting-fb-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-snb:          [SKIP][59] ([fdo#109271]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-snb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][61] ([i915#1188]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-skl10/igt@kms_hdr@bpc-switch.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-skl5/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-x:
    - shard-tglb:         [DMESG-WARN][63] ([i915#402]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-tglb7/igt@kms_plane_multiple@atomic-pipe-a-tiling-x.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-tglb2/igt@kms_plane_multiple@atomic-pipe-a-tiling-x.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-iclb8/igt@kms_psr@psr2_no_drrs.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +6 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf@invalid-oa-metric-set-id:
    - shard-apl:          [DMESG-WARN][69] ([i915#1635] / [i915#95]) -> [PASS][70] +18 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-apl3/igt@perf@invalid-oa-metric-set-id.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-apl6/igt@perf@invalid-oa-metric-set-id.html

  
#### Warnings ####

  * igt@gem_ctx_persistence@engines-hang@rcs0:
    - shard-apl:          [SKIP][71] ([fdo#109271]) -> [SKIP][72] ([fdo#109271] / [i915#1635]) +6 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-apl2/igt@gem_ctx_persistence@engines-hang@rcs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-apl8/igt@gem_ctx_persistence@engines-hang@rcs0.html

  * igt@gem_userptr_blits@process-exit-mmap@gtt:
    - shard-apl:          [SKIP][73] ([fdo#109271] / [i915#1635] / [i915#1699]) -> [SKIP][74] ([fdo#109271] / [i915#1699])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-apl6/igt@gem_userptr_blits@process-exit-mmap@gtt.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-apl3/igt@gem_userptr_blits@process-exit-mmap@gtt.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][75] ([i915#588]) -> [SKIP][76] ([i915#658])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][77] ([i915#468]) -> [FAIL][78] ([i915#454])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-tglb7/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_chamelium@dp-edid-read:
    - shard-apl:          [SKIP][79] ([fdo#109271] / [fdo#111827] / [i915#1635]) -> [SKIP][80] ([fdo#109271] / [fdo#111827])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-apl3/igt@kms_chamelium@dp-edid-read.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-apl6/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_flip_tiling@flip-changes-tiling-yf:
    - shard-apl:          [DMESG-WARN][81] ([i915#1635] / [i915#95]) -> [DMESG-FAIL][82] ([i915#1635] / [i915#95])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-apl4/igt@kms_flip_tiling@flip-changes-tiling-yf.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-apl6/igt@kms_flip_tiling@flip-changes-tiling-yf.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][83] ([i915#180]) -> [INCOMPLETE][84] ([i915#155] / [i915#180] / [i915#648])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-apl:          [FAIL][85] ([i915#265]) -> [DMESG-FAIL][86] ([i915#1635] / [i915#95])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@prime_nv_pcopy@test2:
    - shard-apl:          [SKIP][87] ([fdo#109271] / [i915#1635]) -> [SKIP][88] ([fdo#109271]) +7 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-apl6/igt@prime_nv_pcopy@test2.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/shard-apl2/igt@prime_nv_pcopy@test2.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1611]: https://gitlab.freedesktop.org/drm/intel/issues/1611
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1699]: https://gitlab.freedesktop.org/drm/intel/issues/1699
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1959]: https://gitlab.freedesktop.org/drm/intel/issues/1959
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#602]: https://gitlab.freedesktop.org/drm/intel/issues/602
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8651 -> Patchwork_18005

  CI-20190529: 20190529
  CI_DRM_8651: f6210d1dd268f9e09e10d3704c768d7679a44f48 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5715: 3b6975c0f9e429c0c1f48c61a3417be9d68300cf @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18005: 8693e9476eed01a45a08352a3d4287d989ec4507 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18005/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
