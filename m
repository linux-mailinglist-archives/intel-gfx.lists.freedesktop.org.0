Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 952CF211792
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 03:08:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D55376E1CE;
	Thu,  2 Jul 2020 01:08:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A114E6E1CE;
 Thu,  2 Jul 2020 01:08:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 79925A47E8;
 Thu,  2 Jul 2020 01:08:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 02 Jul 2020 01:08:41 -0000
Message-ID: <159365212146.5657.8402605236023717106@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200701183626.2450-1-lucas.demarchi@intel.com>
In-Reply-To: <20200701183626.2450-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_do_not_read_swizzle_info_if_unavailable?=
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

Series: drm/i915: do not read swizzle info if unavailable
URL   : https://patchwork.freedesktop.org/series/79007/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8688_full -> Patchwork_18061_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18061_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18061_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18061_full:

### IGT changes ###

#### Possible regressions ####

  * igt@perf_pmu@busy-double-start@rcs0:
    - shard-snb:          [PASS][1] -> [FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-snb5/igt@perf_pmu@busy-double-start@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-snb2/igt@perf_pmu@busy-double-start@rcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_18061_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-forked:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-glk6/igt@gem_exec_whisper@basic-forked.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-glk9/igt@gem_exec_whisper@basic-forked.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-snb:          [PASS][5] -> [TIMEOUT][6] ([i915#1958] / [i915#2119])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-snb5/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-snb2/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-kbl3/igt@i915_suspend@fence-restore-untiled.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_addfb_basic@addfb25-modifier-no-flag:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1635] / [i915#95]) +9 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-apl3/igt@kms_addfb_basic@addfb25-modifier-no-flag.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-apl1/igt@kms_addfb_basic@addfb25-modifier-no-flag.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [PASS][11] -> [DMESG-FAIL][12] ([i915#118] / [i915#95]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-glk9/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-apl8/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-apl3/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding:
    - shard-tglb:         [PASS][15] -> [DMESG-WARN][16] ([i915#402]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#93] / [i915#95]) +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#52] / [i915#54])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1:
    - shard-glk:          [PASS][21] -> [DMESG-WARN][22] ([i915#1982])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-glk8/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#1982])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:
    - shard-tglb:         [PASS][25] -> [DMESG-WARN][26] ([i915#1982])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
    - shard-skl:          [PASS][27] -> [DMESG-WARN][28] ([i915#1982]) +11 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-skl7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-skl7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#1188])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf_pmu@busy-double-start@vcs0:
    - shard-snb:          [PASS][33] -> [INCOMPLETE][34] ([i915#2119] / [i915#82])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-snb5/igt@perf_pmu@busy-double-start@vcs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-snb2/igt@perf_pmu@busy-double-start@vcs0.html

  
#### Possible fixes ####

  * igt@gem_exec_create@forked:
    - shard-glk:          [DMESG-WARN][35] ([i915#118] / [i915#95]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-glk8/igt@gem_exec_create@forked.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-glk4/igt@gem_exec_create@forked.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
    - shard-skl:          [DMESG-WARN][37] ([i915#1982]) -> [PASS][38] +5 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-skl9/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-skl1/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html

  * igt@kms_color@pipe-a-gamma:
    - shard-skl:          [FAIL][39] ([i915#71]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-skl10/igt@kms_color@pipe-a-gamma.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-skl9/igt@kms_color@pipe-a-gamma.html

  * igt@kms_flip@dpms-vs-vblank-race@a-dp1:
    - shard-kbl:          [FAIL][41] ([i915#407]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-kbl6/igt@kms_flip@dpms-vs-vblank-race@a-dp1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-kbl1/igt@kms_flip@dpms-vs-vblank-race@a-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
    - shard-glk:          [FAIL][43] ([i915#79]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +8 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
    - shard-apl:          [DMESG-WARN][47] ([i915#1635] / [i915#95]) -> [PASS][48] +5 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-apl8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-tglb:         [DMESG-WARN][49] ([i915#1982]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_plane@plane-position-covered-pipe-a-planes:
    - shard-snb:          [SKIP][51] ([fdo#109271]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-snb1/igt@kms_plane@plane-position-covered-pipe-a-planes.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-snb6/igt@kms_plane@plane-position-covered-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][53] ([fdo#108145] / [i915#265]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
    - shard-iclb:         [DMESG-WARN][55] ([i915#1982]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-iclb4/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][57] ([fdo#109441]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_vblank@pipe-c-ts-continuation-modeset:
    - shard-kbl:          [DMESG-WARN][59] ([i915#62] / [i915#92]) -> [PASS][60] +5 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-kbl6/igt@kms_vblank@pipe-c-ts-continuation-modeset.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-modeset.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-apl:          [FAIL][61] ([i915#1732]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-apl7/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-apl3/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [FAIL][63] ([i915#1930]) -> [TIMEOUT][64] ([i915#1958] / [i915#2119])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
    - shard-snb:          [SKIP][65] ([fdo#109271]) -> [TIMEOUT][66] ([i915#1958] / [i915#2119]) +3 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-snb5/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-snb2/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x21-random:
    - shard-apl:          [SKIP][67] ([fdo#109271] / [i915#1635]) -> [SKIP][68] ([fdo#109271]) +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-apl7/igt@kms_cursor_crc@pipe-d-cursor-64x21-random.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-apl3/igt@kms_cursor_crc@pipe-d-cursor-64x21-random.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-apl:          [SKIP][69] ([fdo#109271]) -> [SKIP][70] ([fdo#109271] / [i915#1635])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-apl3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-apl1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-skl:          [FAIL][71] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][72] ([fdo#108145] / [i915#1982])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][73] ([fdo#108145] / [i915#265]) -> [DMESG-WARN][74] ([i915#1982])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1732]: https://gitlab.freedesktop.org/drm/intel/issues/1732
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#407]: https://gitlab.freedesktop.org/drm/intel/issues/407
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#71]: https://gitlab.freedesktop.org/drm/intel/issues/71
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8688 -> Patchwork_18061

  CI-20190529: 20190529
  CI_DRM_8688: e732088e2eb2bbb1ca72c1f68d0405f17477d446 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5719: 54731f017df8660f29cc8f5db0b570239729e808 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18061: 291d13510a2ee95abc9e0a7f42f06aeb7e6a7e0e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18061/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
