Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C73219460
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 01:37:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DAEE6E974;
	Wed,  8 Jul 2020 23:37:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 401256E971;
 Wed,  8 Jul 2020 23:37:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 39CB8A0019;
 Wed,  8 Jul 2020 23:37:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 08 Jul 2020 23:37:53 -0000
Message-ID: <159425147321.3839.13132678718326619313@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200708173748.32734-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200708173748.32734-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/4=5D_drm/i915/gem=3A_Unpin_idle_con?=
 =?utf-8?q?texts_from_kswapd_reclaim?=
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

Series: series starting with [CI,1/4] drm/i915/gem: Unpin idle contexts from kswapd reclaim
URL   : https://patchwork.freedesktop.org/series/79260/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8715_full -> Patchwork_18114_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18114_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_addfb_basic@size-max:
    - shard-skl:          [PASS][1] -> [DMESG-WARN][2] ([i915#1982]) +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl6/igt@kms_addfb_basic@size-max.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-skl7/igt@kms_addfb_basic@size-max.html

  * igt@kms_addfb_basic@unused-pitches:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#1635] / [i915#95]) +14 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl2/igt@kms_addfb_basic@unused-pitches.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-apl4/igt@kms_addfb_basic@unused-pitches.html

  * igt@kms_big_fb@linear-16bpp-rotate-0:
    - shard-kbl:          [PASS][5] -> [DMESG-FAIL][6] ([i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl3/igt@kms_big_fb@linear-16bpp-rotate-0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-kbl6/igt@kms_big_fb@linear-16bpp-rotate-0.html
    - shard-apl:          [PASS][7] -> [DMESG-FAIL][8] ([i915#1635] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl7/igt@kms_big_fb@linear-16bpp-rotate-0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-apl3/igt@kms_big_fb@linear-16bpp-rotate-0.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-glk:          [PASS][9] -> [DMESG-FAIL][10] ([i915#118] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-glk1/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#93] / [i915#95]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement.html

  * igt@kms_cursor_legacy@pipe-a-forked-move:
    - shard-glk:          [PASS][13] -> [DMESG-WARN][14] ([i915#118] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-glk1/igt@kms_cursor_legacy@pipe-a-forked-move.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-glk8/igt@kms_cursor_legacy@pipe-a-forked-move.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
    - shard-glk:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-glk9/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-glk9/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +5 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][21] -> [DMESG-WARN][22] ([i915#1982]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] / [i915#265])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-iclb6/igt@kms_psr@psr2_sprite_render.html

  
#### Possible fixes ####

  * igt@drm_read@short-buffer-wakeup:
    - shard-skl:          [DMESG-WARN][27] ([i915#1982]) -> [PASS][28] +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl5/igt@drm_read@short-buffer-wakeup.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-skl7/igt@drm_read@short-buffer-wakeup.html

  * igt@gem_exec_balancer@bonded-early:
    - shard-iclb:         [FAIL][29] ([i915#926]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-iclb1/igt@gem_exec_balancer@bonded-early.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-iclb6/igt@gem_exec_balancer@bonded-early.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [FAIL][31] ([i915#1930]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-glk8/igt@gem_exec_reloc@basic-concurrent0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-glk9/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_reloc@basic-wc-read-active:
    - shard-kbl:          [DMESG-WARN][33] ([i915#93] / [i915#95]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl4/igt@gem_exec_reloc@basic-wc-read-active.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-kbl1/igt@gem_exec_reloc@basic-wc-read-active.html

  * igt@gem_exec_whisper@basic-normal:
    - shard-glk:          [DMESG-WARN][35] ([i915#118] / [i915#95]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-glk9/igt@gem_exec_whisper@basic-normal.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-glk6/igt@gem_exec_whisper@basic-normal.html

  * igt@gem_media_fill:
    - shard-apl:          [DMESG-WARN][37] ([i915#1635] / [i915#95]) -> [PASS][38] +15 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl6/igt@gem_media_fill.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-apl8/igt@gem_media_fill.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglb:         [DMESG-WARN][39] ([i915#402]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-tglb5/igt@i915_module_load@reload-with-fault-injection.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-tglb1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [INCOMPLETE][41] ([i915#636] / [i915#69]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl3/igt@i915_suspend@forcewake.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-skl4/igt@i915_suspend@forcewake.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
    - shard-skl:          [INCOMPLETE][43] ([i915#198]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-skl8/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-kbl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +5 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:
    - shard-tglb:         [DMESG-WARN][47] ([i915#1982]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-skl:          [FAIL][49] ([i915#49]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][51] ([i915#1188]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl7/igt@kms_hdr@bpc-switch.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-skl1/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][53] ([fdo#108145] / [i915#265]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][55] ([fdo#109642] / [fdo#111068]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-iclb6/igt@kms_psr2_su@page_flip.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_primary_render:
    - shard-iclb:         [SKIP][57] ([fdo#109441]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-iclb3/igt@kms_psr@psr2_primary_render.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-iclb2/igt@kms_psr@psr2_primary_render.html

  * igt@kms_pwrite_crc:
    - shard-skl:          [FAIL][59] ([i915#150]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl5/igt@kms_pwrite_crc.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-skl2/igt@kms_pwrite_crc.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-apl:          [INCOMPLETE][61] ([i915#1635] / [i915#1958]) -> [TIMEOUT][62] ([i915#1635] / [i915#1958] / [i915#2119])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl3/igt@gem_exec_reloc@basic-concurrent16.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-apl1/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@kms_chamelium@dp-crc-fast:
    - shard-apl:          [SKIP][63] ([fdo#109271] / [fdo#111827]) -> [SKIP][64] ([fdo#109271] / [fdo#111827] / [i915#1635])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl2/igt@kms_chamelium@dp-crc-fast.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-apl4/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - shard-apl:          [SKIP][65] ([fdo#109271] / [fdo#111827] / [i915#1635]) -> [SKIP][66] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl1/igt@kms_chamelium@hdmi-crc-fast.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-apl2/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_cursor_crc@pipe-d-cursor-alpha-transparent:
    - shard-apl:          [SKIP][67] ([fdo#109271] / [i915#1635]) -> [SKIP][68] ([fdo#109271])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl1/igt@kms_cursor_crc@pipe-d-cursor-alpha-transparent.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-apl2/igt@kms_cursor_crc@pipe-d-cursor-alpha-transparent.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][69] ([i915#93] / [i915#95]) -> [DMESG-WARN][70] ([i915#180] / [i915#93] / [i915#95])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_cursor@pipe-d-viewport-size-128:
    - shard-apl:          [SKIP][71] ([fdo#109271]) -> [SKIP][72] ([fdo#109271] / [i915#1635]) +5 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl3/igt@kms_plane_cursor@pipe-d-viewport-size-128.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-apl1/igt@kms_plane_cursor@pipe-d-viewport-size-128.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][73], [FAIL][74], [FAIL][75]) ([i915#1610] / [i915#1635] / [i915#2110]) -> [FAIL][76] ([i915#1635] / [i915#2110])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl1/igt@runner@aborted.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl3/igt@runner@aborted.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl2/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/shard-apl7/igt@runner@aborted.html

  
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
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#926]: https://gitlab.freedesktop.org/drm/intel/issues/926
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8715 -> Patchwork_18114

  CI-20190529: 20190529
  CI_DRM_8715: 76c2d43437601608d75f61a9eb6cf3a7aae5e02b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5728: 6988eebf78e9ce9746b8c2b7d21cb4174d6623a9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18114: 7ada5714cd874eb927b1e8f4f50ed5bfe439b971 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18114/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
