Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 860711ACCBE
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 18:08:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE6666E332;
	Thu, 16 Apr 2020 16:08:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F24736E332;
 Thu, 16 Apr 2020 16:08:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EB2E8A3ECB;
 Thu, 16 Apr 2020 16:08:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Thu, 16 Apr 2020 16:08:21 -0000
Message-ID: <158705330195.20884.18420118879586825526@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200415191408.82574-1-jose.souza@intel.com>
In-Reply-To: <20200415191408.82574-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_missing_deinitialization_cases_of_load_failure?=
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

Series: drm/i915: Add missing deinitialization cases of load failure
URL   : https://patchwork.freedesktop.org/series/75987/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8302_full -> Patchwork_17316_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17316_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_wait@write-busy@rcs0}:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-glk9/igt@gem_wait@write-busy@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17316/shard-glk4/igt@gem_wait@write-busy@rcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_17316_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:
    - shard-skl:          [PASS][3] -> [FAIL][4] ([i915#177] / [i915#52] / [i915#54])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-skl9/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17316/shard-skl9/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         [PASS][5] -> [SKIP][6] ([i915#668]) +7 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17316/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#648] / [i915#69])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17316/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109642] / [fdo#111068])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17316/shard-iclb5/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109441]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17316/shard-iclb8/igt@kms_psr@psr2_suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#69])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-skl4/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17316/shard-skl6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-apl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17316/shard-apl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@vcs0}:
    - shard-kbl:          [DMESG-WARN][17] ([i915#180]) -> [PASS][18] +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17316/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-kbl:          [INCOMPLETE][19] ([i915#1423]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-kbl3/igt@i915_module_load@reload-with-fault-injection.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17316/shard-kbl7/igt@i915_module_load@reload-with-fault-injection.html
    - shard-apl:          [INCOMPLETE][21] ([i915#1423]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-apl6/igt@i915_module_load@reload-with-fault-injection.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17316/shard-apl4/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][23] ([i915#454]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17316/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_color@pipe-a-degamma:
    - shard-skl:          [FAIL][25] ([fdo#108145] / [i915#71]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-skl2/igt@kms_color@pipe-a-degamma.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17316/shard-skl2/igt@kms_color@pipe-a-degamma.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
    - shard-skl:          [FAIL][27] ([i915#54]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17316/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [INCOMPLETE][29] ([i915#155]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17316/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][31] ([fdo#109349]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17316/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * {igt@kms_flip@flip-vs-suspend@c-dp1}:
    - shard-apl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-apl8/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17316/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][35] ([i915#1188]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17316/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][37] ([fdo#108145] / [i915#265]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17316/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][39] ([fdo#109441]) -> [PASS][40] +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-iclb1/igt@kms_psr@psr2_cursor_plane_move.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17316/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          [FAIL][41] ([i915#1665]) -> [FAIL][42] ([i915#454])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-skl5/igt@i915_pm_dc@dc6-dpms.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17316/shard-skl10/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@gem-idle:
    - shard-snb:          [INCOMPLETE][43] ([i915#82]) -> [SKIP][44] ([fdo#109271])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-snb4/igt@i915_pm_rpm@gem-idle.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17316/shard-snb6/igt@i915_pm_rpm@gem-idle.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
  [i915#1532]: https://gitlab.freedesktop.org/drm/intel/issues/1532
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1665]: https://gitlab.freedesktop.org/drm/intel/issues/1665
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#71]: https://gitlab.freedesktop.org/drm/intel/issues/71
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8302 -> Patchwork_17316

  CI-20190529: 20190529
  CI_DRM_8302: e022648f1633f24b4ec326805f1de22209826519 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5591: f57b7fdbe8d04ce3edf0433a03c7d9d5c3d96680 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17316: 40cdb21a2c1ee7f94a8f8754870d0d3ee3b85f11 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17316/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
