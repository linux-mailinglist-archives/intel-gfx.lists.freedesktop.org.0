Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1A51B1228
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 18:46:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9FF46E81B;
	Mon, 20 Apr 2020 16:46:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 81FCE6E819;
 Mon, 20 Apr 2020 16:46:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 72133A47E0;
 Mon, 20 Apr 2020 16:46:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 20 Apr 2020 16:46:35 -0000
Message-ID: <158740119543.29875.7497010823240150728@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200420105846.16287-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200420105846.16287-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Poison_residual_state_=5BHWSP=5D_across_resume=2E_?=
 =?utf-8?b?KHJldjMp?=
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

Series: drm/i915/gt: Poison residual state [HWSP] across resume. (rev3)
URL   : https://patchwork.freedesktop.org/series/76100/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8328_full -> Patchwork_17380_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17380_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_workarounds@suspend-resume:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2] ([i915#69])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-skl5/igt@gem_workarounds@suspend-resume.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17380/shard-skl3/igt@gem_workarounds@suspend-resume.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-kbl:          [PASS][3] -> [FAIL][4] ([i915#1119] / [i915#93] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-kbl4/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17380/shard-kbl3/igt@kms_big_fb@linear-32bpp-rotate-0.html
    - shard-apl:          [PASS][5] -> [FAIL][6] ([i915#1119] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-apl1/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17380/shard-apl6/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_cursor_legacy@all-pipes-torture-bo:
    - shard-tglb:         [PASS][7] -> [DMESG-WARN][8] ([i915#128])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-tglb5/igt@kms_cursor_legacy@all-pipes-torture-bo.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17380/shard-tglb8/igt@kms_cursor_legacy@all-pipes-torture-bo.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [PASS][9] -> [FAIL][10] ([i915#57])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-hsw7/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17380/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_cursor_legacy@pipe-b-torture-bo:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#128])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-kbl3/igt@kms_cursor_legacy@pipe-b-torture-bo.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17380/shard-kbl4/igt@kms_cursor_legacy@pipe-b-torture-bo.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17380/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([fdo#108145] / [i915#265])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17380/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109441]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17380/shard-iclb1/igt@kms_psr@psr2_cursor_plane_move.html

  
#### Possible fixes ####

  * igt@gem_mmap_gtt@flink-race:
    - shard-tglb:         [INCOMPLETE][19] -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-tglb3/igt@gem_mmap_gtt@flink-race.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17380/shard-tglb6/igt@gem_mmap_gtt@flink-race.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][21] ([i915#180] / [i915#95]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17380/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
    - shard-glk:          [FAIL][23] ([i915#54]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-glk8/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17380/shard-glk1/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][25] ([i915#180]) -> [PASS][26] +4 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17380/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][27] ([i915#180]) -> [PASS][28] +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17380/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][29] ([fdo#108145] / [i915#265]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17380/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][31] ([fdo#109441]) -> [PASS][32] +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17380/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][33] ([i915#468]) -> [FAIL][34] ([i915#454])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17380/shard-tglb5/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@system-suspend-devices:
    - shard-snb:          [SKIP][35] ([fdo#109271]) -> [INCOMPLETE][36] ([i915#82])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-snb1/igt@i915_pm_rpm@system-suspend-devices.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17380/shard-snb1/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][37] ([i915#1188]) -> [INCOMPLETE][38] ([i915#198])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8328/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17380/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8328 -> Patchwork_17380

  CI-20190529: 20190529
  CI_DRM_8328: 77c1f57ceed8844ac2eccde781f540fae4e6604d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5602: a8fcccd15dcc2dd409edd23785a2d6f6e85fb682 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17380: 0755d2ee8680587bfa6ad7ebae24e903ac9cce18 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17380/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
