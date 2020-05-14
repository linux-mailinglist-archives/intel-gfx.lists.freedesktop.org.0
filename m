Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C09851D38AD
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 19:54:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 313EC6E378;
	Thu, 14 May 2020 17:54:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7D55D6E0CA;
 Thu, 14 May 2020 17:54:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7639BA0091;
 Thu, 14 May 2020 17:54:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 14 May 2020 17:54:23 -0000
Message-ID: <158947886345.2824.3499147277973012529@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200514123838.3017-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200514123838.3017-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/3=5D_drm/i915=3A_Fix_400_MHz_FSB_re?=
 =?utf-8?q?adout_on_elk?=
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

Series: series starting with [v2,1/3] drm/i915: Fix 400 MHz FSB readout on elk
URL   : https://patchwork.freedesktop.org/series/77264/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8485_full -> Patchwork_17660_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17660_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_fenced_exec_thrash@2-spare-fences:
    - shard-snb:          [PASS][1] -> [INCOMPLETE][2] ([i915#82])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8485/shard-snb2/igt@gem_fenced_exec_thrash@2-spare-fences.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17660/shard-snb1/igt@gem_fenced_exec_thrash@2-spare-fences.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-iclb:         [PASS][3] -> [FAIL][4] ([i915#1119])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8485/shard-iclb3/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17660/shard-iclb4/igt@kms_big_fb@linear-32bpp-rotate-0.html
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#1119] / [i915#93] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8485/shard-kbl4/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17660/shard-kbl3/igt@kms_big_fb@linear-32bpp-rotate-0.html
    - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#1119] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8485/shard-apl2/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17660/shard-apl8/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#78])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8485/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17660/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#1188])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8485/shard-skl2/igt@kms_hdr@bpc-switch.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17660/shard-skl4/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8485/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17660/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109441]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8485/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17660/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@rcs0}:
    - shard-kbl:          [DMESG-WARN][17] ([i915#180]) -> [PASS][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8485/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17660/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][19] ([i915#1436] / [i915#716]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8485/shard-glk5/igt@gen9_exec_parse@allowed-all.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17660/shard-glk1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [DMESG-WARN][21] ([i915#165]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8485/shard-kbl3/igt@i915_suspend@forcewake.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17660/shard-kbl4/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_legacy@pipe-b-torture-bo:
    - shard-iclb:         [DMESG-WARN][23] ([i915#128]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8485/shard-iclb5/igt@kms_cursor_legacy@pipe-b-torture-bo.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17660/shard-iclb5/igt@kms_cursor_legacy@pipe-b-torture-bo.html

  * {igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2}:
    - shard-glk:          [FAIL][25] ([i915#79]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8485/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17660/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][27] ([fdo#108145] / [i915#265]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8485/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17660/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][29] ([fdo#109441]) -> [PASS][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8485/shard-iclb1/igt@kms_psr@psr2_sprite_blt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17660/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_setmode@basic:
    - shard-glk:          [FAIL][31] ([i915#31]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8485/shard-glk7/igt@kms_setmode@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17660/shard-glk4/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34] +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8485/shard-apl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17660/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][35] ([i915#658]) -> [SKIP][36] ([i915#588])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8485/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17660/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - shard-snb:          [SKIP][37] ([fdo#109271]) -> [INCOMPLETE][38] ([i915#82])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8485/shard-snb5/igt@i915_pm_rpm@modeset-lpsp.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17660/shard-snb2/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][39] ([i915#1319]) -> [FAIL][40] ([fdo#110321] / [fdo#110336]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8485/shard-apl4/igt@kms_content_protection@atomic-dpms.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17660/shard-apl8/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [TIMEOUT][41] ([i915#1319]) -> [FAIL][42] ([fdo#110321])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8485/shard-apl1/igt@kms_content_protection@srm.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17660/shard-apl4/igt@kms_content_protection@srm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8485 -> Patchwork_17660

  CI-20190529: 20190529
  CI_DRM_8485: 0c6c45b4587580b4b7b2247d201a3b0f7af4b7f6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5654: 5637a466a0b09535517751608f5525a8b468a76b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17660: 3a4c948c02d565e5aaf901947489990fe5bea0b0 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17660/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
