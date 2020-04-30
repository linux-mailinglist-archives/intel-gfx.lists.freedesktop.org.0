Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7171C0914
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 23:22:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A31E6E220;
	Thu, 30 Apr 2020 21:22:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A5BC46E220;
 Thu, 30 Apr 2020 21:22:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9E4FBA47EE;
 Thu, 30 Apr 2020 21:22:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 30 Apr 2020 21:22:37 -0000
Message-ID: <158828175761.31921.16809026866286615881@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200430125822.21985-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200430125822.21985-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Fix_glk_watermark_calcu?=
 =?utf-8?q?lations?=
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

Series: series starting with [1/2] drm/i915: Fix glk watermark calculations
URL   : https://patchwork.freedesktop.org/series/76774/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8401_full -> Patchwork_17527_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17527_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-iclb1/igt@gem_exec_params@invalid-bsd-ring.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17527/shard-iclb8/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#151] / [i915#69])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-skl10/igt@i915_pm_rpm@system-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17527/shard-skl9/igt@i915_pm_rpm@system-suspend.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17527/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17527/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([fdo#108145] / [i915#265]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17527/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#899])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17527/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109642] / [fdo#111068])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17527/shard-iclb1/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109441]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-iclb2/igt@kms_psr@psr2_basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17527/shard-iclb5/igt@kms_psr@psr2_basic.html

  
#### Possible fixes ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][17] ([i915#716]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-apl2/igt@gen9_exec_parse@allowed-all.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17527/shard-apl7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][19] ([i915#454]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17527/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][21] ([i915#180]) -> [PASS][22] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17527/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * {igt@kms_flip@flip-vs-expired-vblank@c-edp1}:
    - shard-skl:          [FAIL][23] ([i915#79]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17527/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-apl:          [DMESG-WARN][25] ([i915#180]) -> [PASS][26] +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17527/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * {igt@kms_flip@flip-vs-suspend@c-hdmi-a1}:
    - shard-hsw:          [INCOMPLETE][27] ([i915#61]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-hsw4/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17527/shard-hsw1/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][29] ([i915#1188]) -> [PASS][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17527/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][31] ([i915#173]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-iclb1/igt@kms_psr@no_drrs.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17527/shard-iclb3/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][33] ([fdo#109441]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-iclb6/igt@kms_psr@psr2_no_drrs.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17527/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-glk:          [TIMEOUT][35] -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-glk6/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17527/shard-glk4/igt@perf@gen8-unprivileged-single-ctx-counters.html

  
#### Warnings ####

  * igt@i915_pm_rpm@fences-dpms:
    - shard-snb:          [SKIP][37] ([fdo#109271]) -> [INCOMPLETE][38] ([i915#82])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-snb2/igt@i915_pm_rpm@fences-dpms.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17527/shard-snb2/igt@i915_pm_rpm@fences-dpms.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-apl:          [FAIL][39] ([fdo#108145] / [i915#265]) -> [FAIL][40] ([fdo#108145] / [i915#265] / [i915#95])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17527/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][41] ([fdo#109642] / [fdo#111068]) -> [FAIL][42] ([i915#608])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-iclb3/igt@kms_psr2_su@page_flip.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17527/shard-iclb2/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8401 -> Patchwork_17527

  CI-20190529: 20190529
  CI_DRM_8401: 41fac0e3809be301af095c66e717eb9843b80212 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5617: 807b26292a3f21057ef7865a4028d22c512590df @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17527: 790b959bc5a3ec7a8820074aec9822ed0118c677 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17527/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
