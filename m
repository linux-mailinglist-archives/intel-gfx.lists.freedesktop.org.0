Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 757251A1056
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 17:37:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C82E36E10F;
	Tue,  7 Apr 2020 15:37:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 106066E10F;
 Tue,  7 Apr 2020 15:37:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0A4B5A47E2;
 Tue,  7 Apr 2020 15:37:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jeevan B" <jeevan.b@intel.com>
Date: Tue, 07 Apr 2020 15:37:54 -0000
Message-ID: <158627387401.26328.1286579533529180123@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1586242207-23214-1-git-send-email-jeevan.b@intel.com>
In-Reply-To: <1586242207-23214-1-git-send-email-jeevan.b@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/5=5D_drm=3A_report_dp_downstream_port_ty?=
 =?utf-8?q?pe_as_a_subconnector_property?=
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

Series: series starting with [1/5] drm: report dp downstream port type as a subconnector property
URL   : https://patchwork.freedesktop.org/series/75585/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8264_full -> Patchwork_17228_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17228_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180] / [i915#95])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-apl3/igt@kms_flip@flip-vs-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/shard-apl1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#34])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-glk2/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/shard-glk1/igt@kms_flip@plain-flip-ts-check-interruptible.html
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#34])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([fdo#108145] / [i915#265])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109441]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@rcs0}:
    - shard-apl:          [DMESG-WARN][13] ([i915#180]) -> [PASS][14] +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-apl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/shard-apl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [FAIL][15] ([i915#1277]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-tglb6/igt@gem_exec_balancer@hang.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/shard-tglb6/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][17] ([fdo#109276]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-iclb7/igt@gem_exec_params@invalid-bsd-ring.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/shard-iclb2/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-hsw:          [FAIL][19] ([i915#1516]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-hsw1/igt@i915_pm_rc6_residency@rc6-idle.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/shard-hsw4/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - shard-skl:          [FAIL][21] ([i915#138]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-skl5/igt@i915_pm_rpm@basic-pci-d3-state.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/shard-skl10/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@blt:
    - shard-snb:          [DMESG-FAIL][23] ([i915#1409]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-snb4/igt@i915_selftest@live@blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/shard-snb1/igt@i915_selftest@live@blt.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-skl:          [INCOMPLETE][25] ([i915#69]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-skl3/igt@i915_suspend@fence-restore-tiled2untiled.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/shard-skl10/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][27] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-glk:          [FAIL][29] ([i915#34]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/shard-glk8/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-apl:          [FAIL][31] ([i915#79]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-apl4/igt@kms_flip@flip-vs-expired-vblank.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/shard-apl8/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34] +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][35] ([i915#1188]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-snb:          [DMESG-WARN][37] ([i915#42]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-snb6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/shard-snb7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][39] ([fdo#108145] / [i915#265]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-none:
    - shard-kbl:          [DMESG-WARN][41] ([i915#165] / [i915#78]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-kbl2/igt@kms_plane_lowres@pipe-a-tiling-none.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/shard-kbl4/igt@kms_plane_lowres@pipe-a-tiling-none.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][43] ([fdo#109441]) -> [PASS][44] +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][45] ([i915#658]) -> [SKIP][46] ([i915#588])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][47] ([i915#454]) -> [SKIP][48] ([i915#468])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-tglb5/igt@i915_pm_dc@dc6-dpms.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-snb:          [SKIP][49] ([fdo#109271]) -> [INCOMPLETE][50] ([i915#82])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-snb2/igt@i915_pm_rpm@modeset-pc8-residency-stress.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/shard-snb5/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-apl:          [FAIL][51] ([fdo#108145] / [i915#265]) -> [FAIL][52] ([fdo#108145] / [i915#265] / [i915#95])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-apl3/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#138]: https://gitlab.freedesktop.org/drm/intel/issues/138
  [i915#1409]: https://gitlab.freedesktop.org/drm/intel/issues/1409
  [i915#1516]: https://gitlab.freedesktop.org/drm/intel/issues/1516
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8264 -> Patchwork_17228

  CI-20190529: 20190529
  CI_DRM_8264: e0104585f880a64d4a9b40803cf4fb51ab499f7c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5573: 9c582425d6b4fc1de9fc2ffc8015cc6f0a0d3e98 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17228: 492358bb545e27f7fe4f65d666c2930f954f2a0b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
