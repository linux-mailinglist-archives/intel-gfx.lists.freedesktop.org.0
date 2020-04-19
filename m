Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A631AF67B
	for <lists+intel-gfx@lfdr.de>; Sun, 19 Apr 2020 05:54:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73A736E442;
	Sun, 19 Apr 2020 03:54:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3CCDA6E441;
 Sun, 19 Apr 2020 03:54:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2F3E4A008A;
 Sun, 19 Apr 2020 03:54:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Sun, 19 Apr 2020 03:54:32 -0000
Message-ID: <158726847216.15014.11324997535741654116@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200417212408.19649-1-shawn.c.lee@intel.com>
In-Reply-To: <20200417212408.19649-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/mst=3A_filter_out_the_display_mode_exceed_sink=27s_capabi?=
 =?utf-8?q?lity?=
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

Series: drm/i915/mst: filter out the display mode exceed sink's capability
URL   : https://patchwork.freedesktop.org/series/76095/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8318_full -> Patchwork_17348_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17348_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-apl8/igt@gem_softpin@noreloc-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17348/shard-apl4/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_rps@waitboost:
    - shard-apl:          [PASS][3] -> [FAIL][4] ([i915#39])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-apl3/igt@i915_pm_rps@waitboost.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17348/shard-apl3/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:
    - shard-apl:          [PASS][5] -> [FAIL][6] ([i915#54] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17348/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-random:
    - shard-kbl:          [PASS][7] -> [FAIL][8] ([i915#54] / [i915#93] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17348/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         [PASS][9] -> [SKIP][10] ([i915#668])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17348/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#123] / [i915#69])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-skl2/igt@kms_frontbuffer_tracking@psr-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17348/shard-skl1/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#69])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-skl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17348/shard-skl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17348/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-position-hole-pipe-a-planes:
    - shard-snb:          [PASS][17] -> [SKIP][18] ([fdo#109271]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-snb2/igt@kms_plane@plane-position-hole-pipe-a-planes.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17348/shard-snb1/igt@kms_plane@plane-position-hole-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145] / [i915#265])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17348/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17348/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][23] -> [FAIL][24] ([i915#31])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-apl7/igt@kms_setmode@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17348/shard-apl8/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][25] ([i915#716]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-skl7/igt@gen9_exec_parse@allowed-single.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17348/shard-skl8/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-snb:          [FAIL][27] ([i915#1066]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-snb4/igt@i915_pm_rc6_residency@rc6-idle.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17348/shard-snb6/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [INCOMPLETE][29] ([i915#1531] / [i915#1658]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-tglb1/igt@i915_selftest@live@requests.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17348/shard-tglb6/igt@i915_selftest@live@requests.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [FAIL][31] ([i915#93] / [i915#95]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17348/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * {igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1}:
    - shard-skl:          [FAIL][33] ([i915#34]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17348/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][35] ([i915#1188]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-skl4/igt@kms_hdr@bpc-switch.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17348/shard-skl3/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][37] ([fdo#108145] / [i915#265]) -> [PASS][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17348/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-y:
    - shard-apl:          [FAIL][39] ([i915#95]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-apl1/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17348/shard-apl8/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][41] ([fdo#109441]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17348/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17348/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * {igt@sysfs_timeslice_duration@timeout@vecs0}:
    - shard-iclb:         [FAIL][45] -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-iclb8/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17348/shard-iclb3/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][47] ([i915#658]) -> [SKIP][48] ([i915#588])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17348/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-kbl:          [FAIL][49] ([fdo#108145] / [i915#265]) -> [FAIL][50] ([fdo#108145] / [i915#265] / [i915#62])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17348/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-apl:          [FAIL][51] ([fdo#108145] / [i915#265]) -> [FAIL][52] ([fdo#108145] / [i915#265] / [i915#95])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17348/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1066]: https://gitlab.freedesktop.org/drm/intel/issues/1066
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#1658]: https://gitlab.freedesktop.org/drm/intel/issues/1658
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8318 -> Patchwork_17348

  CI-20190529: 20190529
  CI_DRM_8318: 9bca43263f42b286d5b761437854909817c6ff3b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5599: cdb07101dda33e2fcb0f4c2aa199c47159d88f35 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17348: 769dba11f1d742f15e134059634023f1a747e7fa @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17348/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
