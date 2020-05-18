Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF0F1D7A30
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 15:39:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA6F86E02B;
	Mon, 18 May 2020 13:39:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 68B6289F55;
 Mon, 18 May 2020 13:39:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5FF66A0BD0;
 Mon, 18 May 2020 13:39:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 18 May 2020 13:39:45 -0000
Message-ID: <158980918536.31688.10584196627471287662@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200516193332.27995-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200516193332.27995-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Change_priority_overflow_detection?=
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

Series: drm/i915/selftests: Change priority overflow detection
URL   : https://patchwork.freedesktop.org/series/77326/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8494_full -> Patchwork_17683_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17683_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-apl1/igt@gem_softpin@noreloc-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17683/shard-apl6/igt@gem_softpin@noreloc-s3.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-random:
    - shard-apl:          [PASS][3] -> [FAIL][4] ([i915#54])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17683/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html

  * igt@kms_cursor_legacy@pipe-c-torture-move:
    - shard-iclb:         [PASS][5] -> [DMESG-WARN][6] ([i915#128])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-iclb3/igt@kms_cursor_legacy@pipe-c-torture-move.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17683/shard-iclb5/igt@kms_cursor_legacy@pipe-c-torture-move.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#1188])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17683/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([fdo#108145] / [i915#265])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17683/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109441])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17683/shard-iclb5/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17683/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * {igt@gem_exec_schedule@pi-shared-iova@rcs0}:
    - shard-tglb:         [INCOMPLETE][15] ([i915#1193]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb2/igt@gem_exec_schedule@pi-shared-iova@rcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17683/shard-tglb8/igt@gem_exec_schedule@pi-shared-iova@rcs0.html

  * {igt@kms_atomic_transition@plane-all-transition-nonblocking@pipe-b}:
    - shard-kbl:          [DMESG-WARN][17] ([i915#78]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-kbl2/igt@kms_atomic_transition@plane-all-transition-nonblocking@pipe-b.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17683/shard-kbl3/igt@kms_atomic_transition@plane-all-transition-nonblocking@pipe-b.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:
    - shard-tglb:         [FAIL][19] ([i915#1897]) -> [PASS][20] +4 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb1/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17683/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen:
    - shard-skl:          [FAIL][21] ([i915#54]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17683/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1}:
    - shard-skl:          [FAIL][23] ([i915#79]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17683/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][25] ([i915#180]) -> [PASS][26] +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17683/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:
    - shard-tglb:         [FAIL][27] ([i915#1897] / [i915#402]) -> [PASS][28] +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17683/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][29] ([i915#1188]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-skl9/igt@kms_hdr@bpc-switch.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17683/shard-skl1/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][31] ([i915#180]) -> [PASS][32] +7 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17683/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][33] ([fdo#108145] / [i915#265]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17683/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_cursor@pipe-a-primary-size-256:
    - shard-glk:          [FAIL][35] ([i915#1559]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-glk5/igt@kms_plane_cursor@pipe-a-primary-size-256.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17683/shard-glk8/igt@kms_plane_cursor@pipe-a-primary-size-256.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][37] ([fdo#109441]) -> [PASS][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-iclb8/igt@kms_psr@psr2_sprite_plane_move.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17683/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  
#### Warnings ####

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - shard-tglb:         [FAIL][39] ([i915#1172] / [i915#1897] / [i915#402]) -> [FAIL][40] ([i915#1172] / [i915#1897]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb8/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17683/shard-tglb6/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_color@pipe-c-gamma:
    - shard-tglb:         [FAIL][41] ([i915#1149] / [i915#1897]) -> [FAIL][42] ([i915#1149] / [i915#1897] / [i915#402]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb7/igt@kms_color@pipe-c-gamma.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17683/shard-tglb6/igt@kms_color@pipe-c-gamma.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [TIMEOUT][43] ([i915#1319]) -> [FAIL][44] ([fdo#110321])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-apl7/igt@kms_content_protection@srm.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17683/shard-apl7/igt@kms_content_protection@srm.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:
    - shard-tglb:         [FAIL][45] ([i915#1897]) -> [FAIL][46] ([i915#1897] / [i915#402]) +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17683/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html

  * igt@kms_plane@plane-panning-top-left-pipe-d-planes:
    - shard-tglb:         [FAIL][47] ([i915#1897] / [i915#402]) -> [FAIL][48] ([i915#1897]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb5/igt@kms_plane@plane-panning-top-left-pipe-d-planes.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17683/shard-tglb8/igt@kms_plane@plane-panning-top-left-pipe-d-planes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1172]: https://gitlab.freedesktop.org/drm/intel/issues/1172
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1193]: https://gitlab.freedesktop.org/drm/intel/issues/1193
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1559]: https://gitlab.freedesktop.org/drm/intel/issues/1559
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1897]: https://gitlab.freedesktop.org/drm/intel/issues/1897
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8494 -> Patchwork_17683

  CI-20190529: 20190529
  CI_DRM_8494: 3d15348fde9b998e754da0b0655baf02b98e7f17 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5657: 649eae5c905a7460b44305800f95db83a6dd47cb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17683: 93bf9d73d840856e26efcef0de94debda27c3b2e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17683/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
