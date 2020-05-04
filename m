Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0B41C3717
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 12:41:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 866FF6E373;
	Mon,  4 May 2020 10:40:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7F8F36E366;
 Mon,  4 May 2020 10:40:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 791C8A0BC6;
 Mon,  4 May 2020 10:40:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 04 May 2020 10:40:57 -0000
Message-ID: <158858885747.5817.14635032898376154094@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200503171513.18704-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200503171513.18704-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Lazily_acquire_the_device_wakeref_for_freeing_obje?=
 =?utf-8?q?cts_=28rev2=29?=
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

Series: drm/i915/gem: Lazily acquire the device wakeref for freeing objects (rev2)
URL   : https://patchwork.freedesktop.org/series/76440/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8414_full -> Patchwork_17557_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17557_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8414/shard-iclb2/igt@gem_exec_params@invalid-bsd-ring.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17557/shard-iclb3/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8414/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17557/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_legacy@pipe-b-torture-bo:
    - shard-tglb:         [PASS][5] -> [DMESG-WARN][6] ([i915#128]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8414/shard-tglb3/igt@kms_cursor_legacy@pipe-b-torture-bo.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17557/shard-tglb1/igt@kms_cursor_legacy@pipe-b-torture-bo.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180] / [i915#93] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8414/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17557/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8414/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17557/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#1188]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8414/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17557/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([fdo#108145] / [i915#265])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8414/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17557/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109642] / [fdo#111068])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8414/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17557/shard-iclb3/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109441]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8414/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17557/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [PASS][19] -> [FAIL][20] ([i915#31])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8414/shard-hsw1/igt@kms_setmode@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17557/shard-hsw2/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@kms_cursor_legacy@all-pipes-torture-bo:
    - shard-hsw:          [DMESG-WARN][21] ([i915#128]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8414/shard-hsw4/igt@kms_cursor_legacy@all-pipes-torture-bo.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17557/shard-hsw4/igt@kms_cursor_legacy@all-pipes-torture-bo.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-kbl:          [DMESG-WARN][23] ([i915#180]) -> [PASS][24] +6 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8414/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17557/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][25] ([fdo#108145] / [i915#265]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8414/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17557/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][27] ([fdo#109441]) -> [PASS][28] +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8414/shard-iclb8/igt@kms_psr@psr2_suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17557/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * {igt@perf@polling-parameterized}:
    - shard-hsw:          [FAIL][29] ([i915#1542]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8414/shard-hsw6/igt@perf@polling-parameterized.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17557/shard-hsw7/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][31] ([i915#658]) -> [SKIP][32] ([i915#588])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8414/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17557/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-apl:          [FAIL][33] ([fdo#108145] / [i915#265]) -> [FAIL][34] ([fdo#108145] / [i915#265] / [i915#95])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8414/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17557/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8414 -> Patchwork_17557

  CI-20190529: 20190529
  CI_DRM_8414: a6f6a61a3cd126f52d1a80c463f4bb3d3dcc1813 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5626: f27fdfff026276ac75c69e487c929a843f66f6ca @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17557: ba14ff75d6a4eb6ad3b7443459fca6528eb797b8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17557/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
