Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E85381D77A1
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 13:47:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3837E6E40B;
	Mon, 18 May 2020 11:47:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5DC9C6E167;
 Mon, 18 May 2020 11:47:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 57A58A0BA8;
 Mon, 18 May 2020 11:47:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 18 May 2020 11:47:08 -0000
Message-ID: <158980242832.31686.3337212381833119936@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200516190940.12675-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200516190940.12675-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Return_error_from_dbuf_allocation_failure?=
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

Series: drm/i915/display: Return error from dbuf allocation failure
URL   : https://patchwork.freedesktop.org/series/77325/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8493_full -> Patchwork_17682_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_17682_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17682_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17682_full:

### IGT changes ###

#### Warnings ####

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen:
    - shard-tglb:         [FAIL][1] ([i915#402]) -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-iclb:         [FAIL][3] ([i915#1757]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-iclb3/igt@kms_panel_fitting@atomic-fastset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-iclb1/igt@kms_panel_fitting@atomic-fastset.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_ctx_shared@exec-single-timeline}:
    - shard-iclb:         NOTRUN -> [INCOMPLETE][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline.html

  * {igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb}:
    - shard-tglb:         [FAIL][6] ([i915#402]) -> [FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-tglb1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-tglb3/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  
Known issues
------------

  Here are the changes found in Patchwork_17682_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][8] -> [DMESG-WARN][9] ([i915#1436] / [i915#716])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-apl4/igt@gen9_exec_parse@allowed-all.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-apl4/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-kbl:          [PASS][10] -> [FAIL][11] ([i915#54] / [i915#93] / [i915#95])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][12] -> [DMESG-WARN][13] ([i915#180]) +3 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [PASS][14] -> [INCOMPLETE][15] ([i915#69])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-skl10/igt@kms_fbcon_fbt@psr-suspend.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-skl7/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip_tiling@flip-changes-tiling-y:
    - shard-apl:          [PASS][16] -> [FAIL][17] ([i915#95])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-apl4/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-apl2/igt@kms_flip_tiling@flip-changes-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][18] -> [DMESG-WARN][19] ([i915#180] / [i915#93] / [i915#95])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][20] -> [FAIL][21] ([i915#1188])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][22] -> [SKIP][23] ([fdo#109441])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-iclb8/igt@kms_psr@psr2_suspend.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@rcs0}:
    - shard-kbl:          [DMESG-WARN][24] ([i915#180]) -> [PASS][25] +4 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:
    - shard-tglb:         [FAIL][26] ([i915#1897]) -> [PASS][27] +4 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [DMESG-WARN][28] ([i915#180]) -> [PASS][29] +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-rgb565-render-xtiled:
    - shard-snb:          [SKIP][30] ([fdo#109271]) -> [PASS][31] +3 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-snb4/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-snb2/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html

  * {igt@kms_flip@flip-vs-suspend@b-edp1}:
    - shard-skl:          [INCOMPLETE][32] ([i915#198]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-skl3/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-skl7/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:
    - shard-tglb:         [FAIL][34] ([i915#402]) -> [PASS][35] +3 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][36] ([i915#1188]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-skl2/igt@kms_hdr@bpc-switch.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-skl5/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-position-hole-dpms-pipe-d-planes:
    - shard-tglb:         [FAIL][38] ([i915#1897] / [i915#402]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-tglb7/igt@kms_plane@plane-position-hole-dpms-pipe-d-planes.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-tglb2/igt@kms_plane@plane-position-hole-dpms-pipe-d-planes.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][40] ([fdo#109441]) -> [PASS][41] +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][42] ([i915#468]) -> [SKIP][43] ([i915#668])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-tglb1/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-90:
    - shard-tglb:         [FAIL][44] ([i915#1172]) -> [FAIL][45] ([i915#1172] / [i915#402])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-tglb8/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-tglb1/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-tglb:         [FAIL][46] ([i915#1172] / [i915#402]) -> [FAIL][47] ([i915#1172])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-tglb5/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-tglb7/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_color@pipe-b-ctm-0-5:
    - shard-tglb:         [FAIL][48] ([i915#1149] / [i915#402]) -> [FAIL][49] ([i915#1149])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-tglb3/igt@kms_color@pipe-b-ctm-0-5.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-tglb6/igt@kms_color@pipe-b-ctm-0-5.html

  * igt@kms_color@pipe-c-gamma:
    - shard-tglb:         [FAIL][50] ([i915#1149]) -> [FAIL][51] ([i915#1149] / [i915#402])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-tglb6/igt@kms_color@pipe-c-gamma.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-tglb3/igt@kms_color@pipe-c-gamma.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [TIMEOUT][52] ([i915#1319]) -> [FAIL][53] ([fdo#110321] / [fdo#110336])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-apl3/igt@kms_content_protection@atomic.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-apl2/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [FAIL][54] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][55] ([i915#1319])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-apl8/igt@kms_content_protection@atomic-dpms.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-apl6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-d-cursor-128x42-offscreen:
    - shard-tglb:         [FAIL][56] -> [FAIL][57] ([i915#402]) +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-128x42-offscreen.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-128x42-offscreen.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-tglb:         [FAIL][58] ([i915#1897]) -> [FAIL][59] ([i915#1897] / [i915#402]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_plane@plane-panning-top-left-pipe-d-planes:
    - shard-tglb:         [FAIL][60] ([i915#1897] / [i915#402]) -> [FAIL][61] ([i915#1897]) +2 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-tglb6/igt@kms_plane@plane-panning-top-left-pipe-d-planes.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/shard-tglb5/igt@kms_plane@plane-panning-top-left-pipe-d-planes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1172]: https://gitlab.freedesktop.org/drm/intel/issues/1172
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1757]: https://gitlab.freedesktop.org/drm/intel/issues/1757
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1897]: https://gitlab.freedesktop.org/drm/intel/issues/1897
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8493 -> Patchwork_17682

  CI-20190529: 20190529
  CI_DRM_8493: 47e0097b33017be45f6826ef82a1f535b81ab9a3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5657: 649eae5c905a7460b44305800f95db83a6dd47cb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17682: 5373218069156b0ada7bdcbaae80511fb5ef8fd3 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17682/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
