Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 416C421AD23
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 04:40:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1845D6EB5D;
	Fri, 10 Jul 2020 02:40:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CCD696EB5D;
 Fri, 10 Jul 2020 02:40:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BAB4DA47DF;
 Fri, 10 Jul 2020 02:40:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 10 Jul 2020 02:40:35 -0000
Message-ID: <159434883573.20497.12329126641198732334@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200709211357.23208-1-lucas.demarchi@intel.com>
In-Reply-To: <20200709211357.23208-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/6=5D_drm/i915=3A_Add_has=5Fmaster?=
 =?utf-8?q?=5Funit=5Firq_flag?=
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

Series: series starting with [CI,1/6] drm/i915: Add has_master_unit_irq flag
URL   : https://patchwork.freedesktop.org/series/79316/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8724_full -> Patchwork_18128_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18128_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@kms:
    - shard-glk:          [PASS][1] -> [TIMEOUT][2] ([i915#1383] / [i915#1958] / [i915#2119])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-glk9/igt@gem_eio@kms.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-glk8/igt@gem_eio@kms.html

  * igt@gem_exec_params@invalid-fence-in:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#93] / [i915#95]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-kbl4/igt@gem_exec_params@invalid-fence-in.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-kbl7/igt@gem_exec_params@invalid-fence-in.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [PASS][5] -> [DMESG-FAIL][6] ([i915#118] / [i915#95]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-glk2/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1635] / [i915#95]) +16 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge:
    - shard-glk:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-glk6/igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-glk4/igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge.html

  * igt@kms_flip@dpms-vs-vblank-race@a-hdmi-a1:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#407])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-glk7/igt@kms_flip@dpms-vs-vblank-race@a-hdmi-a1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-glk7/igt@kms_flip@dpms-vs-vblank-race@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982]) +8 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-tglb:         [PASS][17] -> [SKIP][18] ([i915#668])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#49])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#1188])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-skl6/igt@kms_hdr@bpc-switch.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-skl10/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] / [i915#265])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_multiple@atomic-pipe-d-tiling-x:
    - shard-tglb:         [PASS][25] -> [DMESG-WARN][26] ([i915#402]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-tglb2/igt@kms_plane_multiple@atomic-pipe-d-tiling-x.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-tglb3/igt@kms_plane_multiple@atomic-pipe-d-tiling-x.html

  * igt@kms_prop_blob@invalid-get-prop:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#1982])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-apl3/igt@kms_prop_blob@invalid-get-prop.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-apl4/igt@kms_prop_blob@invalid-get-prop.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109642] / [fdo#111068])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-iclb4/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-iclb4/igt@kms_psr@psr2_sprite_mmap_gtt.html

  
#### Possible fixes ####

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [FAIL][33] ([i915#1930]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-glk4/igt@gem_exec_reloc@basic-concurrent0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-glk2/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_mmap_offset@clear:
    - shard-skl:          [DMESG-WARN][35] ([i915#1982]) -> [PASS][36] +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-skl3/igt@gem_mmap_offset@clear.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-skl5/igt@gem_mmap_offset@clear.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-kbl:          [DMESG-WARN][37] ([i915#165]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-kbl2/igt@gem_workarounds@suspend-resume-context.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-kbl4/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][39] ([i915#454]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-iclb7/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_addfb_basic@addfb25-modifier-no-flag:
    - shard-apl:          [DMESG-WARN][41] ([i915#1635] / [i915#95]) -> [PASS][42] +19 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-apl3/igt@kms_addfb_basic@addfb25-modifier-no-flag.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-apl4/igt@kms_addfb_basic@addfb25-modifier-no-flag.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-random:
    - shard-snb:          [TIMEOUT][43] ([i915#1958] / [i915#2119]) -> [PASS][44] +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-snb1/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-snb5/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:
    - shard-glk:          [FAIL][45] ([i915#79]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-kbl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +6 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-kbl1/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc:
    - shard-skl:          [FAIL][49] ([i915#49]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-tglb:         [DMESG-WARN][51] ([i915#402]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-tglb2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-tglb3/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][53] ([fdo#108145] / [i915#265]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][55] ([fdo#109642] / [fdo#111068]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-iclb7/igt@kms_psr2_su@frontbuffer.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][57] ([fdo#109441]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-iclb5/igt@kms_psr@psr2_no_drrs.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_vblank@pipe-a-query-busy-hang:
    - shard-apl:          [DMESG-WARN][59] ([i915#1982]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-apl2/igt@kms_vblank@pipe-a-query-busy-hang.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-apl4/igt@kms_vblank@pipe-a-query-busy-hang.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [TIMEOUT][61] ([i915#1958] / [i915#2119]) -> [FAIL][62] ([i915#1930])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-snb1/igt@gem_exec_reloc@basic-concurrent16.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_exec_reloc@basic-spin-others@vcs0:
    - shard-snb:          [WARN][63] ([i915#2021]) -> [WARN][64] ([i915#2036])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-snb4/igt@gem_exec_reloc@basic-spin-others@vcs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-snb1/igt@gem_exec_reloc@basic-spin-others@vcs0.html

  * igt@kms_color_chamelium@pipe-a-ctm-max:
    - shard-apl:          [SKIP][65] ([fdo#109271] / [fdo#111827]) -> [SKIP][66] ([fdo#109271] / [fdo#111827] / [i915#1635]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-apl3/igt@kms_color_chamelium@pipe-a-ctm-max.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-apl6/igt@kms_color_chamelium@pipe-a-ctm-max.html

  * igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:
    - shard-apl:          [SKIP][67] ([fdo#109271] / [fdo#111827] / [i915#1635]) -> [SKIP][68] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-apl1/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-apl8/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
    - shard-apl:          [SKIP][69] ([fdo#109271]) -> [SKIP][70] ([fdo#109271] / [i915#1635]) +5 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-apl3/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-apl7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-tglb:         [DMESG-WARN][71] ([i915#1602] / [i915#1887]) -> [INCOMPLETE][72] ([i915#1602] / [i915#1887] / [i915#456])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-tglb2/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-tglb1/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack:
    - shard-apl:          [SKIP][73] ([fdo#109271] / [i915#1635]) -> [SKIP][74] ([fdo#109271]) +4 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-apl1/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-apl8/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][75] ([fdo#108145] / [i915#265]) -> [DMESG-WARN][76] ([i915#1982])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][77], [FAIL][78]) ([i915#1610] / [i915#1635] / [i915#2110]) -> [FAIL][79] ([i915#1635] / [i915#2110])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-apl2/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/shard-apl3/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/shard-apl6/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1383]: https://gitlab.freedesktop.org/drm/intel/issues/1383
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1887]: https://gitlab.freedesktop.org/drm/intel/issues/1887
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2021]: https://gitlab.freedesktop.org/drm/intel/issues/2021
  [i915#2036]: https://gitlab.freedesktop.org/drm/intel/issues/2036
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#407]: https://gitlab.freedesktop.org/drm/intel/issues/407
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8724 -> Patchwork_18128

  CI-20190529: 20190529
  CI_DRM_8724: 0165f1cb39da5c3253af7f640a886484f7846089 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5729: a048d54f58dd70b07dbeb4541b273ec230ddb586 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18128: 61af7546dbe0eff40180611a118b495f8024993c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18128/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
