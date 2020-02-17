Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3AA161396
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2020 14:32:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C1C96E953;
	Mon, 17 Feb 2020 13:32:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3689B6E953;
 Mon, 17 Feb 2020 13:32:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 276F5A0003;
 Mon, 17 Feb 2020 13:32:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Mon, 17 Feb 2020 13:32:50 -0000
Message-ID: <158194637013.16571.16583601326215950046@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200213184800.14147-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200213184800.14147-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Proper_dbuf_global_state?=
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

Series: drm/i915: Proper dbuf global state
URL   : https://patchwork.freedesktop.org/series/73421/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7934_full -> Patchwork_16562_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16562_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16562_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16562_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_edge_walk@pipe-d-64x64-right-edge:
    - shard-tglb:         [PASS][1] -> [FAIL][2] +24 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb2/igt@kms_cursor_edge_walk@pipe-d-64x64-right-edge.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb2/igt@kms_cursor_edge_walk@pipe-d-64x64-right-edge.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_ctx_persistence@close-replace-race}:
    - shard-iclb:         [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-iclb8/igt@gem_ctx_persistence@close-replace-race.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-iclb3/igt@gem_ctx_persistence@close-replace-race.html

  
Known issues
------------

  Here are the changes found in Patchwork_16562_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112146]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-iclb7/igt@gem_exec_async@concurrent-writes-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-iclb2/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112080]) +9 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +17 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-iclb2/igt@gem_exec_schedule@out-order-bsd2.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-iclb6/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_workarounds@suspend-resume:
    - shard-kbl:          [PASS][11] -> [INCOMPLETE][12] ([fdo#103665])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-kbl7/igt@gem_workarounds@suspend-resume.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-kbl4/igt@gem_workarounds@suspend-resume.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +5 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-apl3/igt@gem_workarounds@suspend-resume-context.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-apl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-90:
    - shard-tglb:         [PASS][15] -> [FAIL][16] ([i915#1172]) +5 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb8/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb1/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180:
    - shard-tglb:         [PASS][17] -> [FAIL][18] ([i915#979]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb7/igt@kms_ccs@pipe-b-crc-primary-rotation-180.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb7/igt@kms_ccs@pipe-b-crc-primary-rotation-180.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#182])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-skl10/igt@kms_color@pipe-a-ctm-0-75.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-skl1/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_color@pipe-d-ctm-0-5:
    - shard-tglb:         [PASS][21] -> [FAIL][22] ([i915#1149] / [i915#315])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb1/igt@kms_color@pipe-d-ctm-0-5.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb8/igt@kms_color@pipe-d-ctm-0-5.html

  * igt@kms_color@pipe-d-ctm-blue-to-red:
    - shard-tglb:         [PASS][23] -> [FAIL][24] ([i915#1149]) +7 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb2/igt@kms_color@pipe-d-ctm-blue-to-red.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb1/igt@kms_color@pipe-d-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-onscreen:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#54]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x42-onscreen.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x42-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen:
    - shard-apl:          [PASS][27] -> [FAIL][28] ([i915#54])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-dpms:
    - shard-tglb:         [PASS][29] -> [FAIL][30] ([fdo#111703]) +41 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-dpms.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-dpms.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge:
    - shard-tglb:         [PASS][31] -> [FAIL][32] ([i915#70]) +14 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb8/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb2/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-tglb:         [PASS][33] -> [FAIL][34] ([i915#1173])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([IGT#5])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-xtiled:
    - shard-tglb:         [PASS][37] -> [FAIL][38] ([i915#559]) +4 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb3/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-xtiled.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb3/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-xtiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled:
    - shard-tglb:         [PASS][39] -> [DMESG-FAIL][40] ([i915#402]) +21 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb8/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb2/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-tglb:         [PASS][41] -> [FAIL][42] ([i915#699]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb1/igt@kms_flip_tiling@flip-changes-tiling.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb2/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt:
    - shard-tglb:         [PASS][45] -> [DMESG-FAIL][46] ([i915#402] / [i915#49]) +44 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][47] -> [FAIL][48] ([i915#49]) +25 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_mmap_write_crc@main:
    - shard-tglb:         [PASS][49] -> [FAIL][50] ([i915#1180])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb2/igt@kms_mmap_write_crc@main.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb1/igt@kms_mmap_write_crc@main.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:
    - shard-tglb:         [PASS][51] -> [FAIL][52] ([i915#1183]) +10 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb1/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb5/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][53] -> [DMESG-WARN][54] ([i915#56])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [PASS][55] -> [INCOMPLETE][56] ([i915#69])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane@plane-panning-top-left-pipe-a-planes:
    - shard-tglb:         [PASS][57] -> [FAIL][58] ([i915#1171]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb2/igt@kms_plane@plane-panning-top-left-pipe-a-planes.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb8/igt@kms_plane@plane-panning-top-left-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid:
    - shard-tglb:         [PASS][59] -> [FAIL][60] ([i915#1184]) +14 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][61] -> [FAIL][62] ([fdo#108145]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-64:
    - shard-tglb:         [PASS][63] -> [FAIL][64] ([i915#1139]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb8/igt@kms_plane_cursor@pipe-a-viewport-size-64.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb2/igt@kms_plane_cursor@pipe-a-viewport-size-64.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][65] -> [FAIL][66] ([i915#899])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_plane_lowres@pipe-c-tiling-x:
    - shard-tglb:         [PASS][67] -> [FAIL][68] ([i915#899]) +3 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb5/igt@kms_plane_lowres@pipe-c-tiling-x.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb3/igt@kms_plane_lowres@pipe-c-tiling-x.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-x:
    - shard-tglb:         [PASS][69] -> [FAIL][70] ([i915#778]) +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb8/igt@kms_plane_multiple@atomic-pipe-c-tiling-x.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb7/igt@kms_plane_multiple@atomic-pipe-c-tiling-x.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-tglb:         [PASS][71] -> [FAIL][72] ([fdo#111842] / [i915#608])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb8/igt@kms_psr2_su@frontbuffer.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb7/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@primary_blt:
    - shard-tglb:         [PASS][73] -> [DMESG-WARN][74] ([i915#402]) +17 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb8/igt@kms_psr@primary_blt.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb1/igt@kms_psr@primary_blt.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][75] -> [SKIP][76] ([fdo#109441]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-iclb7/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - shard-tglb:         [PASS][77] -> [FAIL][78] ([i915#65]) +3 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb7/igt@kms_rotation_crc@primary-rotation-90.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb7/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:
    - shard-tglb:         [PASS][79] -> [DMESG-FAIL][80] ([i915#402] / [i915#65])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb8/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-skl:          [INCOMPLETE][81] ([i915#146] / [i915#69]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-skl10/igt@gem_ctx_isolation@bcs0-s3.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-skl1/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_shared@exec-shared-gtt-default:
    - shard-tglb:         [FAIL][83] ([i915#616]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb1/igt@gem_ctx_shared@exec-shared-gtt-default.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb8/igt@gem_ctx_shared@exec-shared-gtt-default.html

  * igt@gem_ctx_shared@exec-shared-gtt-render:
    - shard-tglb:         [FAIL][85] ([i915#607] / [i915#616]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb6/igt@gem_ctx_shared@exec-shared-gtt-render.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb8/igt@gem_ctx_shared@exec-shared-gtt-render.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][87] ([fdo#112146]) -> [PASS][88] +11 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-iclb7/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][89] ([i915#677]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-iclb3/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][91] ([i915#644]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][93] ([i915#413]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-iclb7/igt@i915_pm_rps@reset.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-iclb2/igt@i915_pm_rps@reset.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-270:
    - shard-tglb:         [FAIL][95] ([i915#1172]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb7/igt@kms_big_fb@y-tiled-16bpp-rotate-270.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb7/igt@kms_big_fb@y-tiled-16bpp-rotate-270.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - shard-tglb:         [FAIL][97] ([fdo#111703]) -> [PASS][98] +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][99] ([i915#180]) -> [PASS][100] +3 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][101] ([i915#72]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled:
    - shard-tglb:         [FAIL][103] ([i915#559]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb7/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb5/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html

  * {igt@kms_hdr@bpc-switch-dpms}:
    - shard-skl:          [FAIL][105] ([i915#1188]) -> [PASS][106] +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][107] ([i915#180]) -> [PASS][108] +4 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][109] ([fdo#108145] / [i915#265]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][111] ([fdo#109441]) -> [PASS][112] +3 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-iclb7/igt@kms_psr@psr2_cursor_render.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-tglb:         [FAIL][113] ([i915#65]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb2/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb2/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][115] ([i915#31]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-kbl1/igt@kms_setmode@basic.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-kbl7/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][117] ([fdo#112080]) -> [PASS][118] +8 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-iclb7/igt@perf_pmu@busy-vcs1.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-iclb2/igt@perf_pmu@busy-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][119] ([fdo#109276]) -> [PASS][120] +17 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-iclb7/igt@prime_busy@hang-bsd2.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][121] ([i915#468]) -> [FAIL][122] ([i915#454])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb5/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-snb:          [INCOMPLETE][123] ([i915#82]) -> [SKIP][124] ([fdo#109271])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-snb6/igt@i915_pm_dc@dc6-psr.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-snb6/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-onoff:
    - shard-tglb:         [SKIP][125] ([i915#668]) -> [DMESG-FAIL][126] ([i915#402] / [i915#49]) +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-onoff.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-tglb:         [SKIP][127] ([i915#668]) -> [FAIL][128] ([i915#49])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7934/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111703]: https://bugs.freedesktop.org/show_bug.cgi?id=111703
  [fdo#111842]: https://bugs.freedesktop.org/show_bug.cgi?id=111842
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1139]: https://gitlab.freedesktop.org/drm/intel/issues/1139
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1171]: https://gitlab.freedesktop.org/drm/intel/issues/1171
  [i915#1172]: https://gitlab.freedesktop.org/drm/intel/issues/1172
  [i915#1173]: https://gitlab.freedesktop.org/drm/intel/issues/1173
  [i915#1180]: https://gitlab.freedesktop.org/drm/intel/issues/1180
  [i915#1183]: https://gitlab.freedesktop.org/drm/intel/issues/1183
  [i915#1184]: https://gitlab.freedesktop.org/drm/intel/issues/1184
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#182]: https://gitlab.freedesktop.org/drm/intel/issues/182
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#559]: https://gitlab.freedesktop.org/drm/intel/issues/559
  [i915#56]: https://gitlab.freedesktop.org/drm/intel/issues/56
  [i915#607]: https://gitlab.freedesktop.org/drm/intel/issues/607
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#616]: https://gitlab.freedesktop.org/drm/intel/issues/616
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#65]: https://gitlab.freedesktop.org/drm/intel/issues/65
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#70]: https://gitlab.freedesktop.org/drm/intel/issues/70
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#778]: https://gitlab.freedesktop.org/drm/intel/issues/778
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#979]: https://gitlab.freedesktop.org/drm/intel/issues/979


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7934 -> Patchwork_16562

  CI-20190529: 20190529
  CI_DRM_7934: 16668f8cd3512f56f626acaed0dd9245692ea3dc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5440: 860924b6ccbed75b66ab4b65897bb9abc91763ea @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16562: bc797241a9a76df14e51a117b2988c8a9d07cc94 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16562/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
