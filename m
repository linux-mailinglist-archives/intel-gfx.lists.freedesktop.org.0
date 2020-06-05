Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 815281EF02B
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 06:11:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5030D6E831;
	Fri,  5 Jun 2020 04:11:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 441D86E82F;
 Fri,  5 Jun 2020 04:11:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3D1F5A7E01;
 Fri,  5 Jun 2020 04:11:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 05 Jun 2020 04:11:51 -0000
Message-ID: <159133031122.18506.8287483097583441405@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200604211457.19696-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200604211457.19696-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Async_GPU_relocations_only?=
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

Series: drm/i915/gem: Async GPU relocations only
URL   : https://patchwork.freedesktop.org/series/78016/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8588_full -> Patchwork_17878_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17878_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17878_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17878_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - shard-snb:          [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-snb6/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-snb2/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
    - shard-hsw:          [PASS][3] -> [TIMEOUT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-hsw7/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-hsw5/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  
#### Warnings ####

  * igt@kms_ccs@pipe-c-crc-primary-basic:
    - shard-hsw:          [SKIP][5] ([fdo#109271]) -> [TIMEOUT][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-hsw7/igt@kms_ccs@pipe-c-crc-primary-basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-hsw5/igt@kms_ccs@pipe-c-crc-primary-basic.html

  * igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping:
    - shard-snb:          [SKIP][7] ([fdo#109271]) -> [TIMEOUT][8] +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-snb6/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-snb2/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_reloc@basic-concurrent16}:
    - shard-snb:          [FAIL][9] ([i915#1930]) -> [TIMEOUT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-iclb:         [FAIL][11] ([i915#1930]) -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-iclb8/igt@gem_exec_reloc@basic-concurrent16.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-iclb3/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-hsw:          [FAIL][13] ([i915#1930]) -> [TIMEOUT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-hsw7/igt@gem_exec_reloc@basic-concurrent16.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-hsw5/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-tglb:         [FAIL][15] ([i915#1930]) -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-tglb6/igt@gem_exec_reloc@basic-concurrent16.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-tglb2/igt@gem_exec_reloc@basic-concurrent16.html

  * {igt@kms_chamelium@vga-hpd-enable-disable-mode}:
    - shard-hsw:          [SKIP][17] ([fdo#109271] / [fdo#111827]) -> [TIMEOUT][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-hsw7/igt@kms_chamelium@vga-hpd-enable-disable-mode.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-hsw5/igt@kms_chamelium@vga-hpd-enable-disable-mode.html
    - shard-snb:          [SKIP][19] ([fdo#109271] / [fdo#111827]) -> [TIMEOUT][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-snb6/igt@kms_chamelium@vga-hpd-enable-disable-mode.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-snb2/igt@kms_chamelium@vga-hpd-enable-disable-mode.html

  
Known issues
------------

  Here are the changes found in Patchwork_17878_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-normal:
    - shard-glk:          [PASS][21] -> [DMESG-WARN][22] ([i915#118] / [i915#95]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-glk1/igt@gem_exec_whisper@basic-normal.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-glk5/igt@gem_exec_whisper@basic-normal.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#1982]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-apl2/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-apl6/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_color@pipe-d-ctm-0-5:
    - shard-tglb:         [PASS][27] -> [DMESG-WARN][28] ([i915#1149] / [i915#402])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-tglb1/igt@kms_color@pipe-d-ctm-0-5.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-tglb8/igt@kms_color@pipe-d-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
    - shard-kbl:          [PASS][29] -> [DMESG-FAIL][30] ([i915#54] / [i915#95])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:
    - shard-skl:          [PASS][31] -> [DMESG-WARN][32] ([i915#1982]) +16 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-skl4/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-skl10/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html

  * igt@kms_cursor_legacy@pipe-c-torture-bo:
    - shard-iclb:         [PASS][33] -> [DMESG-WARN][34] ([i915#128])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-iclb5/igt@kms_cursor_legacy@pipe-c-torture-bo.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-iclb5/igt@kms_cursor_legacy@pipe-c-torture-bo.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-apl:          [PASS][35] -> [DMESG-WARN][36] ([i915#95]) +19 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-apl1/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-apl8/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-tglb:         [PASS][37] -> [DMESG-WARN][38] ([i915#1982])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-kbl:          [PASS][39] -> [DMESG-WARN][40] ([i915#93] / [i915#95])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#49])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#1188])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-skl4/igt@kms_hdr@bpc-switch.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-skl6/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][45] -> [DMESG-WARN][46] ([i915#180])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([fdo#108145] / [i915#265])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][49] -> [SKIP][50] ([fdo#109441]) +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-iclb4/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][51] -> [FAIL][52] ([i915#31])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-kbl1/igt@kms_setmode@basic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-kbl6/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-b-wait-busy:
    - shard-kbl:          [PASS][53] -> [DMESG-WARN][54] ([i915#1982])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-kbl1/igt@kms_vblank@pipe-b-wait-busy.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-kbl6/igt@kms_vblank@pipe-b-wait-busy.html

  
#### Possible fixes ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [DMESG-WARN][55] ([i915#1436] / [i915#716]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-kbl6/igt@gen9_exec_parse@allowed-all.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-kbl4/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][57] ([i915#454]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-iclb7/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
    - shard-skl:          [DMESG-WARN][59] ([i915#1982]) -> [PASS][60] +5 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-skl9/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-skl5/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html

  * igt@kms_color@pipe-c-ctm-red-to-blue:
    - shard-kbl:          [DMESG-WARN][61] ([i915#93] / [i915#95]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-kbl4/igt@kms_color@pipe-c-ctm-red-to-blue.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-kbl7/igt@kms_color@pipe-c-ctm-red-to-blue.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:
    - shard-skl:          [FAIL][63] ([i915#54]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen:
    - shard-apl:          [DMESG-WARN][65] ([i915#95]) -> [PASS][66] +19 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled:
    - shard-apl:          [DMESG-WARN][67] ([i915#1982]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-apl8/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-apl7/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-glk:          [DMESG-WARN][69] ([i915#1982]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-glk8/igt@kms_fbcon_fbt@fbc-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-glk8/igt@kms_fbcon_fbt@fbc-suspend.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1}:
    - shard-glk:          [FAIL][71] ([i915#79]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:
    - shard-skl:          [FAIL][73] ([i915#49]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][75] ([i915#1188]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [DMESG-WARN][77] ([i915#180]) -> [PASS][78] +3 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][79] ([fdo#108145] / [i915#265]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][81] ([fdo#109441]) -> [PASS][82] +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-iclb6/igt@kms_psr@psr2_primary_page_flip.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][83] ([i915#31]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-skl8/igt@kms_setmode@basic.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-skl2/igt@kms_setmode@basic.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-c:
    - shard-tglb:         [DMESG-WARN][85] ([i915#1982]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-tglb1/igt@kms_universal_plane@universal-plane-gen9-features-pipe-c.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-tglb6/igt@kms_universal_plane@universal-plane-gen9-features-pipe-c.html

  
#### Warnings ####

  * igt@kms_color_chamelium@pipe-c-ctm-limited-range:
    - shard-snb:          [SKIP][87] ([fdo#109271] / [fdo#111827]) -> [INCOMPLETE][88] ([i915#82])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-snb6/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-snb2/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [FAIL][89] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][90] ([i915#1319] / [i915#1635]) +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-apl1/igt@kms_content_protection@atomic.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-apl8/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][91] ([i915#1319] / [i915#1635]) -> [FAIL][92] ([fdo#110321] / [fdo#110336])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-apl8/igt@kms_content_protection@atomic-dpms.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-apl7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [TIMEOUT][93] ([i915#1319] / [i915#1635]) -> [DMESG-FAIL][94] ([fdo#110321] / [i915#95])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-apl3/igt@kms_content_protection@srm.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-apl8/igt@kms_content_protection@srm.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-hsw:          [SKIP][95] ([fdo#109271]) -> [INCOMPLETE][96] ([i915#61])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-hsw7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-hsw5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-skl:          [FAIL][97] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][98] ([fdo#108145] / [i915#1982])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@runner@aborted:
    - shard-tglb:         [FAIL][99] ([i915#1602]) -> ([FAIL][100], [FAIL][101]) ([i915#1602] / [i915#1759])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8588/shard-tglb7/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-tglb3/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/shard-tglb7/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1759]: https://gitlab.freedesktop.org/drm/intel/issues/1759
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1823]: https://gitlab.freedesktop.org/drm/intel/issues/1823
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8588 -> Patchwork_17878

  CI-20190529: 20190529
  CI_DRM_8588: 294330ea49d6c0763514747ebc994f0b29a5afbe @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5695: 53e8c878a6fb5708e63c99403691e8960b86ea9c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17878: 7b08ef0f711fac0ebdbfe22db9a445f3c3361e27 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17878/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
