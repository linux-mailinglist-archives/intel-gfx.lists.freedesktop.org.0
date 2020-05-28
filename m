Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D91031E6F7B
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 00:47:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B4716E843;
	Thu, 28 May 2020 22:47:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 90DC36E843;
 Thu, 28 May 2020 22:47:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8B637A73C7;
 Thu, 28 May 2020 22:47:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Thu, 28 May 2020 22:47:12 -0000
Message-ID: <159070603256.686.5676661413988637219@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200528200356.36756-1-jose.souza@intel.com>
In-Reply-To: <20200528200356.36756-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915/display/hsw+=3A_Do_not_pro?=
 =?utf-8?q?gram_the_same_vswing_entry_twice?=
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

Series: series starting with [1/4] drm/i915/display/hsw+: Do not program the same vswing entry twice
URL   : https://patchwork.freedesktop.org/series/77758/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8549_full -> Patchwork_17806_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17806_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17806_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17806_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gen9_exec_parse@bb-chained:
    - shard-glk:          NOTRUN -> [TIMEOUT][1] +6 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17806/shard-glk9/igt@gen9_exec_parse@bb-chained.html

  
Known issues
------------

  Here are the changes found in Patchwork_17806_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - shard-tglb:         [PASS][2] -> [INCOMPLETE][3] ([i915#1602] / [i915#456])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-tglb8/igt@gem_exec_suspend@basic-s0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17806/shard-tglb5/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
    - shard-kbl:          [PASS][4] -> [FAIL][5] ([i915#54] / [i915#93] / [i915#95])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17806/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][6] -> [DMESG-WARN][7] ([i915#180]) +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17806/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][8] -> [FAIL][9] ([i915#1188])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17806/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][10] -> [FAIL][11] ([fdo#108145] / [i915#265]) +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17806/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#109441]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17806/shard-iclb6/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [PASS][14] -> [FAIL][15] ([i915#31])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-hsw4/igt@kms_setmode@basic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17806/shard-hsw4/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [INCOMPLETE][16] ([i915#69]) -> [PASS][17] +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-skl4/igt@gem_eio@in-flight-suspend.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17806/shard-skl9/igt@gem_eio@in-flight-suspend.html

  * {igt@gem_exec_reloc@basic-concurrent0}:
    - shard-apl:          [FAIL][18] ([i915#1930]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-apl7/igt@gem_exec_reloc@basic-concurrent0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17806/shard-apl3/igt@gem_exec_reloc@basic-concurrent0.html

  * {igt@gem_exec_reloc@basic-concurrent16}:
    - shard-skl:          [FAIL][20] ([i915#1930]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-skl2/igt@gem_exec_reloc@basic-concurrent16.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17806/shard-skl7/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-kbl:          [FAIL][22] ([fdo#103375]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-kbl2/igt@i915_pm_rpm@system-suspend.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17806/shard-kbl7/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [INCOMPLETE][24] ([i915#636] / [i915#69]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-skl1/igt@i915_suspend@forcewake.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17806/shard-skl1/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-glk:          [DMESG-WARN][26] ([i915#1926]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-glk8/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17806/shard-glk1/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-edp1}:
    - shard-skl:          [INCOMPLETE][28] ([i915#198]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17806/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][30] ([i915#180]) -> [PASS][31] +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17806/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][32] ([i915#180]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17806/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][34] ([fdo#108145] / [i915#265]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17806/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][36] ([fdo#109441]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-iclb3/igt@kms_psr@psr2_cursor_plane_onoff.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17806/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][38] ([i915#468]) -> [FAIL][39] ([i915#454])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17806/shard-tglb1/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [FAIL][40] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][41] ([i915#1319] / [i915#1635])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-apl7/igt@kms_content_protection@legacy.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17806/shard-apl3/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-glk:          [DMESG-WARN][42] ([i915#1926]) -> [DMESG-WARN][43] ([i915#1927])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-glk1/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17806/shard-glk7/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-apl:          [FAIL][44] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][45] ([fdo#108145] / [i915#265])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17806/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1927]: https://gitlab.freedesktop.org/drm/intel/issues/1927
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8549 -> Patchwork_17806

  CI-20190529: 20190529
  CI_DRM_8549: e50e9c6bf4efd00b02d91ff470993bbd0db94f67 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5682: e5371a99a877be134c6ad5361a5f03843a66f775 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17806: 243da8b64910288d152b148272e64fa8301d62f4 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17806/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
