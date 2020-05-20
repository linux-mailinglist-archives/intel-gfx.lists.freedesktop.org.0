Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D63D1DA86A
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 05:03:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A7EC6E3C7;
	Wed, 20 May 2020 03:03:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1AAE16E3C4;
 Wed, 20 May 2020 03:03:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E8D19A47E2;
 Wed, 20 May 2020 03:03:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 20 May 2020 03:03:47 -0000
Message-ID: <158994382792.30687.11702651918797307679@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200519132046.22443-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200519132046.22443-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915/selftests=3A_Add_test?=
 =?utf-8?q?s_for_timeslicing_virtual_engines?=
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

Series: series starting with [CI,1/3] drm/i915/selftests: Add tests for timeslicing virtual engines
URL   : https://patchwork.freedesktop.org/series/77414/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8505_full -> Patchwork_17712_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17712_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8505/shard-apl7/igt@kms_hdr@bpc-switch-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17712/shard-apl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][3] -> [FAIL][4] ([fdo#108145] / [i915#265]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8505/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17712/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109441]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8505/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17712/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html

  
#### Possible fixes ####

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [DMESG-WARN][7] ([i915#180] / [i915#95]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8505/shard-apl4/igt@gem_workarounds@suspend-resume.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17712/shard-apl1/igt@gem_workarounds@suspend-resume.html
    - shard-kbl:          [DMESG-WARN][9] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8505/shard-kbl6/igt@gem_workarounds@suspend-resume.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17712/shard-kbl6/igt@gem_workarounds@suspend-resume.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-skl:          [INCOMPLETE][11] ([i915#198]) -> [PASS][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8505/shard-skl5/igt@i915_pm_dc@dc5-psr.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17712/shard-skl10/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][13] ([i915#180]) -> [PASS][14] +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8505/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17712/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html
    - shard-skl:          [INCOMPLETE][15] ([i915#69]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8505/shard-skl10/igt@i915_suspend@fence-restore-tiled2untiled.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17712/shard-skl3/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-apl:          [FAIL][17] ([i915#54]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8505/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17712/shard-apl3/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][19] ([i915#180]) -> [PASS][20] +4 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8505/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17712/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][21] ([i915#1188]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8505/shard-skl2/igt@kms_hdr@bpc-switch.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17712/shard-skl9/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - shard-skl:          [FAIL][23] ([i915#53]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8505/shard-skl6/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17712/shard-skl10/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][25] ([fdo#108145] / [i915#265]) -> [PASS][26] +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8505/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17712/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [SKIP][27] ([fdo#109441]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8505/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17712/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][29] ([i915#31]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8505/shard-skl2/igt@kms_setmode@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17712/shard-skl1/igt@kms_setmode@basic.html

  * {igt@perf@blocking-parameterized}:
    - shard-iclb:         [FAIL][31] ([i915#1542]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8505/shard-iclb3/igt@perf@blocking-parameterized.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17712/shard-iclb7/igt@perf@blocking-parameterized.html

  * {igt@sysfs_heartbeat_interval@mixed@vcs0}:
    - shard-skl:          [FAIL][33] ([i915#1731]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8505/shard-skl5/igt@sysfs_heartbeat_interval@mixed@vcs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17712/shard-skl10/igt@sysfs_heartbeat_interval@mixed@vcs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][35] ([i915#588]) -> [SKIP][36] ([i915#658])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8505/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17712/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][37] ([i915#454]) -> [SKIP][38] ([i915#468])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8505/shard-tglb1/igt@i915_pm_dc@dc6-psr.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17712/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [FAIL][39] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][40] ([i915#1319])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8505/shard-apl2/igt@kms_content_protection@atomic-dpms.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17712/shard-apl4/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [FAIL][41] ([fdo#110321]) -> [TIMEOUT][42] ([i915#1319])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8505/shard-apl8/igt@kms_content_protection@lic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17712/shard-apl4/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [FAIL][43] ([fdo#110321] / [i915#93] / [i915#95]) -> [TIMEOUT][44] ([i915#1319])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8505/shard-kbl2/igt@kms_content_protection@srm.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17712/shard-kbl1/igt@kms_content_protection@srm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8505 -> Patchwork_17712

  CI-20190529: 20190529
  CI_DRM_8505: dd6f7db19af1ccb376719c8759afe6be9107315c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5660: bf43e3e45a17c16094fb3a47b363ccf1c95c28b9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17712: 8921ae04cdd7437e0becf07b16c5d9c38cc70753 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17712/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
