Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 796321AD2CC
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 00:26:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5934F6EB80;
	Thu, 16 Apr 2020 22:26:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 856356E037;
 Thu, 16 Apr 2020 22:26:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7DF36A47E1;
 Thu, 16 Apr 2020 22:26:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 16 Apr 2020 22:26:29 -0000
Message-ID: <158707598948.20886.129929965538880326@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200415233435.3064257-1-matthew.d.roper@intel.com>
In-Reply-To: <20200415233435.3064257-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/tgl=3A_TBT_AUX_should_use_?=
 =?utf-8?q?TC_power_well_ops?=
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

Series: series starting with [1/2] drm/i915/tgl: TBT AUX should use TC power well ops
URL   : https://patchwork.freedesktop.org/series/75998/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8305_full -> Patchwork_17319_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17319_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_flip@plain-flip-ts-check@a-edp1}:
    - shard-skl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8305/shard-skl1/igt@kms_flip@plain-flip-ts-check@a-edp1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17319/shard-skl3/igt@kms_flip@plain-flip-ts-check@a-edp1.html

  
Known issues
------------

  Here are the changes found in Patchwork_17319_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8305/shard-kbl6/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17319/shard-kbl2/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-apl:          [PASS][5] -> [FAIL][6] ([i915#54] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8305/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17319/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#300])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8305/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17319/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109441]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8305/shard-iclb2/igt@kms_psr@psr2_primary_blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17319/shard-iclb4/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8305/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17319/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][13] ([i915#454]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8305/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17319/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-snb:          [SKIP][15] ([fdo#109271]) -> [PASS][16] +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8305/shard-snb6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17319/shard-snb1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_color@pipe-a-degamma:
    - shard-skl:          [FAIL][17] ([fdo#108145] / [i915#71]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8305/shard-skl10/igt@kms_color@pipe-a-degamma.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17319/shard-skl5/igt@kms_color@pipe-a-degamma.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:
    - shard-apl:          [FAIL][19] ([i915#54] / [i915#95]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8305/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17319/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html

  * igt@kms_cursor_legacy@pipe-b-torture-bo:
    - shard-snb:          [DMESG-WARN][21] ([i915#128]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8305/shard-snb2/igt@kms_cursor_legacy@pipe-b-torture-bo.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17319/shard-snb5/igt@kms_cursor_legacy@pipe-b-torture-bo.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-kbl:          [INCOMPLETE][23] ([i915#155]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8305/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17319/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][25] ([i915#180]) -> [PASS][26] +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8305/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17319/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * {igt@kms_flip@flip-vs-suspend@c-dp1}:
    - shard-kbl:          [DMESG-WARN][27] ([i915#180]) -> [PASS][28] +6 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8305/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17319/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][29] ([fdo#108145] / [i915#265]) -> [PASS][30] +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8305/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17319/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][31] ([fdo#109441]) -> [PASS][32] +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8305/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17319/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * {igt@perf@polling-parameterized}:
    - shard-hsw:          [FAIL][33] ([i915#1542]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8305/shard-hsw1/igt@perf@polling-parameterized.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17319/shard-hsw4/igt@perf@polling-parameterized.html

  * {igt@sysfs_heartbeat_interval@mixed@vcs0}:
    - shard-skl:          [INCOMPLETE][35] ([i915#198]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8305/shard-skl2/igt@sysfs_heartbeat_interval@mixed@vcs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17319/shard-skl10/igt@sysfs_heartbeat_interval@mixed@vcs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][37] ([i915#454]) -> [SKIP][38] ([i915#468])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8305/shard-tglb1/igt@i915_pm_dc@dc6-psr.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17319/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@fences:
    - shard-snb:          [INCOMPLETE][39] ([i915#82]) -> [SKIP][40] ([fdo#109271]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8305/shard-snb6/igt@i915_pm_rpm@fences.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17319/shard-snb6/igt@i915_pm_rpm@fences.html

  * igt@i915_pm_rpm@gem-idle:
    - shard-snb:          [SKIP][41] ([fdo#109271]) -> [INCOMPLETE][42] ([i915#82])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8305/shard-snb1/igt@i915_pm_rpm@gem-idle.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17319/shard-snb1/igt@i915_pm_rpm@gem-idle.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#71]: https://gitlab.freedesktop.org/drm/intel/issues/71
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8305 -> Patchwork_17319

  CI-20190529: 20190529
  CI_DRM_8305: 6f16366a3061bc52af7a7ab423b08cc8cb8bf039 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5591: f57b7fdbe8d04ce3edf0433a03c7d9d5c3d96680 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17319: 6e0eb59bceddb6427bad5934c8664b8c19f3765c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17319/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
