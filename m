Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B031B183F
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 23:20:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEBD66E855;
	Mon, 20 Apr 2020 21:20:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2F4826E853;
 Mon, 20 Apr 2020 21:20:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 16E63A011A;
 Mon, 20 Apr 2020 21:20:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Mon, 20 Apr 2020 21:20:15 -0000
Message-ID: <158741761506.29875.12956265981083237041@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200420111416.23550-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200420111416.23550-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgU0FH?=
 =?utf-8?q?V_support_for_Gen12+_=28rev26=29?=
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

Series: SAGV support for Gen12+ (rev26)
URL   : https://patchwork.freedesktop.org/series/75129/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8328_full -> Patchwork_17381_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17381_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-kbl:          [PASS][1] -> [INCOMPLETE][2] ([i915#1373])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-kbl4/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17381/shard-kbl3/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#151] / [i915#69])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-skl5/igt@i915_pm_rpm@system-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17381/shard-skl5/igt@i915_pm_rpm@system-suspend.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#1119] / [i915#93] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-kbl4/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17381/shard-kbl3/igt@kms_big_fb@linear-32bpp-rotate-0.html
    - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#1119] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-apl1/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17381/shard-apl4/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +4 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17381/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#118] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17381/shard-glk4/igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen:
    - shard-tglb:         [PASS][13] -> [SKIP][14] ([i915#668]) +6 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17381/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17381/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145] / [i915#265])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17381/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17381/shard-iclb6/igt@kms_psr@psr2_cursor_plane_move.html

  
#### Possible fixes ####

  * igt@gem_mmap_gtt@flink-race:
    - shard-tglb:         [INCOMPLETE][21] -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-tglb3/igt@gem_mmap_gtt@flink-race.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17381/shard-tglb5/igt@gem_mmap_gtt@flink-race.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][23] ([i915#180] / [i915#95]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17381/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
    - shard-glk:          [FAIL][25] ([i915#54]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-glk8/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17381/shard-glk1/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][27] ([i915#180]) -> [PASS][28] +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17381/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][29] ([i915#180]) -> [PASS][30] +5 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17381/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][31] ([fdo#109441]) -> [PASS][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17381/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][33] ([i915#31]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-apl8/igt@kms_setmode@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17381/shard-apl8/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-hsw:          [INCOMPLETE][35] ([i915#61]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-hsw6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17381/shard-hsw4/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * {igt@perf@blocking-parameterized}:
    - shard-iclb:         [FAIL][37] ([i915#1542]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-iclb8/igt@perf@blocking-parameterized.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17381/shard-iclb1/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][39] ([i915#658]) -> [SKIP][40] ([i915#588])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17381/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][41] ([i915#454]) -> [SKIP][42] ([i915#668])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-tglb1/igt@i915_pm_dc@dc6-psr.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17381/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@gem-mmap-type:
    - shard-snb:          [SKIP][43] ([fdo#109271]) -> [INCOMPLETE][44] ([i915#82])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-snb6/igt@i915_pm_rpm@gem-mmap-type.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17381/shard-snb5/igt@i915_pm_rpm@gem-mmap-type.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1373]: https://gitlab.freedesktop.org/drm/intel/issues/1373
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8328 -> Patchwork_17381

  CI-20190529: 20190529
  CI_DRM_8328: 77c1f57ceed8844ac2eccde781f540fae4e6604d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5602: a8fcccd15dcc2dd409edd23785a2d6f6e85fb682 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17381: 3089a6e31ac954dd2dbbe7f49c5dd799586dbea3 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17381/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
