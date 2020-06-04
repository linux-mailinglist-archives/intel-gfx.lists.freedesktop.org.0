Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 395321EDC73
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 06:43:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 013008984E;
	Thu,  4 Jun 2020 04:43:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C5A7C89815;
 Thu,  4 Jun 2020 04:43:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BF5E1A47DA;
 Thu,  4 Jun 2020 04:43:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 04 Jun 2020 04:43:00 -0000
Message-ID: <159124578075.14555.17918584564922035534@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200514184040.20700-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200514184040.20700-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/dp=3A_Include_the_AUX_CH_name_in_the_debug_messages_=28rev2=29?=
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

Series: drm/dp: Include the AUX CH name in the debug messages (rev2)
URL   : https://patchwork.freedesktop.org/series/77276/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8579_full -> Patchwork_17851_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17851_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_reloc@basic-write-gtt:
    - shard-tglb:         [PASS][1] -> [DMESG-WARN][2] ([i915#402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb7/igt@gem_exec_reloc@basic-write-gtt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-tglb6/igt@gem_exec_reloc@basic-write-gtt.html

  * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#95]) +14 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl2/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-apl3/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-glk:          [PASS][5] -> [DMESG-FAIL][6] ([i915#118] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk1/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-90:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl4/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-apl8/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html
    - shard-skl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982]) +9 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl4/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-skl7/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions:
    - shard-glk:          [PASS][13] -> [DMESG-WARN][14] ([i915#118] / [i915#95]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk1/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-glk8/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-glk:          [PASS][15] -> [DMESG-FAIL][16] ([i915#1925] / [i915#1926])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk9/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-glk2/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * igt@kms_flip_tiling@flip-yf-tiled:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl7/igt@kms_flip_tiling@flip-yf-tiled.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-skl1/igt@kms_flip_tiling@flip-yf-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-badstride:
    - shard-glk:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk4/igt@kms_frontbuffer_tracking@fbc-badstride.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-glk2/igt@kms_frontbuffer_tracking@fbc-badstride.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:
    - shard-tglb:         [PASS][21] -> [DMESG-WARN][22] ([i915#1982]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#49])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#1188])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-pipe-a-planes:
    - shard-iclb:         [PASS][29] -> [DMESG-WARN][30] ([i915#1982])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb4/igt@kms_plane@plane-panning-bottom-right-pipe-a-planes.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][35] -> [FAIL][36] ([i915#31])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl6/igt@kms_setmode@basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-apl1/igt@kms_setmode@basic.html

  * igt@syncobj_wait@single-wait-all-signaled:
    - shard-kbl:          [PASS][37] -> [DMESG-WARN][38] ([i915#93] / [i915#95]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl7/igt@syncobj_wait@single-wait-all-signaled.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-kbl3/igt@syncobj_wait@single-wait-all-signaled.html

  
#### Possible fixes ####

  * {igt@gem_exec_reloc@basic-concurrent0}:
    - shard-tglb:         [FAIL][39] ([i915#1930]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb6/igt@gem_exec_reloc@basic-concurrent0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-tglb8/igt@gem_exec_reloc@basic-concurrent0.html

  * {igt@gem_exec_schedule@implicit-write-read@rcs0}:
    - shard-snb:          [INCOMPLETE][41] ([i915#82]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-snb5/igt@gem_exec_schedule@implicit-write-read@rcs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-snb2/igt@gem_exec_schedule@implicit-write-read@rcs0.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-apl6/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
    - shard-apl:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl7/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-apl6/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen:
    - shard-tglb:         [DMESG-WARN][47] ([i915#402]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][49] ([i915#72]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1}:
    - shard-skl:          [FAIL][51] ([i915#46]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * {igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1}:
    - shard-kbl:          [DMESG-WARN][53] ([i915#1982]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-kbl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc:
    - shard-kbl:          [DMESG-WARN][55] ([i915#93] / [i915#95]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][57] ([i915#1188]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl1/igt@kms_hdr@bpc-switch.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-skl8/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][59] ([i915#69]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane@plane-panning-top-left-pipe-c-planes:
    - shard-skl:          [DMESG-WARN][61] ([i915#1982]) -> [PASS][62] +9 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl9/igt@kms_plane@plane-panning-top-left-pipe-c-planes.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-skl5/igt@kms_plane@plane-panning-top-left-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][63] ([fdo#108145] / [i915#265]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
    - shard-iclb:         [DMESG-WARN][65] ([i915#1982]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-iclb2/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][67] ([fdo#109441]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][69] ([i915#180]) -> [PASS][70] +4 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * {igt@perf@blocking-parameterized}:
    - shard-iclb:         [FAIL][71] ([i915#1542]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb8/igt@perf@blocking-parameterized.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-iclb1/igt@perf@blocking-parameterized.html
    - shard-tglb:         [FAIL][73] ([i915#1542]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb7/igt@perf@blocking-parameterized.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-tglb2/igt@perf@blocking-parameterized.html

  * igt@vgem_basic@dmabuf-mmap:
    - shard-apl:          [DMESG-WARN][75] ([i915#95]) -> [PASS][76] +6 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl2/igt@vgem_basic@dmabuf-mmap.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-apl3/igt@vgem_basic@dmabuf-mmap.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic:
    - shard-apl:          [TIMEOUT][77] ([i915#1319] / [i915#1635]) -> [TIMEOUT][78] ([i915#1319])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl6/igt@kms_content_protection@atomic.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-apl4/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][79] ([i915#1319]) -> [TIMEOUT][80] ([i915#1319] / [i915#1635])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl1/igt@kms_content_protection@atomic-dpms.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-apl1/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [FAIL][81] ([fdo#110321]) -> [TIMEOUT][82] ([i915#1319] / [i915#1635])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl2/igt@kms_content_protection@srm.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-apl1/igt@kms_content_protection@srm.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-apl:          [DMESG-FAIL][83] ([i915#49] / [i915#95]) -> [FAIL][84] ([i915#49])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/shard-apl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1925]: https://gitlab.freedesktop.org/drm/intel/issues/1925
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8579 -> Patchwork_17851

  CI-20190529: 20190529
  CI_DRM_8579: 289eb12c88c49a4ac8d325dc457d8878c7f5bdc0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5694: a9b6c4c74bfddf7d3d2da3be08804fe315945cea @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17851: b40213e78a826fd098477aa050e49072f8cc61a5 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17851/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
