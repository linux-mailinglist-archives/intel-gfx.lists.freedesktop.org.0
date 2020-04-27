Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E201BA306
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 13:58:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D83CA6E239;
	Mon, 27 Apr 2020 11:58:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 65FDD6E071;
 Mon, 27 Apr 2020 11:58:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5EAAEA47DB;
 Mon, 27 Apr 2020 11:58:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 27 Apr 2020 11:58:24 -0000
Message-ID: <158798870435.26355.10755664051624457302@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200427092931.29097-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200427092931.29097-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Check_cacheline_is_valid_before_acquiring_=28rev2?=
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

Series: drm/i915/gt: Check cacheline is valid before acquiring (rev2)
URL   : https://patchwork.freedesktop.org/series/76545/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8370_full -> Patchwork_17474_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_17474_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17474_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17474_full:

### IGT changes ###

#### Warnings ####

  * igt@kms_cursor_crc@pipe-d-cursor-128x128-offscreen:
    - shard-skl:          [SKIP][1] ([fdo#109271]) -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-skl2/igt@kms_cursor_crc@pipe-d-cursor-128x128-offscreen.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17474/shard-skl8/igt@kms_cursor_crc@pipe-d-cursor-128x128-offscreen.html

  
Known issues
------------

  Here are the changes found in Patchwork_17474_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#69])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-skl6/igt@gem_softpin@noreloc-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17474/shard-skl9/igt@gem_softpin@noreloc-s3.html

  * igt@i915_selftest@live@gt_pm:
    - shard-kbl:          [PASS][5] -> [DMESG-FAIL][6] ([i915#1791])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-kbl4/igt@i915_selftest@live@gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17474/shard-kbl4/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hangcheck:
    - shard-iclb:         [PASS][7] -> [INCOMPLETE][8] ([i915#1580])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-iclb1/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17474/shard-iclb7/igt@i915_selftest@live@hangcheck.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17474/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#53] / [i915#93] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-kbl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17474/shard-kbl6/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#53] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-apl2/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17474/shard-apl1/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([fdo#108145] / [i915#265])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17474/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109441]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17474/shard-iclb1/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17474/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][21] ([i915#180]) -> [PASS][22] +6 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17474/shard-apl8/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [DMESG-WARN][23] ([i915#180]) -> [PASS][24] +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-kbl4/igt@i915_suspend@debugfs-reader.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17474/shard-kbl7/igt@i915_suspend@debugfs-reader.html

  * igt@kms_color@pipe-a-ctm-green-to-red:
    - shard-skl:          [FAIL][25] ([i915#129]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-skl1/igt@kms_color@pipe-a-ctm-green-to-red.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17474/shard-skl8/igt@kms_color@pipe-a-ctm-green-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
    - shard-skl:          [FAIL][27] ([i915#54]) -> [PASS][28] +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17474/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [FAIL][29] ([i915#57]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17474/shard-hsw5/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:
    - shard-skl:          [FAIL][31] ([i915#49]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-skl1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17474/shard-skl8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][33] ([i915#1188]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-skl2/igt@kms_hdr@bpc-switch.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17474/shard-skl4/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][35] ([fdo#108145] / [i915#265]) -> [PASS][36] +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17474/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][37] ([fdo#109441]) -> [PASS][38] +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-iclb6/igt@kms_psr@psr2_cursor_render.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17474/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * {igt@perf@blocking-parameterized}:
    - shard-hsw:          [FAIL][39] ([i915#1542]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-hsw6/igt@perf@blocking-parameterized.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17474/shard-hsw4/igt@perf@blocking-parameterized.html

  * {igt@sysfs_heartbeat_interval@mixed@bcs0}:
    - shard-skl:          [INCOMPLETE][41] ([i915#198]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-skl1/igt@sysfs_heartbeat_interval@mixed@bcs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17474/shard-skl2/igt@sysfs_heartbeat_interval@mixed@bcs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][43] ([i915#454]) -> [SKIP][44] ([i915#468])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17474/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - shard-snb:          [SKIP][45] ([fdo#109271]) -> [INCOMPLETE][46] ([i915#82])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-snb4/igt@i915_pm_rpm@basic-pci-d3-state.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17474/shard-snb5/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [INCOMPLETE][47] ([CI#80]) -> [INCOMPLETE][48] ([CI#80] / [i915#155])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-kbl6/igt@i915_suspend@sysfs-reader.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17474/shard-kbl1/igt@i915_suspend@sysfs-reader.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-apl:          [FAIL][49] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][50] ([fdo#108145] / [i915#265])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17474/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][51] ([fdo#109642] / [fdo#111068]) -> [FAIL][52] ([i915#608])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-iclb6/igt@kms_psr2_su@page_flip.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17474/shard-iclb2/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1580]: https://gitlab.freedesktop.org/drm/intel/issues/1580
  [i915#1791]: https://gitlab.freedesktop.org/drm/intel/issues/1791
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
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
  * Linux: CI_DRM_8370 -> Patchwork_17474

  CI-20190529: 20190529
  CI_DRM_8370: 1f3ffd7683d5457e14a1f879a8714a74b7b7faeb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5610: 71fed15724898a8f914666093352a964b70a62fc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17474: fdcf957ff1a2df3a809bc4c2f92f7cb4c793afca @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17474/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
