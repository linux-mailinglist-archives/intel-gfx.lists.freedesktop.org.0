Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF04B1EC56D
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jun 2020 01:05:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 292F56E226;
	Tue,  2 Jun 2020 23:05:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1527B6E226;
 Tue,  2 Jun 2020 23:05:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 06116A0019;
 Tue,  2 Jun 2020 23:05:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 02 Jun 2020 23:05:02 -0000
Message-ID: <159113910202.21427.18350801214152988482@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200602151126.25626-1-jani.nikula@intel.com>
In-Reply-To: <20200602151126.25626-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/params=3A_fix_i915=2Ereset_module_param_type?=
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

Series: drm/i915/params: fix i915.reset module param type
URL   : https://patchwork.freedesktop.org/series/77923/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8572_full -> Patchwork_17844_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17844_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17844_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17844_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-hsw:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17844/shard-hsw8/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17844_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][2] -> [DMESG-WARN][3] ([i915#180]) +2 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17844/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [PASS][4] -> [FAIL][5] ([i915#1119] / [i915#118] / [i915#95])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/shard-glk1/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17844/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][6] -> [FAIL][7] ([i915#1188])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17844/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][8] -> [DMESG-WARN][9] ([i915#180]) +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17844/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][10] -> [FAIL][11] ([fdo#108145] / [i915#265]) +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17844/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#109441])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17844/shard-iclb5/igt@kms_psr@psr2_cursor_plane_onoff.html

  
#### Possible fixes ####

  * {igt@gem_exec_reloc@basic-concurrent0}:
    - shard-apl:          [FAIL][14] ([i915#1930]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/shard-apl2/igt@gem_exec_reloc@basic-concurrent0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17844/shard-apl7/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-apl:          [INCOMPLETE][16] -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/shard-apl7/igt@gem_workarounds@suspend-resume-fd.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17844/shard-apl1/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][18] ([i915#1436] / [i915#716]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/shard-skl3/igt@gen9_exec_parse@allowed-single.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17844/shard-skl4/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-hsw:          [WARN][20] ([i915#1519]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/shard-hsw6/igt@i915_pm_rc6_residency@rc6-idle.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17844/shard-hsw6/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [FAIL][22] ([i915#1119] / [i915#118] / [i915#95]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17844/shard-glk9/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [INCOMPLETE][24] ([i915#1926] / [i915#61]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17844/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-kbl:          [DMESG-WARN][26] ([i915#180]) -> [PASS][27] +2 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17844/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
    - shard-apl:          [DMESG-WARN][28] ([i915#180]) -> [PASS][29] +3 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17844/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][30] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17844/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
    - shard-apl:          [DMESG-WARN][32] ([i915#180] / [i915#95]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/shard-apl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17844/shard-apl2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][34] ([i915#1188]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17844/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][36] ([fdo#108145] / [i915#265]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17844/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-none:
    - shard-iclb:         [FAIL][38] -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/shard-iclb1/igt@kms_plane_multiple@atomic-pipe-b-tiling-none.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17844/shard-iclb8/igt@kms_plane_multiple@atomic-pipe-b-tiling-none.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][40] ([fdo#109441]) -> [PASS][41] +3 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17844/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][42] ([i915#1515]) -> [FAIL][43] ([i915#1515])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17844/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [FAIL][44] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][45] ([i915#1319] / [i915#1635])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/shard-apl7/igt@kms_content_protection@atomic-dpms.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17844/shard-apl6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [TIMEOUT][46] ([i915#1319] / [i915#1635]) -> [TIMEOUT][47] ([i915#1319])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/shard-apl1/igt@kms_content_protection@srm.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17844/shard-apl1/igt@kms_content_protection@srm.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-glk:          [DMESG-FAIL][48] ([i915#1925] / [i915#1926]) -> [DMESG-WARN][49] ([i915#1926])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/shard-glk4/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17844/shard-glk4/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-glk:          [DMESG-WARN][50] ([i915#1926]) -> [DMESG-FAIL][51] ([i915#1925] / [i915#1926])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/shard-glk4/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17844/shard-glk9/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-apl:          [FAIL][52] ([i915#1525] / [i915#95]) -> [FAIL][53] ([i915#1525])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/shard-apl1/igt@kms_fbcon_fbt@fbc.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17844/shard-apl2/igt@kms_fbcon_fbt@fbc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
  [i915#1525]: https://gitlab.freedesktop.org/drm/intel/issues/1525
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1925]: https://gitlab.freedesktop.org/drm/intel/issues/1925
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1927]: https://gitlab.freedesktop.org/drm/intel/issues/1927
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8572 -> Patchwork_17844

  CI-20190529: 20190529
  CI_DRM_8572: 8a7011d0518058c59f13f10af147d1f97b0a1cd0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5690: bea881189520a9cccbb1c1cb454ac5b6fdaea40e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17844: b693251369b3179f16a1789d74a0d7395ef3a7a8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17844/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
