Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 872EF1E34CB
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 03:33:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A19B6E060;
	Wed, 27 May 2020 01:33:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1479B6E060;
 Wed, 27 May 2020 01:33:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 05042A47EB;
 Wed, 27 May 2020 01:33:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Wed, 27 May 2020 01:33:43 -0000
Message-ID: <159054322398.341.8803948665750506887@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200526221447.64110-1-jose.souza@intel.com>
In-Reply-To: <20200526221447.64110-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/6=5D_drm/i915/rkl=3A_Disable_PSR2?=
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

Series: series starting with [1/6] drm/i915/rkl: Disable PSR2
URL   : https://patchwork.freedesktop.org/series/77676/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8540_full -> Patchwork_17781_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17781_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17781_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17781_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-apl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8540/shard-apl4/igt@gem_workarounds@suspend-resume-fd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/shard-apl1/igt@gem_workarounds@suspend-resume-fd.html

  * igt@runner@aborted:
    - shard-hsw:          NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/shard-hsw1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17781_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@render:
    - shard-skl:          [PASS][4] -> [FAIL][5] ([i915#1528])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8540/shard-skl9/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/shard-skl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][6] -> [DMESG-WARN][7] ([i915#180]) +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8540/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][8] -> [DMESG-WARN][9] ([i915#180]) +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8540/shard-apl1/igt@i915_suspend@sysfs-reader.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/shard-apl1/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [PASS][10] -> [FAIL][11] ([i915#1119] / [i915#118] / [i915#95])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8540/shard-glk5/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:
    - shard-kbl:          [PASS][12] -> [FAIL][13] ([i915#54] / [i915#93] / [i915#95])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8540/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][14] -> [FAIL][15] ([i915#72]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8540/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-glk:          [PASS][16] -> [DMESG-WARN][17] ([i915#1926] / [i915#1927])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8540/shard-glk7/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/shard-glk9/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][18] -> [FAIL][19] ([fdo#108145] / [i915#265]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8540/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_prop_blob@blob-prop-lifetime:
    - shard-hsw:          [PASS][20] -> [DMESG-WARN][21] ([i915#1927])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8540/shard-hsw7/igt@kms_prop_blob@blob-prop-lifetime.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/shard-hsw1/igt@kms_prop_blob@blob-prop-lifetime.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][22] -> [FAIL][23] ([i915#173])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8540/shard-iclb6/igt@kms_psr@no_drrs.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][24] -> [SKIP][25] ([fdo#109441]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8540/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/shard-iclb5/igt@kms_psr@psr2_cursor_render.html

  
#### Possible fixes ####

  * {igt@gem_exec_reloc@basic-concurrent0}:
    - shard-glk:          [FAIL][26] ([i915#1930]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8540/shard-glk9/igt@gem_exec_reloc@basic-concurrent0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/shard-glk1/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-apl:          [FAIL][28] ([i915#1930]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8540/shard-apl8/igt@gem_exec_reloc@basic-concurrent0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/shard-apl2/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_mmap_offset@clear:
    - shard-hsw:          [INCOMPLETE][30] ([i915#61]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8540/shard-hsw2/igt@gem_mmap_offset@clear.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/shard-hsw2/igt@gem_mmap_offset@clear.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][32] ([i915#1436] / [i915#716]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8540/shard-glk5/igt@gen9_exec_parse@allowed-all.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/shard-glk4/igt@gen9_exec_parse@allowed-all.html

  * {igt@i915_pm_rc6_residency@rc6-fence}:
    - shard-hsw:          [WARN][34] -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8540/shard-hsw1/igt@i915_pm_rc6_residency@rc6-fence.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/shard-hsw7/igt@i915_pm_rc6_residency@rc6-fence.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-kbl:          [DMESG-WARN][36] ([i915#180]) -> [PASS][37] +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8540/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][38] ([i915#180]) -> [PASS][39] +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8540/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * {igt@kms_flip@flip-vs-suspend@a-dp1}:
    - shard-kbl:          [DMESG-WARN][40] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8540/shard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/shard-kbl7/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-kbl:          [FAIL][42] ([i915#699] / [i915#93] / [i915#95]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8540/shard-kbl7/igt@kms_flip_tiling@flip-changes-tiling.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/shard-kbl7/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][44] ([fdo#109441]) -> [PASS][45] +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8540/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  
#### Warnings ####

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [DMESG-FAIL][46] ([fdo#103375] / [i915#180]) -> [FAIL][47] ([fdo#103375])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8540/shard-kbl1/igt@gem_softpin@noreloc-s3.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/shard-kbl1/igt@gem_softpin@noreloc-s3.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [TIMEOUT][48] ([i915#1319] / [i915#1635]) -> [DMESG-FAIL][49] ([fdo#110321] / [i915#95])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8540/shard-apl2/igt@kms_content_protection@atomic.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/shard-apl2/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][50] ([i915#1319] / [i915#1635]) -> [FAIL][51] ([fdo#110321] / [fdo#110336])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8540/shard-apl4/igt@kms_content_protection@atomic-dpms.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/shard-apl6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][52] ([i915#1319] / [i915#1635]) -> [TIMEOUT][53] ([i915#1319])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8540/shard-apl8/igt@kms_content_protection@lic.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/shard-apl1/igt@kms_content_protection@lic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1927]: https://gitlab.freedesktop.org/drm/intel/issues/1927
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1929]: https://gitlab.freedesktop.org/drm/intel/issues/1929
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8540 -> Patchwork_17781

  CI-20190529: 20190529
  CI_DRM_8540: b02ab97d6794973472bfdf91b62448d9354fd698 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5679: 93639b4e52140826c24da21865e912a280f9aefb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17781: d80c35b307494430f7e33f71733ea99e5dc42673 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
