Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A8721DF45
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2020 20:01:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7888D6E554;
	Mon, 13 Jul 2020 18:01:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2DF356E54C;
 Mon, 13 Jul 2020 18:01:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 279CEA47DA;
 Mon, 13 Jul 2020 18:01:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 13 Jul 2020 18:01:40 -0000
Message-ID: <159466330013.16739.9806179426369562230@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200713160549.17344-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200713160549.17344-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Only_swap_to_a_random_sibling_once_upon_creation?=
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

Series: drm/i915/gt: Only swap to a random sibling once upon creation
URL   : https://patchwork.freedesktop.org/series/79412/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8737_full -> Patchwork_18147_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18147_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18147_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18147_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@2x-absolute-wf_vblank@ab-vga1-hdmi-a1:
    - shard-hsw:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-hsw1/igt@kms_flip@2x-absolute-wf_vblank@ab-vga1-hdmi-a1.html

  
Known issues
------------

  Here are the changes found in Patchwork_18147_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-glk:          [PASS][2] -> [DMESG-WARN][3] ([i915#118] / [i915#95]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-glk6/igt@gem_ctx_shared@q-smoketest-all.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-glk6/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][4] -> [INCOMPLETE][5] ([i915#155])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][6] -> [DMESG-WARN][7] ([i915#1436] / [i915#1635] / [i915#716])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-apl8/igt@gen9_exec_parse@allowed-all.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-apl1/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-glk:          [PASS][8] -> [DMESG-FAIL][9] ([i915#118] / [i915#95])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-glk9/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-dpms:
    - shard-kbl:          [PASS][10] -> [DMESG-WARN][11] ([i915#93] / [i915#95]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-dpms.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [PASS][12] -> [FAIL][13] ([i915#54])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy:
    - shard-kbl:          [PASS][14] -> [DMESG-WARN][15] ([i915#1982])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-kbl3/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-kbl6/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-untiled:
    - shard-skl:          [PASS][16] -> [FAIL][17] ([i915#177] / [i915#52] / [i915#54])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-skl6/igt@kms_draw_crc@draw-method-xrgb8888-render-untiled.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-skl2/igt@kms_draw_crc@draw-method-xrgb8888-render-untiled.html

  * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible@ab-vga1-hdmi-a1:
    - shard-hsw:          [PASS][18] -> [DMESG-WARN][19] ([i915#1982])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-hsw1/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible@ab-vga1-hdmi-a1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-hsw6/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@basic-flip-vs-dpms@a-edp1:
    - shard-skl:          [PASS][20] -> [DMESG-WARN][21] ([i915#1982]) +10 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-skl8/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-skl10/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][22] -> [DMESG-WARN][23] ([i915#180]) +5 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip_tiling@flip-x-tiled:
    - shard-apl:          [PASS][24] -> [DMESG-WARN][25] ([i915#1635] / [i915#95]) +19 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-apl2/igt@kms_flip_tiling@flip-x-tiled.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-apl8/igt@kms_flip_tiling@flip-x-tiled.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:
    - shard-tglb:         [PASS][26] -> [DMESG-WARN][27] ([i915#1982]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-tglb6/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-tglb7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#1188]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][30] -> [FAIL][31] ([fdo#108145] / [i915#265])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][32] -> [SKIP][33] ([fdo#109642] / [fdo#111068])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-iclb3/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][34] -> [FAIL][35] ([i915#173])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-iclb6/igt@kms_psr@no_drrs.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][36] -> [SKIP][37] ([fdo#109441]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][38] -> [FAIL][39] ([i915#31])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-kbl1/igt@kms_setmode@basic.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-kbl2/igt@kms_setmode@basic.html

  * igt@perf@buffer-fill:
    - shard-apl:          [PASS][40] -> [DMESG-WARN][41] ([i915#1635] / [i915#1982]) +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-apl2/igt@perf@buffer-fill.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-apl8/igt@perf@buffer-fill.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [PASS][42] -> [FAIL][43] ([i915#1820])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-kbl4/igt@perf_pmu@semaphore-busy@rcs0.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-kbl1/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Possible fixes ####

  * igt@gem_exec_reloc@basic-wc-cpu-active:
    - shard-apl:          [DMESG-WARN][44] ([i915#1635] / [i915#95]) -> [PASS][45] +15 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-apl6/igt@gem_exec_reloc@basic-wc-cpu-active.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-apl2/igt@gem_exec_reloc@basic-wc-cpu-active.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [DMESG-WARN][46] ([i915#118] / [i915#95]) -> [PASS][47] +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-glk2/igt@gem_exec_whisper@basic-queues-forked-all.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-glk4/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_mmap_wc@read:
    - shard-tglb:         [DMESG-WARN][48] ([i915#402]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-tglb8/igt@gem_mmap_wc@read.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-tglb8/igt@gem_mmap_wc@read.html

  * igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge:
    - shard-skl:          [DMESG-WARN][50] ([i915#1982]) -> [PASS][51] +11 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-skl10/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-skl9/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [INCOMPLETE][52] ([i915#69]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-skl2/igt@kms_fbcon_fbt@psr-suspend.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-skl4/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2:
    - shard-glk:          [FAIL][54] ([i915#79]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [FAIL][56] ([i915#79]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-kbl:          [DMESG-WARN][58] ([i915#180]) -> [PASS][59] +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-kbl1/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-kbl4/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a1:
    - shard-hsw:          [INCOMPLETE][60] ([i915#2055]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-hsw6/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-hsw1/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt:
    - shard-iclb:         [DMESG-WARN][62] ([i915#1982]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         [SKIP][64] ([i915#668]) -> [PASS][65] +3 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-farfromfence:
    - shard-tglb:         [DMESG-WARN][66] ([i915#1982]) -> [PASS][67] +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-tglb1/igt@kms_frontbuffer_tracking@psr-farfromfence.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-tglb6/igt@kms_frontbuffer_tracking@psr-farfromfence.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][68] ([fdo#108145] / [i915#265]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][70] ([fdo#109441]) -> [PASS][71] +2 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-iclb8/igt@kms_psr@psr2_basic.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@perf@polling-parameterized:
    - shard-kbl:          [FAIL][72] ([i915#1542]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-kbl2/igt@perf@polling-parameterized.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-kbl3/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc5-psr:
    - shard-snb:          [SKIP][74] ([fdo#109271]) -> [INCOMPLETE][75] ([i915#82])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-snb1/igt@i915_pm_dc@dc5-psr.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-snb5/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [DMESG-FAIL][76] ([i915#1982]) -> [FAIL][77] ([i915#454])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-skl9/igt@i915_pm_dc@dc6-psr.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-skl8/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][78] ([i915#93] / [i915#95]) -> [DMESG-WARN][79] ([i915#180] / [i915#93] / [i915#95])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@runner@aborted:
    - shard-apl:          [FAIL][80] ([i915#1635] / [i915#2110]) -> ([FAIL][81], [FAIL][82]) ([fdo#109271] / [i915#1635] / [i915#2110] / [i915#716])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8737/shard-apl7/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-apl1/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/shard-apl3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (12 -> 11)
------------------------------

  Missing    (1): pig-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_8737 -> Patchwork_18147

  CI-20190529: 20190529
  CI_DRM_8737: 6d7d28df878566c99344437f03328f11333e508f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5734: 6e5c9915a80d791ea45a3e5d2a3cb7e5dc5f06f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18147: 4e556b645e6edb28bd0fbadd11602869d98edb03 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18147/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
