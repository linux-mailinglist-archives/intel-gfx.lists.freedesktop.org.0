Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D795D21E553
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 03:47:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B09516E86B;
	Tue, 14 Jul 2020 01:47:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 80A746E86A;
 Tue, 14 Jul 2020 01:47:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A208EA363B;
 Tue, 14 Jul 2020 01:47:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Tue, 14 Jul 2020 01:47:09 -0000
Message-ID: <159469122963.6780.13784920092209560677@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200713235334.84263-1-jose.souza@intel.com>
In-Reply-To: <20200713235334.84263-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv5=2C1/2=5D_drm/i915/display=3A_Implement_?=
 =?utf-8?q?HOBL?=
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

Series: series starting with [v5,1/2] drm/i915/display: Implement HOBL
URL   : https://patchwork.freedesktop.org/series/79425/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8740_full -> Patchwork_18152_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18152_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-glk:          [PASS][1] -> [DMESG-WARN][2] ([i915#118] / [i915#95]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-glk8/igt@gem_exec_whisper@basic-queues-priority.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-glk4/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#69])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-skl6/igt@gem_softpin@noreloc-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-skl2/igt@gem_softpin@noreloc-s3.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [PASS][5] -> [DMESG-FAIL][6] ([i915#118] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-glk2/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#93] / [i915#95]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-random:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#54]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-rapid-movement:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1635] / [i915#95]) +17 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-128x128-rapid-movement.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-128x128-rapid-movement.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-glk:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#79]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-panning-interruptible@a-edp1:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982]) +10 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-skl2/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-skl6/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-kbl2/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-edp1:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#198])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-skl8/igt@kms_flip@flip-vs-suspend@c-edp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-skl10/igt@kms_flip@flip-vs-suspend@c-edp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#1188])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#173])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-iclb8/igt@kms_psr@no_drrs.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-iclb4/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][29] -> [FAIL][30] ([i915#31])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-kbl3/igt@kms_setmode@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-kbl3/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-query-forked-hang:
    - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#1635] / [i915#1982])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-apl3/igt@kms_vblank@pipe-c-query-forked-hang.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-apl3/igt@kms_vblank@pipe-c-query-forked-hang.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [PASS][33] -> [FAIL][34] ([i915#1542])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-iclb1/igt@perf@blocking-parameterized.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-iclb3/igt@perf@blocking-parameterized.html

  * igt@perf_pmu@module-unload:
    - shard-tglb:         [PASS][35] -> [DMESG-WARN][36] ([i915#1982]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-tglb5/igt@perf_pmu@module-unload.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-tglb8/igt@perf_pmu@module-unload.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox:
    - shard-apl:          [FAIL][37] ([i915#1528] / [i915#1635]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-apl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-apl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@gem_mmap_offset@pf-nonblock:
    - shard-apl:          [DMESG-WARN][39] ([i915#1635] / [i915#95]) -> [PASS][40] +18 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-apl7/igt@gem_mmap_offset@pf-nonblock.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-apl8/igt@gem_mmap_offset@pf-nonblock.html

  * igt@gem_mmap_wc@fault-concurrent:
    - shard-iclb:         [DMESG-WARN][41] ([i915#1982]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-iclb2/igt@gem_mmap_wc@fault-concurrent.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-iclb4/igt@gem_mmap_wc@fault-concurrent.html

  * igt@gem_sync@basic-all:
    - shard-glk:          [DMESG-WARN][43] ([i915#118] / [i915#95]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-glk6/igt@gem_sync@basic-all.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-glk1/igt@gem_sync@basic-all.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [DMESG-WARN][45] ([i915#402]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-tglb7/igt@i915_module_load@reload.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-tglb8/igt@i915_module_load@reload.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][47] ([i915#118] / [i915#95]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-glk4/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [DMESG-WARN][49] ([i915#1982]) -> [PASS][50] +6 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-skl10/igt@kms_color@pipe-a-ctm-0-5.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-skl1/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][51] ([IGT#5]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled:
    - shard-glk:          [DMESG-WARN][53] ([i915#1982]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-glk1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-glk8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [INCOMPLETE][55] ([i915#69]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-skl9/igt@kms_fbcon_fbt@psr-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-skl4/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [FAIL][57] ([i915#79]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +7 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-dp1:
    - shard-kbl:          [FAIL][61] ([i915#2122]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-kbl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-dp1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-kbl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-dp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][63] ([i915#1188]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][65] ([fdo#108145] / [i915#265]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][67] ([fdo#109441]) -> [PASS][68] +3 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@testdisplay:
    - shard-kbl:          [TIMEOUT][69] ([i915#1692] / [i915#1958] / [i915#2119]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-kbl7/igt@testdisplay.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-kbl4/igt@testdisplay.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][71] ([i915#658]) -> [SKIP][72] ([i915#588])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [TIMEOUT][73] ([i915#1319] / [i915#1958] / [i915#2119]) -> [TIMEOUT][74] ([i915#1319] / [i915#2119])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-kbl7/igt@kms_content_protection@srm.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-kbl4/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - shard-kbl:          [DMESG-WARN][75] ([i915#93] / [i915#95]) -> [DMESG-FAIL][76] ([i915#54] / [i915#95])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][77] ([i915#93] / [i915#95]) -> [DMESG-WARN][78] ([i915#180] / [i915#93] / [i915#95]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-apl:          [DMESG-WARN][79] ([i915#1635] / [i915#95]) -> [DMESG-FAIL][80] ([i915#1635] / [i915#95])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][81], [FAIL][82], [FAIL][83], [FAIL][84]) ([fdo#109271] / [i915#1610] / [i915#1635] / [i915#2110] / [i915#716]) -> ([FAIL][85], [FAIL][86]) ([fdo#109271] / [i915#1635] / [i915#2110] / [i915#716])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-apl7/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-apl3/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-apl4/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-apl7/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-apl7/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-apl6/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][87], [FAIL][88]) ([i915#1764] / [i915#2110]) -> [FAIL][89] ([i915#2110])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-tglb3/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8740/shard-tglb8/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/shard-tglb6/igt@runner@aborted.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1692]: https://gitlab.freedesktop.org/drm/intel/issues/1692
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#1764]: https://gitlab.freedesktop.org/drm/intel/issues/1764
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-icl-1065g7 


Build changes
-------------

  * Linux: CI_DRM_8740 -> Patchwork_18152

  CI-20190529: 20190529
  CI_DRM_8740: b182a04c513e3b385fa3cdbac559f2625b778be1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5735: 21f8204e54c122e4a0f8ca4b59e4b2db8d1ba687 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18152: 5a8310c2d8b27c82b73f6e44a975afca5522d1d5 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18152/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
