Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A55A61E7255
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 03:59:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06DF56E853;
	Fri, 29 May 2020 01:59:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3D10A6E851;
 Fri, 29 May 2020 01:58:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 36C82A0003;
 Fri, 29 May 2020 01:58:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 29 May 2020 01:58:59 -0000
Message-ID: <159071753919.3331.7597365427405294939@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200528205727.20309-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200528205727.20309-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Start_timeslice_on_partial_submission?=
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

Series: drm/i915/gt: Start timeslice on partial submission
URL   : https://patchwork.freedesktop.org/series/77761/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8549_full -> Patchwork_17808_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17808_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17808_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17808_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gen9_exec_parse@bb-chained:
    - shard-glk:          NOTRUN -> [TIMEOUT][1] +5 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17808/shard-glk2/igt@gen9_exec_parse@bb-chained.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-hsw:          [FAIL][2] ([fdo#109271]) -> [FAIL][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-hsw8/igt@runner@aborted.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17808/shard-hsw8/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17808_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_param@invalid-ctx-get:
    - shard-hsw:          [PASS][4] -> [DMESG-WARN][5] ([i915#1927])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-hsw8/igt@gem_ctx_param@invalid-ctx-get.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17808/shard-hsw8/igt@gem_ctx_param@invalid-ctx-get.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-tglb:         [PASS][6] -> [INCOMPLETE][7] ([i915#1602] / [i915#456])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-tglb8/igt@gem_exec_suspend@basic-s0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17808/shard-tglb3/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [PASS][8] -> [DMESG-WARN][9] ([i915#180])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-kbl2/igt@gem_softpin@noreloc-s3.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17808/shard-kbl7/igt@gem_softpin@noreloc-s3.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][10] -> [DMESG-WARN][11] ([i915#180])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-apl3/igt@gem_workarounds@suspend-resume-context.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17808/shard-apl4/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#1119] / [i915#118] / [i915#95])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-glk1/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17808/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
    - shard-kbl:          [PASS][14] -> [FAIL][15] ([i915#54] / [i915#93] / [i915#95])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17808/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
    - shard-hsw:          [PASS][16] -> [INCOMPLETE][17] ([i915#61])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-hsw1/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17808/shard-hsw1/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][18] -> [FAIL][19] ([fdo#108145] / [i915#265]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17808/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][20] -> [SKIP][21] ([fdo#109441]) +2 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17808/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [INCOMPLETE][22] ([i915#69]) -> [PASS][23] +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-skl4/igt@gem_eio@in-flight-suspend.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17808/shard-skl5/igt@gem_eio@in-flight-suspend.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-kbl:          [FAIL][24] ([fdo#103375]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-kbl2/igt@i915_pm_rpm@system-suspend.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17808/shard-kbl7/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [INCOMPLETE][26] ([i915#636] / [i915#69]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-skl1/igt@i915_suspend@forcewake.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17808/shard-skl1/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-glk:          [DMESG-WARN][28] ([i915#1926]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-glk1/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17808/shard-glk5/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][30] ([fdo#109349]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-iclb4/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17808/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-edp1}:
    - shard-skl:          [INCOMPLETE][32] ([i915#198]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17808/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-apl:          [DMESG-WARN][34] ([i915#180]) -> [PASS][35] +2 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-apl4/igt@kms_hdr@bpc-switch-suspend.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17808/shard-apl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][36] ([i915#180]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17808/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][38] ([fdo#109441]) -> [PASS][39] +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17808/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc5-dpms:
    - shard-snb:          [SKIP][40] ([fdo#109271]) -> [INCOMPLETE][41] ([i915#82])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-snb2/igt@i915_pm_dc@dc5-dpms.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17808/shard-snb2/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][42] ([i915#468]) -> [FAIL][43] ([i915#454])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17808/shard-tglb7/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][44] ([i915#1515]) -> [FAIL][45] ([i915#1515])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17808/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [FAIL][46] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][47] ([i915#1319])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-apl7/igt@kms_content_protection@legacy.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17808/shard-apl7/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-glk:          [DMESG-WARN][48] ([i915#1926]) -> [DMESG-FAIL][49] ([i915#1925])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8549/shard-glk8/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17808/shard-glk7/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1925]: https://gitlab.freedesktop.org/drm/intel/issues/1925
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1927]: https://gitlab.freedesktop.org/drm/intel/issues/1927
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8549 -> Patchwork_17808

  CI-20190529: 20190529
  CI_DRM_8549: e50e9c6bf4efd00b02d91ff470993bbd0db94f67 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5682: e5371a99a877be134c6ad5361a5f03843a66f775 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17808: 2ea880d898ed9a9a66cfdfc5706d8f1089f8d652 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17808/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
