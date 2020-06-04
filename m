Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D59971EEA46
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 20:28:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C62B6E544;
	Thu,  4 Jun 2020 18:28:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1CD9B6E53E;
 Thu,  4 Jun 2020 18:28:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 15B7CA00E6;
 Thu,  4 Jun 2020 18:28:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 04 Jun 2020 18:28:01 -0000
Message-ID: <159129528105.14554.1536086890159739494@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200604153145.21068-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200604153145.21068-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Track_if_an_engine_requires_forcewake_w/a_=28rev2?=
 =?utf-8?q?=29?=
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

Series: drm/i915/gt: Track if an engine requires forcewake w/a (rev2)
URL   : https://patchwork.freedesktop.org/series/78005/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8583_full -> Patchwork_17873_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17873_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-kbl:          [PASS][1] -> [FAIL][2] ([i915#1528])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-kbl1/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-kbl3/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@gem_exec_whisper@basic-forked-all:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-glk1/igt@gem_exec_whisper@basic-forked-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-glk2/igt@gem_exec_whisper@basic-forked-all.html

  * igt@gem_tiled_pread_basic:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#95]) +18 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-apl8/igt@gem_tiled_pread_basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-apl4/igt@gem_tiled_pread_basic.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-apl2/igt@gem_workarounds@suspend-resume-context.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-apl6/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglb:         [PASS][9] -> [DMESG-WARN][10] ([i915#402])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-tglb3/igt@i915_module_load@reload-with-fault-injection.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-tglb3/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [PASS][11] -> [INCOMPLETE][12] ([i915#155])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-kbl7/igt@i915_suspend@debugfs-reader.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-kbl6/igt@i915_suspend@debugfs-reader.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-apl7/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-apl3/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
    - shard-glk:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-glk2/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-glk8/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982]) +9 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-skl3/igt@kms_color@pipe-c-ctm-0-25.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-skl8/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#54])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#49]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-skl8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#1188])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-skl1/igt@kms_hdr@bpc-switch.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-skl10/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] / [i915#265]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-iclb4/igt@kms_psr@psr2_suspend.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:
    - shard-kbl:          [PASS][31] -> [DMESG-WARN][32] ([i915#93] / [i915#95]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-kbl2/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-kbl6/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-c:
    - shard-tglb:         [PASS][33] -> [DMESG-WARN][34] ([i915#1982])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-tglb3/igt@kms_universal_plane@universal-plane-gen9-features-pipe-c.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-tglb3/igt@kms_universal_plane@universal-plane-gen9-features-pipe-c.html

  * igt@kms_vblank@pipe-b-wait-busy:
    - shard-iclb:         [PASS][35] -> [DMESG-WARN][36] ([i915#1982])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-iclb4/igt@kms_vblank@pipe-b-wait-busy.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-iclb8/igt@kms_vblank@pipe-b-wait-busy.html

  
#### Possible fixes ####

  * {igt@gem_exec_reloc@basic-concurrent0}:
    - shard-glk:          [FAIL][37] ([i915#1930]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-glk1/igt@gem_exec_reloc@basic-concurrent0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-glk7/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-kbl3/igt@gem_softpin@noreloc-s3.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-kbl1/igt@gem_softpin@noreloc-s3.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [DMESG-WARN][41] ([i915#1436] / [i915#716]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-kbl7/igt@gen9_exec_parse@allowed-all.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-kbl6/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][43] ([i915#118] / [i915#95]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-glk9/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_color@pipe-c-ctm-0-5:
    - shard-skl:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46] +5 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-skl1/igt@kms_color@pipe-c-ctm-0-5.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-skl10/igt@kms_color@pipe-c-ctm-0-5.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [INCOMPLETE][47] ([i915#1926] / [i915#61]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-hsw2/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-hsw2/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@pipe-c-torture-move:
    - shard-hsw:          [DMESG-WARN][49] ([i915#128]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-hsw7/igt@kms_cursor_legacy@pipe-c-torture-move.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-hsw2/igt@kms_cursor_legacy@pipe-c-torture-move.html

  * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size:
    - shard-apl:          [DMESG-WARN][51] ([i915#1982]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-apl8/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-apl1/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - shard-glk:          [INCOMPLETE][53] ([i915#58] / [k.org#198133]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-glk5/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  * {igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2}:
    - shard-glk:          [FAIL][55] ([i915#1928]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-glk7/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip_tiling@flip-x-tiled:
    - shard-apl:          [DMESG-WARN][59] ([i915#95]) -> [PASS][60] +22 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-apl4/igt@kms_flip_tiling@flip-x-tiled.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-apl7/igt@kms_flip_tiling@flip-x-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt:
    - shard-glk:          [INCOMPLETE][61] ([i915#1927] / [i915#58] / [k.org#198133]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-glk2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][63] ([i915#93] / [i915#95]) -> [PASS][64] +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping:
    - shard-glk:          [TIMEOUT][65] ([i915#1958]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-glk6/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-glk5/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][67] ([fdo#109642] / [fdo#111068]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-iclb1/igt@kms_psr2_su@page_flip.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-iclb6/igt@kms_psr@psr2_sprite_plane_onoff.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html

  * {igt@perf_pmu@busy-start@bcs0}:
    - shard-glk:          [DMESG-WARN][71] ([i915#118] / [i915#95]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-glk1/igt@perf_pmu@busy-start@bcs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-glk2/igt@perf_pmu@busy-start@bcs0.html

  * {igt@perf_pmu@module-unload}:
    - shard-tglb:         [DMESG-WARN][73] ([i915#402]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-tglb1/igt@perf_pmu@module-unload.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-tglb5/igt@perf_pmu@module-unload.html

  * {igt@sysfs_heartbeat_interval@mixed@vcs1}:
    - shard-iclb:         [DMESG-WARN][75] ([i915#1982]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-iclb2/igt@sysfs_heartbeat_interval@mixed@vcs1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-iclb4/igt@sysfs_heartbeat_interval@mixed@vcs1.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-snb:          [INCOMPLETE][77] ([i915#82]) -> [SKIP][78] ([fdo#109271])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-snb1/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-snb6/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_suspend@forcewake:
    - shard-apl:          [INCOMPLETE][79] -> [DMESG-WARN][80] ([i915#180])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-apl1/igt@i915_suspend@forcewake.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-apl4/igt@i915_suspend@forcewake.html

  * igt@kms_ccs@pipe-c-crc-primary-basic:
    - shard-glk:          [TIMEOUT][81] ([i915#1958]) -> [SKIP][82] ([fdo#109271])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-glk6/igt@kms_ccs@pipe-c-crc-primary-basic.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-glk5/igt@kms_ccs@pipe-c-crc-primary-basic.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [TIMEOUT][83] ([i915#1319] / [i915#1635]) -> [TIMEOUT][84] ([i915#1319])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-apl4/igt@kms_content_protection@atomic.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-apl8/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [TIMEOUT][85] ([i915#1319] / [i915#1635]) -> [FAIL][86] ([fdo#110321] / [fdo#110336])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-apl1/igt@kms_content_protection@legacy.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-apl4/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [TIMEOUT][87] ([i915#1319]) -> [DMESG-FAIL][88] ([fdo#110321] / [i915#95])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-kbl6/igt@kms_content_protection@srm.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-kbl2/igt@kms_content_protection@srm.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-glk:          [DMESG-WARN][89] ([i915#1926]) -> [DMESG-FAIL][90] ([i915#1925] / [i915#1926])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-glk2/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-glk5/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][91] ([fdo#109349]) -> [DMESG-WARN][92] ([i915#1226])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [DMESG-WARN][93] ([i915#180] / [i915#95]) -> [DMESG-WARN][94] ([i915#95])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/shard-apl2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1925]: https://gitlab.freedesktop.org/drm/intel/issues/1925
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1927]: https://gitlab.freedesktop.org/drm/intel/issues/1927
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-icl-1065g7 


Build changes
-------------

  * Linux: CI_DRM_8583 -> Patchwork_17873

  CI-20190529: 20190529
  CI_DRM_8583: e147ef9bced964b97283851a519aea132a5613e6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5695: 53e8c878a6fb5708e63c99403691e8960b86ea9c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17873: 7042716777f39a6e12bbac546bcd4dbe97048bff @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17873/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
