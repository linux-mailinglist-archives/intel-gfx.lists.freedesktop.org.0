Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB901FE16E
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 03:55:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 515926EA57;
	Thu, 18 Jun 2020 01:55:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E35636EA04;
 Thu, 18 Jun 2020 01:55:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D75E1A47E8;
 Thu, 18 Jun 2020 01:55:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Thu, 18 Jun 2020 01:55:12 -0000
Message-ID: <159244531285.22462.10227084297666189275@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200618000124.29036-1-manasi.d.navare@intel.com>
In-Reply-To: <20200618000124.29036-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915/dp=3A_Helper_for_chec?=
 =?utf-8?q?king_DDI=5FBUF=5FCTL_Idle_status?=
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

Series: series starting with [v2,1/2] drm/i915/dp: Helper for checking DDI_BUF_CTL Idle status
URL   : https://patchwork.freedesktop.org/series/78500/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8639_full -> Patchwork_17984_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17984_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@process:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#93] / [i915#95]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-kbl7/igt@gem_ctx_persistence@process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-kbl3/igt@gem_ctx_persistence@process.html

  * igt@gem_exec_schedule@implicit-read-write@rcs0:
    - shard-snb:          [PASS][3] -> [INCOMPLETE][4] ([i915#82]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-snb2/igt@gem_exec_schedule@implicit-read-write@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-snb5/igt@gem_exec_schedule@implicit-read-write@rcs0.html

  * igt@gem_exec_suspend@basic:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#118] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-glk4/igt@gem_exec_suspend@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-glk4/igt@gem_exec_suspend@basic.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [PASS][7] -> [DMESG-FAIL][8] ([i915#118] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-glk7/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [PASS][9] -> [FAIL][10] ([i915#57])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-hsw2/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#1928])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-glk5/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +5 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-skl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982]) +12 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-skl7/igt@kms_flip_tiling@flip-changes-tiling.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-skl7/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_flip_tiling@flip-changes-tiling-y:
    - shard-apl:          [PASS][17] -> [DMESG-FAIL][18] ([i915#95])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-apl3/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-apl2/igt@kms_flip_tiling@flip-changes-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
    - shard-iclb:         [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#108145] / [i915#265]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_properties@connector-properties-legacy:
    - shard-iclb:         [PASS][23] -> [DMESG-WARN][24] ([i915#1226])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-iclb4/igt@kms_properties@connector-properties-legacy.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-iclb4/igt@kms_properties@connector-properties-legacy.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-b-wait-busy-hang:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#1982])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-apl7/igt@kms_vblank@pipe-b-wait-busy-hang.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-apl6/igt@kms_vblank@pipe-b-wait-busy-hang.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [PASS][29] -> [FAIL][30] ([i915#1542])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-iclb5/igt@perf@blocking-parameterized.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-iclb7/igt@perf@blocking-parameterized.html

  * igt@perf@invalid-create-userspace-config:
    - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#95]) +10 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-apl4/igt@perf@invalid-create-userspace-config.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-apl8/igt@perf@invalid-create-userspace-config.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@all:
    - shard-glk:          [DMESG-WARN][33] ([i915#118] / [i915#95]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-glk4/igt@gem_exec_gttfill@all.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-glk8/igt@gem_exec_gttfill@all.html

  * igt@gem_tiled_blits@basic:
    - shard-snb:          [TIMEOUT][35] ([i915#1958]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-snb4/igt@gem_tiled_blits@basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-snb1/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-apl:          [DMESG-WARN][37] ([i915#183]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-apl2/igt@gem_tiled_swapping@non-threaded.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-apl3/igt@gem_tiled_swapping@non-threaded.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - shard-apl:          [DMESG-WARN][39] ([i915#95]) -> [PASS][40] +9 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-apl1/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-apl3/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-tglb:         [DMESG-WARN][41] ([i915#402]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +6 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][45] ([i915#1928]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render:
    - shard-kbl:          [DMESG-WARN][47] ([i915#93] / [i915#95]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-tglb:         [DMESG-WARN][49] ([i915#1982]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-gtt.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][51] ([i915#1188]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-position-covered-pipe-b-planes:
    - shard-skl:          [DMESG-WARN][53] ([i915#1982]) -> [PASS][54] +4 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-skl6/igt@kms_plane@plane-position-covered-pipe-b-planes.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-skl4/igt@kms_plane@plane-position-covered-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][55] ([fdo#108145] / [i915#265]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_scaling@pipe-a-scaler-with-rotation:
    - shard-apl:          [DMESG-WARN][57] ([i915#1982]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-apl6/igt@kms_plane_scaling@pipe-a-scaler-with-rotation.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-apl4/igt@kms_plane_scaling@pipe-a-scaler-with-rotation.html

  * igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping:
    - shard-iclb:         [DMESG-WARN][59] ([i915#1982]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-iclb3/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-iclb6/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][61] ([fdo#109441]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-iclb7/igt@kms_psr@psr2_cursor_render.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [FAIL][63] ([i915#1820]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-kbl7/igt@perf_pmu@semaphore-busy@rcs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-kbl3/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [TIMEOUT][65] ([i915#1958]) -> [FAIL][66] ([i915#1930])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-snb4/igt@gem_exec_reloc@basic-concurrent16.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-snb1/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-snb:          [TIMEOUT][67] ([i915#1958]) -> [SKIP][68] ([fdo#109271]) +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-snb4/igt@gen7_exec_parse@chained-batch.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-snb1/igt@gen7_exec_parse@chained-batch.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-snb:          [TIMEOUT][69] ([i915#1958]) -> [SKIP][70] ([fdo#109271] / [fdo#111827])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-snb4/igt@kms_color_chamelium@pipe-b-ctm-max.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-snb1/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][71] ([i915#93] / [i915#95]) -> [DMESG-WARN][72] ([i915#180] / [i915#93] / [i915#95])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-skl:          [FAIL][73] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][74] ([fdo#108145] / [i915#1982])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#183]: https://gitlab.freedesktop.org/drm/intel/issues/183
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8639 -> Patchwork_17984

  CI-20190529: 20190529
  CI_DRM_8639: 47584e59cf51ec499d68a4cefbaf447448ce2894 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5711: 90611a0c90afa4a46496c78a4faf9638a1538ac3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17984: ed2c62fe315d12edf14a8de352d0ccf3c0ea9780 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17984/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
