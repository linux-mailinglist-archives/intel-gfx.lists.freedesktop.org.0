Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 676312121B2
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 13:03:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F6076E038;
	Thu,  2 Jul 2020 11:03:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4A1CA6E0F5;
 Thu,  2 Jul 2020 11:03:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 44012A47E8;
 Thu,  2 Jul 2020 11:03:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 02 Jul 2020 11:03:25 -0000
Message-ID: <159368780524.5657.10330969497747827875@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200701235339.32608-1-lucas.demarchi@intel.com>
In-Reply-To: <20200701235339.32608-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgSW50?=
 =?utf-8?q?roduce_DG1_=28rev4=29?=
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

Series: Introduce DG1 (rev4)
URL   : https://patchwork.freedesktop.org/series/77496/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8691_full -> Patchwork_18064_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18064_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18064_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18064_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@engines-mixed@vecs0:
    - shard-skl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-skl7/igt@gem_ctx_persistence@engines-mixed@vecs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-skl3/igt@gem_ctx_persistence@engines-mixed@vecs0.html

  * igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge:
    - shard-hsw:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-hsw8/igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-hsw8/igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge.html

  
Known issues
------------

  Here are the changes found in Patchwork_18064_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd2:
    - shard-tglb:         [PASS][5] -> [FAIL][6] ([i915#1528])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-tglb1/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd2.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-tglb1/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd2.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-snb:          [PASS][7] -> [TIMEOUT][8] ([i915#1958] / [i915#2119])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-snb5/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-snb2/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_addfb_basic@addfb25-modifier-no-flag:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1635] / [i915#95]) +18 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-apl8/igt@kms_addfb_basic@addfb25-modifier-no-flag.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-apl4/igt@kms_addfb_basic@addfb25-modifier-no-flag.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#93] / [i915#95]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-kbl2/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-kbl6/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180] / [i915#93] / [i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982]) +12 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-skl10/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-skl2/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html

  * igt@kms_flip@2x-modeset-vs-vblank-race@ab-vga1-hdmi-a1:
    - shard-hsw:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-hsw7/igt@kms_flip@2x-modeset-vs-vblank-race@ab-vga1-hdmi-a1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-hsw6/igt@kms_flip@2x-modeset-vs-vblank-race@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-vga1:
    - shard-hsw:          [PASS][21] -> [FAIL][22] ([i915#79])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-hsw1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-vga1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-hsw7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-vga1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#1928])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-skl8/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-glk:          [PASS][25] -> [DMESG-WARN][26] ([i915#1982])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-glk4/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-glk6/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc:
    - shard-tglb:         [PASS][27] -> [DMESG-WARN][28] ([i915#1982]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-tglb7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-tglb2/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html

  * igt@kms_sysfs_edid_timing:
    - shard-iclb:         [PASS][29] -> [FAIL][30] ([IGT#2])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-iclb5/igt@kms_sysfs_edid_timing.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-iclb2/igt@kms_sysfs_edid_timing.html

  * igt@perf_pmu@busy-double-start@rcs0:
    - shard-snb:          [PASS][31] -> [FAIL][32] ([i915#1958]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-snb5/igt@perf_pmu@busy-double-start@rcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-snb2/igt@perf_pmu@busy-double-start@rcs0.html

  * igt@perf_pmu@busy-double-start@vcs0:
    - shard-snb:          [PASS][33] -> [INCOMPLETE][34] ([i915#2119] / [i915#82])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-snb5/igt@perf_pmu@busy-double-start@vcs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-snb2/igt@perf_pmu@busy-double-start@vcs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-kbl:          [FAIL][35] ([i915#1528]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-kbl7/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-kbl3/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@gem_ctx_persistence@hostile:
    - shard-apl:          [DMESG-WARN][37] ([i915#1635] / [i915#95]) -> [PASS][38] +19 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-apl7/igt@gem_ctx_persistence@hostile.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-apl8/igt@gem_ctx_persistence@hostile.html

  * igt@gem_eio@kms:
    - shard-kbl:          [DMESG-WARN][39] ([i915#93] / [i915#95]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-kbl2/igt@gem_eio@kms.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-kbl1/igt@gem_eio@kms.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [INCOMPLETE][41] ([i915#198] / [i915#2110]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-skl4/igt@i915_selftest@mock@requests.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-skl8/igt@i915_selftest@mock@requests.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][43] ([i915#118] / [i915#95]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-glk3/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
    - shard-apl:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-apl6/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-apl7/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html

  * igt@kms_color@pipe-a-gamma:
    - shard-skl:          [FAIL][47] ([i915#71]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-skl6/igt@kms_color@pipe-a-gamma.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-skl6/igt@kms_color@pipe-a-gamma.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [DMESG-WARN][49] ([i915#1982]) -> [PASS][50] +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-skl8/igt@kms_color@pipe-b-ctm-0-75.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-skl10/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-random:
    - shard-glk:          [DMESG-FAIL][51] ([i915#1982] / [i915#54]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-glk4/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-glk2/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:
    - shard-hsw:          [FAIL][53] ([i915#57]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-hsw2/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@pipe-a-single-bo:
    - shard-glk:          [DMESG-WARN][55] ([i915#1982]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-glk4/igt@kms_cursor_legacy@pipe-a-single-bo.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-glk2/igt@kms_cursor_legacy@pipe-a-single-bo.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled:
    - shard-glk:          [DMESG-FAIL][57] ([i915#118] / [i915#1982] / [i915#54] / [i915#95]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-glk4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-glk2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-iclb:         [INCOMPLETE][59] ([i915#1185]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-iclb2/igt@kms_fbcon_fbt@psr-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-iclb4/igt@kms_fbcon_fbt@psr-suspend.html
    - shard-skl:          [INCOMPLETE][61] ([i915#69]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-skl1/igt@kms_fbcon_fbt@psr-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-skl4/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][63] ([i915#79]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:
    - shard-iclb:         [DMESG-WARN][65] ([i915#1982]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-glk:          [DMESG-FAIL][67] ([i915#118] / [i915#1982] / [i915#49] / [i915#95]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-glk4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-glk2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack:
    - shard-tglb:         [DMESG-WARN][69] ([i915#1982]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-skl:          [FAIL][71] ([i915#49]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][73] ([i915#1188]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-iclb:         [INCOMPLETE][75] ([i915#1185] / [i915#250]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-iclb5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][77] ([fdo#108145] / [i915#265]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80] +7 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-glk:          [INCOMPLETE][81] ([i915#58] / [k.org#198133]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-glk4/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-glk2/igt@sysfs_timeslice_duration@timeout@vecs0.html
    - shard-apl:          [FAIL][83] ([i915#1732]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-apl6/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-apl3/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [FAIL][85] ([i915#1930]) -> [TIMEOUT][86] ([i915#1958] / [i915#2119])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-snb:          [SKIP][87] ([fdo#109271]) -> [INCOMPLETE][88] ([i915#82])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-snb2/igt@i915_pm_dc@dc5-dpms.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-snb4/igt@i915_pm_dc@dc5-dpms.html

  * igt@kms_content_protection@lic:
    - shard-kbl:          [TIMEOUT][89] ([i915#1319] / [i915#2119]) -> [TIMEOUT][90] ([i915#1319] / [i915#1958] / [i915#2119])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-kbl6/igt@kms_content_protection@lic.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-kbl7/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
    - shard-snb:          [SKIP][91] ([fdo#109271]) -> [TIMEOUT][92] ([i915#1958] / [i915#2119]) +3 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-snb5/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-snb2/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-apl:          [SKIP][93] ([fdo#109271]) -> [SKIP][94] ([fdo#109271] / [i915#1635]) +11 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-apl8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-apl4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-farfromfence:
    - shard-apl:          [SKIP][95] ([fdo#109271] / [i915#1635]) -> [SKIP][96] ([fdo#109271]) +2 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-apl7/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-apl8/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-skl:          [FAIL][97] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][98] ([fdo#108145] / [i915#1982])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@runner@aborted:
    - shard-hsw:          ([FAIL][99], [FAIL][100]) ([i915#2110]) -> [FAIL][101] ([i915#1436] / [i915#2110])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-hsw7/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-hsw7/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-hsw7/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][102], [FAIL][103], [FAIL][104]) ([i915#2110]) -> ([FAIL][105], [FAIL][106]) ([i915#1927] / [i915#2110])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-iclb1/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-iclb7/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/shard-iclb4/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-iclb1/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/shard-iclb7/igt@runner@aborted.html

  
  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1732]: https://gitlab.freedesktop.org/drm/intel/issues/1732
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1927]: https://gitlab.freedesktop.org/drm/intel/issues/1927
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#71]: https://gitlab.freedesktop.org/drm/intel/issues/71
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8691 -> Patchwork_18064

  CI-20190529: 20190529
  CI_DRM_8691: 65f4b41f875158ce36b3571700c0f39e8321332a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5719: 54731f017df8660f29cc8f5db0b570239729e808 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18064: 18c2a8bf107b64041778f658bacc2631ef8a9268 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
