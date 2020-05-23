Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 073461DF52B
	for <lists+intel-gfx@lfdr.de>; Sat, 23 May 2020 08:14:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA8AA6E092;
	Sat, 23 May 2020 06:14:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9B3A36E088;
 Sat, 23 May 2020 06:14:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 94FDDA47E0;
 Sat, 23 May 2020 06:14:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 23 May 2020 06:14:16 -0000
Message-ID: <159021445658.11805.10651560425469942215@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200522174209.8885-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200522174209.8885-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/4=5D_mm/gup=3A_move_=5F=5Fget=5Fuse?=
 =?utf-8?q?r=5Fpages=5Ffast=28=29_down_a_few_lines_in_gup=2Ec_=28rev2=29?=
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

Series: series starting with [CI,1/4] mm/gup: move __get_user_pages_fast() down a few lines in gup.c (rev2)
URL   : https://patchwork.freedesktop.org/series/77566/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8527_full -> Patchwork_17762_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17762_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17762_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17762_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-glk:          [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8527/shard-glk1/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17762/shard-glk6/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  
Known issues
------------

  Here are the changes found in Patchwork_17762_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@gem-idle:
    - shard-kbl:          [PASS][3] -> [SKIP][4] ([fdo#109271]) +8 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8527/shard-kbl3/igt@i915_pm_rpm@gem-idle.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17762/shard-kbl1/igt@i915_pm_rpm@gem-idle.html

  * igt@i915_selftest@live@gem_contexts:
    - shard-kbl:          [PASS][5] -> [INCOMPLETE][6] ([i915#1591] / [i915#794])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8527/shard-kbl3/igt@i915_selftest@live@gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17762/shard-kbl1/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gtt:
    - shard-kbl:          [PASS][7] -> [DMESG-FAIL][8] ([i915#1396])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8527/shard-kbl3/igt@i915_selftest@live@gtt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17762/shard-kbl1/igt@i915_selftest@live@gtt.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#1119] / [i915#118] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8527/shard-glk9/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17762/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-glk:          [PASS][11] -> [DMESG-FAIL][12] ([i915#1186])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8527/shard-glk8/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17762/shard-glk8/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8527/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17762/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([fdo#108145] / [i915#265])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8527/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17762/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109441])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8527/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17762/shard-iclb5/igt@kms_psr@psr2_dpms.html

  
#### Possible fixes ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][19] ([i915#454]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8527/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17762/shard-iclb7/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-glk:          [FAIL][21] ([i915#1119] / [i915#118] / [i915#95]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8527/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17762/shard-glk4/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2}:
    - shard-glk:          [FAIL][23] ([i915#79]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8527/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17762/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-kbl:          [DMESG-WARN][25] ([i915#180]) -> [PASS][26] +9 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8527/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17762/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][27] ([i915#1188]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8527/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17762/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][29] ([i915#180]) -> [PASS][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8527/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17762/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][31] ([fdo#108145] / [i915#265]) -> [PASS][32] +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8527/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17762/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][33] ([fdo#109441]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8527/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17762/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][35] ([i915#31]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8527/shard-apl7/igt@kms_setmode@basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17762/shard-apl6/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][37] ([i915#454]) -> [SKIP][38] ([i915#468])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8527/shard-tglb8/igt@i915_pm_dc@dc6-dpms.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17762/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][39] ([i915#468]) -> [FAIL][40] ([i915#454])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8527/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17762/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [FAIL][41] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][42] ([i915#1319])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8527/shard-apl8/igt@kms_content_protection@atomic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17762/shard-apl6/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [FAIL][43] ([fdo#110321]) -> [TIMEOUT][44] ([i915#1319]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8527/shard-apl1/igt@kms_content_protection@lic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17762/shard-apl4/igt@kms_content_protection@lic.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-apl:          [FAIL][45] ([fdo#108145] / [i915#265]) -> [FAIL][46] ([fdo#108145] / [i915#265] / [i915#95])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8527/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17762/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [FAIL][47] ([i915#608]) -> [SKIP][48] ([fdo#109642] / [fdo#111068])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8527/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17762/shard-iclb3/igt@kms_psr2_su@page_flip.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          [FAIL][49] ([IGT#2]) -> [FAIL][50] ([IGT#2] / [i915#95])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8527/shard-apl3/igt@kms_sysfs_edid_timing.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17762/shard-apl7/igt@kms_sysfs_edid_timing.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1186]: https://gitlab.freedesktop.org/drm/intel/issues/1186
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1396]: https://gitlab.freedesktop.org/drm/intel/issues/1396
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1591]: https://gitlab.freedesktop.org/drm/intel/issues/1591
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8527 -> Patchwork_17762

  CI-20190529: 20190529
  CI_DRM_8527: 5931295af1b8254640f0defa759a7363f6c896f0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5675: 74f7488fe4f8acf901b18fc9c6c4d45a972dcad5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17762: dbcf6ddb68af341343e3bad85d876ce8aa22a15e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17762/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
