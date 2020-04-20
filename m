Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6B41B11C6
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 18:39:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 259EC6E80B;
	Mon, 20 Apr 2020 16:39:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BF82D6E80B;
 Mon, 20 Apr 2020 16:39:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B8A37A47E2;
 Mon, 20 Apr 2020 16:39:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Mon, 20 Apr 2020 16:39:49 -0000
Message-ID: <158740078972.29874.5706903594583745055@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200420103816.434734-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20200420103816.434734-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_store_HW_tagging_information_into_tracepoints_=28rev4?=
 =?utf-8?q?=29?=
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

Series: drm/i915: store HW tagging information into tracepoints (rev4)
URL   : https://patchwork.freedesktop.org/series/75849/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8328_full -> Patchwork_17379_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17379_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17379_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17379_full:

### Piglit changes ###

#### Possible regressions ####

  * spec@!opengl 1.3@gl-1.3-texture-env:
    - pig-snb-2600:       NOTRUN -> [FAIL][1] +8 similar issues
   [1]: None

  
New tests
---------

  New tests have been introduced between CI_DRM_8328_full and Patchwork_17379_full:

### New Piglit tests (6) ###

  * spec@arb_texture_cube_map@cubemap-shader lod:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture() 1d:
    - Statuses : 1 fail(s)
    - Exec time: [1.27] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture(bias) 1darray:
    - Statuses : 1 fail(s)
    - Exec time: [2.11] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture(bias) 2darray:
    - Statuses : 1 fail(s)
    - Exec time: [2.26] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texturelodoffset 1darrayshadow:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureproj(bias) 1d_projvec4:
    - Statuses : 1 fail(s)
    - Exec time: [2.12] s

  

Known issues
------------

  Here are the changes found in Patchwork_17379_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - shard-apl:          [PASS][2] -> [DMESG-WARN][3] ([i915#180])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-apl4/igt@gem_exec_suspend@basic-s3.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17379/shard-apl2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][4] -> [DMESG-WARN][5] ([i915#180])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17379/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][6] -> [FAIL][7] ([i915#454])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17379/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-kbl:          [PASS][8] -> [FAIL][9] ([i915#1119] / [i915#93] / [i915#95])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-kbl4/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17379/shard-kbl4/igt@kms_big_fb@linear-32bpp-rotate-0.html
    - shard-apl:          [PASS][10] -> [FAIL][11] ([i915#1119] / [i915#95])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-apl1/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17379/shard-apl3/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          [PASS][12] -> [FAIL][13] ([i915#54])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17379/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * igt@kms_cursor_legacy@pipe-c-torture-move:
    - shard-iclb:         [PASS][14] -> [DMESG-WARN][15] ([i915#128])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-iclb3/igt@kms_cursor_legacy@pipe-c-torture-move.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17379/shard-iclb1/igt@kms_cursor_legacy@pipe-c-torture-move.html

  * igt@kms_flip_tiling@flip-to-x-tiled:
    - shard-skl:          [PASS][16] -> [FAIL][17] ([i915#167])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-skl3/igt@kms_flip_tiling@flip-to-x-tiled.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17379/shard-skl3/igt@kms_flip_tiling@flip-to-x-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render:
    - shard-snb:          [PASS][18] -> [SKIP][19] ([fdo#109271])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-snb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17379/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][20] -> [FAIL][21] ([fdo#108145] / [i915#265])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17379/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][22] -> [SKIP][23] ([fdo#109441]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17379/shard-iclb1/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][24] -> [DMESG-WARN][25] ([i915#180] / [i915#95])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17379/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@bcs0}:
    - shard-apl:          [DMESG-WARN][26] ([i915#180]) -> [PASS][27] +4 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-apl8/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17379/shard-apl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_mmap_gtt@flink-race:
    - shard-tglb:         [INCOMPLETE][28] -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-tglb3/igt@gem_mmap_gtt@flink-race.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17379/shard-tglb8/igt@gem_mmap_gtt@flink-race.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][30] ([i915#180] / [i915#95]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17379/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html
    - shard-kbl:          [INCOMPLETE][32] ([i915#155] / [i915#95]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-kbl3/igt@i915_suspend@fence-restore-tiled2untiled.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17379/shard-kbl6/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
    - shard-glk:          [FAIL][34] ([i915#54]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-glk8/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17379/shard-glk8/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][36] ([i915#1188]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17379/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][38] ([i915#180]) -> [PASS][39] +4 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17379/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][40] ([fdo#108145] / [i915#265]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17379/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][42] ([fdo#109441]) -> [PASS][43] +3 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17379/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][44] ([i915#31]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-kbl2/igt@kms_setmode@basic.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17379/shard-kbl2/igt@kms_setmode@basic.html

  * {igt@perf@blocking-parameterized}:
    - shard-iclb:         [FAIL][46] ([i915#1542]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-iclb8/igt@perf@blocking-parameterized.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17379/shard-iclb4/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][48] ([i915#468]) -> [FAIL][49] ([i915#454])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17379/shard-tglb8/igt@i915_pm_dc@dc6-dpms.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#167]: https://gitlab.freedesktop.org/drm/intel/issues/167
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8328 -> Patchwork_17379

  CI-20190529: 20190529
  CI_DRM_8328: 77c1f57ceed8844ac2eccde781f540fae4e6604d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5602: a8fcccd15dcc2dd409edd23785a2d6f6e85fb682 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17379: 88fa70a96d6c994b655a321e1bc56f2494ad638a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17379/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
