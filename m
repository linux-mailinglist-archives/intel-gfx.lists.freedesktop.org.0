Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AACCA1BFF73
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 17:01:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 506146E921;
	Thu, 30 Apr 2020 15:01:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F3F876E91E;
 Thu, 30 Apr 2020 15:01:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ED70FA47DB;
 Thu, 30 Apr 2020 15:01:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 30 Apr 2020 15:01:17 -0000
Message-ID: <158825887796.31920.14940474059460323319@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200430064957.14942-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200430064957.14942-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Add_tiled_blits_selftest_=28rev2=29?=
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

Series: drm/i915/selftests: Add tiled blits selftest (rev2)
URL   : https://patchwork.freedesktop.org/series/76746/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8399_full -> Patchwork_17525_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17525_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [PASS][1] -> [FAIL][2] ([i915#454])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8399/shard-skl4/igt@i915_pm_dc@dc6-psr.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17525/shard-skl6/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_color@pipe-a-ctm-max:
    - shard-skl:          [PASS][3] -> [FAIL][4] ([i915#168])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8399/shard-skl7/igt@kms_color@pipe-a-ctm-max.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17525/shard-skl5/igt@kms_color@pipe-a-ctm-max.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8399/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17525/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#72]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8399/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17525/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#52] / [i915#54])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8399/shard-skl5/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17525/shard-skl8/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled.html

  * igt@kms_flip_tiling@flip-changes-tiling-yf:
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#699] / [i915#93] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8399/shard-kbl7/igt@kms_flip_tiling@flip-changes-tiling-yf.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17525/shard-kbl7/igt@kms_flip_tiling@flip-changes-tiling-yf.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8399/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17525/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([fdo#108145] / [i915#265]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8399/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17525/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  
#### Possible fixes ####

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][17] ([fdo#109276]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8399/shard-iclb7/igt@gem_exec_params@invalid-bsd-ring.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17525/shard-iclb2/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][19] ([i915#180]) -> [PASS][20] +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8399/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17525/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled:
    - shard-apl:          [FAIL][21] ([i915#52] / [i915#54] / [i915#95]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8399/shard-apl8/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17525/shard-apl7/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [INCOMPLETE][23] ([i915#69]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8399/shard-skl6/igt@kms_fbcon_fbt@psr-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17525/shard-skl9/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip_tiling@flip-changes-tiling-yf:
    - shard-apl:          [FAIL][25] ([i915#95]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8399/shard-apl8/igt@kms_flip_tiling@flip-changes-tiling-yf.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17525/shard-apl7/igt@kms_flip_tiling@flip-changes-tiling-yf.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][27] ([i915#180]) -> [PASS][28] +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8399/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17525/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][29] ([fdo#108145] / [i915#265]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8399/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17525/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][31] ([fdo#109441]) -> [PASS][32] +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8399/shard-iclb5/igt@kms_psr@psr2_suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17525/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * {igt@perf@polling-parameterized}:
    - shard-iclb:         [FAIL][33] ([i915#1542]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8399/shard-iclb8/igt@perf@polling-parameterized.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17525/shard-iclb8/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][35] ([i915#468]) -> [FAIL][36] ([i915#454])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8399/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17525/shard-tglb7/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [INCOMPLETE][37] ([i915#155]) -> [FAIL][38] ([i915#93] / [i915#95])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8399/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17525/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-apl:          [FAIL][39] ([fdo#108145] / [i915#265]) -> [FAIL][40] ([fdo#108145] / [i915#265] / [i915#62])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8399/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17525/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          [FAIL][41] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][42] ([fdo#108145] / [i915#265])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8399/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17525/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [FAIL][43] ([i915#608]) -> [SKIP][44] ([fdo#109642] / [fdo#111068])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8399/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17525/shard-iclb5/igt@kms_psr2_su@page_flip.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          [FAIL][45] ([IGT#2]) -> [FAIL][46] ([IGT#2] / [i915#95])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8399/shard-apl2/igt@kms_sysfs_edid_timing.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17525/shard-apl1/igt@kms_sysfs_edid_timing.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#168]: https://gitlab.freedesktop.org/drm/intel/issues/168
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8399 -> Patchwork_17525

  CI-20190529: 20190529
  CI_DRM_8399: f7cb045d81d2a82a28448638962979ad986d7003 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5616: faab65ff9bfa28d18c23e6f69d30e133b0acd767 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17525: 0cf43fdf0ac051fa943ec1624e5edfb30d79f64d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17525/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
