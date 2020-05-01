Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DDF71C1084
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 11:56:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C7106EC39;
	Fri,  1 May 2020 09:56:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8E0FE6EC38;
 Fri,  1 May 2020 09:56:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 866B9A47DA;
 Fri,  1 May 2020 09:56:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Fri, 01 May 2020 09:56:08 -0000
Message-ID: <158832696852.18947.8555036610178123176@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200430230951.2508-1-manasi.d.navare@intel.com>
In-Reply-To: <20200430230951.2508-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgUmVi?=
 =?utf-8?q?ased_Big_Joiner_patch_series_for_8K_2p1p_=28rev2=29?=
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

Series: Rebased Big Joiner patch series for 8K 2p1p (rev2)
URL   : https://patchwork.freedesktop.org/series/76791/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8404_full -> Patchwork_17536_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17536_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17536_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17536_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8404/shard-tglb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17536/shard-tglb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@runner@aborted:
    - shard-tglb:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17536/shard-tglb1/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_reloc@basic-many-active@rcs0}:
    - shard-glk:          NOTRUN -> [FAIL][4] +3 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17536/shard-glk6/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * {igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a}:
    - shard-kbl:          [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8404/shard-kbl4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17536/shard-kbl7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a.html

  * {igt@kms_flip@dpms-vs-vblank-race-interruptible@c-hdmi-a1}:
    - shard-glk:          [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8404/shard-glk9/igt@kms_flip@dpms-vs-vblank-race-interruptible@c-hdmi-a1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17536/shard-glk1/igt@kms_flip@dpms-vs-vblank-race-interruptible@c-hdmi-a1.html

  
Known issues
------------

  Here are the changes found in Patchwork_17536_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [PASS][9] -> [INCOMPLETE][10] ([i915#69])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8404/shard-skl10/igt@gem_eio@in-flight-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17536/shard-skl8/igt@gem_eio@in-flight-suspend.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-iclb:         [PASS][11] -> [INCOMPLETE][12] ([i915#1185])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8404/shard-iclb2/igt@i915_suspend@fence-restore-tiled2untiled.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17536/shard-iclb3/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_legacy@pipe-b-torture-move:
    - shard-snb:          [PASS][13] -> [DMESG-WARN][14] ([i915#128])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8404/shard-snb5/igt@kms_cursor_legacy@pipe-b-torture-move.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17536/shard-snb1/igt@kms_cursor_legacy@pipe-b-torture-move.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180] / [i915#93] / [i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8404/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17536/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8404/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17536/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8404/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17536/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8404/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17536/shard-iclb7/igt@kms_psr@psr2_cursor_render.html

  
#### Possible fixes ####

  * {igt@kms_flip@flip-vs-expired-vblank@c-edp1}:
    - shard-skl:          [FAIL][23] ([i915#79]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8404/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17536/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-kbl:          [DMESG-WARN][25] ([i915#180]) -> [PASS][26] +7 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8404/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17536/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * {igt@kms_flip@plain-flip-fb-recreate@c-edp1}:
    - shard-skl:          [FAIL][27] ([i915#34]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8404/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17536/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [DMESG-WARN][29] ([i915#180] / [i915#95]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8404/shard-apl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17536/shard-apl8/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][31] ([i915#1188]) -> [PASS][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8404/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17536/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34] +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8404/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17536/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
    - shard-skl:          [INCOMPLETE][35] ([i915#648] / [i915#69]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8404/shard-skl9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17536/shard-skl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][37] ([fdo#108145] / [i915#265]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8404/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17536/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][39] ([fdo#109441]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8404/shard-iclb1/igt@kms_psr@psr2_cursor_plane_move.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17536/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * {igt@sysfs_timeslice_duration@timeout@vecs0}:
    - shard-iclb:         [FAIL][41] ([i915#1755]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8404/shard-iclb5/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17536/shard-iclb3/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][43] ([i915#468]) -> [FAIL][44] ([i915#454])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8404/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17536/shard-tglb5/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          [FAIL][45] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][46] ([fdo#108145] / [i915#265])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8404/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17536/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][47] ([fdo#109642] / [fdo#111068]) -> [FAIL][48] ([i915#608])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8404/shard-iclb1/igt@kms_psr2_su@page_flip.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17536/shard-iclb2/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109052]: https://bugs.freedesktop.org/show_bug.cgi?id=109052
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8404 -> Patchwork_17536

  CI-20190529: 20190529
  CI_DRM_8404: ede1e290e2df393adaa971c1b79e83c9f754cbd6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5621: 87890a8dbf7e1c5230557a0249175a7543f32d00 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17536: 1f5c8c3282266fa3d03c9449aea618730f09f30a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17536/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
