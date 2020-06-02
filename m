Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5741EBA34
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jun 2020 13:14:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 679676E130;
	Tue,  2 Jun 2020 11:14:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 78CF06E130;
 Tue,  2 Jun 2020 11:14:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 503F0A47E2;
 Tue,  2 Jun 2020 11:14:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Aditya Swarup" <aditya.swarup@intel.com>
Date: Tue, 02 Jun 2020 11:14:10 -0000
Message-ID: <159109645032.21428.4820634463381266765@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200602014910.13019-1-aditya.swarup@intel.com>
In-Reply-To: <20200602014910.13019-1-aditya.swarup@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Add_Wa=5F1409371443?=
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

Series: drm/i915/tgl: Add Wa_1409371443
URL   : https://patchwork.freedesktop.org/series/77892/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8568_full -> Patchwork_17837_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17837_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
    - shard-skl:          [PASS][1] -> [FAIL][2] ([i915#1528])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-skl1/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17837/shard-skl10/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +5 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17837/shard-apl8/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [PASS][5] -> [FAIL][6] ([i915#57])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-hsw2/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17837/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([fdo#108145] / [i915#265]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17837/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109441]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17837/shard-iclb7/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-a-ts-continuation-idle-hang:
    - shard-snb:          [PASS][11] -> [SKIP][12] ([fdo#109271])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-snb1/igt@kms_vblank@pipe-a-ts-continuation-idle-hang.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17837/shard-snb6/igt@kms_vblank@pipe-a-ts-continuation-idle-hang.html

  * igt@kms_vblank@pipe-c-wait-idle-hang:
    - shard-apl:          [PASS][13] -> [TIMEOUT][14] ([i915#1635]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-apl8/igt@kms_vblank@pipe-c-wait-idle-hang.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17837/shard-apl8/igt@kms_vblank@pipe-c-wait-idle-hang.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@rcs0}:
    - shard-apl:          [DMESG-WARN][15] ([i915#180]) -> [PASS][16] +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-apl1/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17837/shard-apl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-apl:          [INCOMPLETE][17] -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-apl8/igt@gem_workarounds@suspend-resume-fd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17837/shard-apl6/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_rpm@system-suspend-devices:
    - shard-hsw:          [INCOMPLETE][19] ([i915#151] / [i915#61]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-hsw8/igt@i915_pm_rpm@system-suspend-devices.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17837/shard-hsw8/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge:
    - shard-apl:          [FAIL][21] ([i915#70] / [i915#95]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-apl4/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17837/shard-apl8/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-glk:          [DMESG-WARN][23] ([i915#1926]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-glk9/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17837/shard-glk8/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1}:
    - shard-hsw:          [INCOMPLETE][25] ([i915#61]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-hsw4/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17837/shard-hsw4/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][27] ([i915#1188]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17837/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][29] ([fdo#108145] / [i915#265]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17837/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][31] ([i915#173]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-iclb1/igt@kms_psr@no_drrs.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17837/shard-iclb4/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][33] ([fdo#109441]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-iclb5/igt@kms_psr@psr2_suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17837/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17837/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
    - shard-skl:          [INCOMPLETE][37] ([i915#69]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-skl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17837/shard-skl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * {igt@perf@polling-parameterized}:
    - shard-hsw:          [FAIL][39] ([i915#1542]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-hsw6/igt@perf@polling-parameterized.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17837/shard-hsw1/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][41] ([i915#468]) -> [FAIL][42] ([i915#1899])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17837/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [FAIL][43] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][44] ([i915#1319] / [i915#1635])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-apl6/igt@kms_content_protection@atomic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17837/shard-apl7/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][45] ([i915#1319] / [i915#1635]) -> [FAIL][46] ([fdo#110321] / [fdo#110336])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-apl8/igt@kms_content_protection@atomic-dpms.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17837/shard-apl6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [FAIL][47] ([fdo#110321]) -> [TIMEOUT][48] ([i915#1319] / [i915#1635])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-apl4/igt@kms_content_protection@srm.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17837/shard-apl8/igt@kms_content_protection@srm.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-glk:          [DMESG-WARN][49] ([i915#1926]) -> [DMESG-FAIL][50] ([i915#1925] / [i915#1926])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-glk4/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17837/shard-glk2/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1899]: https://gitlab.freedesktop.org/drm/intel/issues/1899
  [i915#1925]: https://gitlab.freedesktop.org/drm/intel/issues/1925
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1927]: https://gitlab.freedesktop.org/drm/intel/issues/1927
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#70]: https://gitlab.freedesktop.org/drm/intel/issues/70
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8568 -> Patchwork_17837

  CI-20190529: 20190529
  CI_DRM_8568: 124bafc80c3ce62fc61b8eabb2657c87424b999b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5690: bea881189520a9cccbb1c1cb454ac5b6fdaea40e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17837: fe426e69f68a924170739c2e34f71a3771b37c0f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17837/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
