Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E48181F1EEA
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 20:25:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CAF289DDD;
	Mon,  8 Jun 2020 18:25:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 642D889DDD;
 Mon,  8 Jun 2020 18:25:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5E226A47E1;
 Mon,  8 Jun 2020 18:25:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Date: Mon, 08 Jun 2020 18:25:18 -0000
Message-ID: <159164071835.14460.5444734701290930641@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200608151550.1315-1-christian.koenig@amd.com>
In-Reply-To: <20200608151550.1315-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/mm=3A_remove_invalid_entry_based_optimization?=
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

Series: drm/mm: remove invalid entry based optimization
URL   : https://patchwork.freedesktop.org/series/78125/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8601_full -> Patchwork_17909_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17909_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [PASS][1] -> [FAIL][2] ([i915#1528])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl5/igt@gem_ctx_persistence@processes.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-skl6/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-glk4/igt@gem_exec_whisper@basic-queues-priority-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-glk1/igt@gem_exec_whisper@basic-queues-priority-all.html

  * igt@gem_sync@basic-store-each:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#95]) +14 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-apl3/igt@gem_sync@basic-store-each.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-apl1/igt@gem_sync@basic-store-each.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [PASS][7] -> [DMESG-WARN][8] ([i915#402]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-tglb5/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-tglb6/igt@i915_module_load@reload.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#454])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl9/igt@i915_pm_dc@dc6-psr.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-skl5/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-kbl6/igt@i915_suspend@forcewake.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-kbl2/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@linear-16bpp-rotate-0:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-apl2/igt@kms_big_fb@linear-16bpp-rotate-0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-apl2/igt@kms_big_fb@linear-16bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-glk:          [PASS][15] -> [DMESG-FAIL][16] ([i915#118] / [i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-glk5/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_color@pipe-a-ctm-blue-to-red:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982]) +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl2/igt@kms_color@pipe-a-ctm-blue-to-red.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-skl10/igt@kms_color@pipe-a-ctm-blue-to-red.html

  * igt@kms_color@pipe-c-ctm-blue-to-red:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#93] / [i915#95]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-kbl6/igt@kms_color@pipe-c-ctm-blue-to-red.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-kbl1/igt@kms_color@pipe-c-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-apl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] / [i915#265])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#173])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-iclb2/igt@kms_psr@no_drrs.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#165])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_mmap_gtt@fault-concurrent:
    - shard-skl:          [CRASH][31] -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl2/igt@gem_mmap_gtt@fault-concurrent.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-skl2/igt@gem_mmap_gtt@fault-concurrent.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][33] ([i915#118] / [i915#95]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-glk9/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36] +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
    - shard-hsw:          [SKIP][37] ([fdo#109271]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-hsw1/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-hsw6/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled:
    - shard-skl:          [FAIL][39] ([i915#52] / [i915#54]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl4/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-skl9/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html

  * {igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2}:
    - shard-glk:          [FAIL][41] ([i915#1928]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-glk5/igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-glk1/igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1}:
    - shard-kbl:          [FAIL][43] ([i915#79]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-kbl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-kbl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-apl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * {igt@kms_flip@flip-vs-suspend@a-edp1}:
    - shard-skl:          [INCOMPLETE][47] ([i915#198]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl4/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-skl8/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_flip_tiling@flip-y-tiled:
    - shard-skl:          [DMESG-WARN][49] ([i915#1982]) -> [PASS][50] +5 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl9/igt@kms_flip_tiling@flip-y-tiled.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-skl10/igt@kms_flip_tiling@flip-y-tiled.html

  * igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:
    - shard-iclb:         [DMESG-WARN][51] ([i915#1982]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-iclb3/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-iclb3/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][53] ([fdo#108145] / [i915#265]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mid:
    - shard-apl:          [DMESG-WARN][55] ([i915#95]) -> [PASS][56] +17 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mid.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mid.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][57] ([fdo#109642] / [fdo#111068]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-iclb8/igt@kms_psr2_su@page_flip.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][59] ([fdo#109441]) -> [PASS][60] +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * {igt@perf@blocking-parameterized}:
    - shard-iclb:         [FAIL][61] ([i915#1542]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-iclb3/igt@perf@blocking-parameterized.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-iclb3/igt@perf@blocking-parameterized.html

  * {igt@perf@polling-parameterized}:
    - shard-hsw:          [FAIL][63] ([i915#1542]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-hsw6/igt@perf@polling-parameterized.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-hsw2/igt@perf@polling-parameterized.html

  * igt@syncobj_wait@multi-wait-all-for-submit-signaled:
    - shard-tglb:         [DMESG-WARN][65] ([i915#402]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-tglb3/igt@syncobj_wait@multi-wait-all-for-submit-signaled.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-tglb8/igt@syncobj_wait@multi-wait-all-for-submit-signaled.html

  * igt@syncobj_wait@multi-wait-for-submit-unsubmitted:
    - shard-kbl:          [DMESG-WARN][67] ([i915#93] / [i915#95]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-kbl6/igt@syncobj_wait@multi-wait-for-submit-unsubmitted.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-kbl1/igt@syncobj_wait@multi-wait-for-submit-unsubmitted.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][69] ([i915#588]) -> [SKIP][70] ([i915#658])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [FAIL][71] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][72] ([i915#1319])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-apl3/igt@kms_content_protection@atomic-dpms.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-apl1/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][73] ([i915#1319] / [i915#1635]) -> [FAIL][74] ([fdo#110321])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-apl4/igt@kms_content_protection@lic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-apl6/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [TIMEOUT][75] ([i915#1319] / [i915#1635]) -> [TIMEOUT][76] ([i915#1319])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-apl3/igt@kms_content_protection@srm.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-apl1/igt@kms_content_protection@srm.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][77] ([i915#180] / [i915#93] / [i915#95]) -> [DMESG-WARN][78] ([i915#93] / [i915#95])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8601 -> Patchwork_17909

  CI-20190529: 20190529
  CI_DRM_8601: c801ab3a923b2436d765bd7a97888715f68451cb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5699: 201da47cb57b8fadd9bc45be16b82617b32a2c01 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17909: 700bb6db28575c5fa67d7d0ef0597850f4ecaad1 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17909/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
