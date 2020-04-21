Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7541B30F8
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 22:13:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BE176E32E;
	Tue, 21 Apr 2020 20:13:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4733E8958E;
 Tue, 21 Apr 2020 20:13:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 40506A00E6;
 Tue, 21 Apr 2020 20:13:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Tue, 21 Apr 2020 20:13:05 -0000
Message-ID: <158749998523.17660.5573899174082655216@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200420200610.31798-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200420200610.31798-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_Introduce_=2Eset=5Flink?=
 =?utf-8?q?=5Ftrain=28=29_vfunc?=
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

Series: series starting with [1/4] drm/i915: Introduce .set_link_train() vfunc
URL   : https://patchwork.freedesktop.org/series/76213/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8334_full -> Patchwork_17391_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17391_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-hang@rcs0:
    - shard-iclb:         [PASS][1] -> [FAIL][2] ([i915#1622])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/shard-iclb1/igt@gem_ctx_persistence@engines-hang@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/shard-iclb3/igt@gem_ctx_persistence@engines-hang@rcs0.html

  * igt@gem_eio@in-flight-suspend:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/shard-apl1/igt@gem_eio@in-flight-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/shard-apl6/igt@gem_eio@in-flight-suspend.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#1531] / [i915#1658])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/shard-tglb7/igt@i915_selftest@live@requests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/shard-tglb2/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@vma:
    - shard-snb:          [PASS][7] -> [FAIL][8] ([i915#1763]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/shard-snb2/igt@i915_selftest@live@vma.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/shard-snb2/igt@i915_selftest@live@vma.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-skl:          [PASS][9] -> [INCOMPLETE][10] ([i915#69])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/shard-skl9/igt@i915_suspend@fence-restore-untiled.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/shard-skl4/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#1119] / [i915#93] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/shard-kbl6/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/shard-kbl3/igt@kms_big_fb@linear-32bpp-rotate-0.html
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#1119] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/shard-apl4/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/shard-apl6/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_cursor_legacy@all-pipes-torture-move:
    - shard-skl:          [PASS][15] -> [DMESG-WARN][16] ([i915#128])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/shard-skl3/igt@kms_cursor_legacy@all-pipes-torture-move.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/shard-skl8/igt@kms_cursor_legacy@all-pipes-torture-move.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109349])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#1188])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/shard-skl9/igt@kms_hdr@bpc-switch.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/shard-skl6/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] / [i915#265])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#173])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/shard-iclb2/igt@kms_psr@no_drrs.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/shard-iclb1/igt@kms_psr@psr2_primary_mmap_gtt.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-skl:          [FAIL][29] ([i915#1528]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/shard-skl4/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/shard-skl2/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          [DMESG-WARN][31] ([i915#180]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * {igt@kms_flip@flip-vs-expired-vblank@c-edp1}:
    - shard-skl:          [FAIL][33] ([i915#79]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-kbl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36] +4 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * {igt@kms_flip@flip-vs-suspend@c-edp1}:
    - shard-skl:          [INCOMPLETE][37] ([i915#198]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/shard-skl8/igt@kms_flip@flip-vs-suspend@c-edp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/shard-skl2/igt@kms_flip@flip-vs-suspend@c-edp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][39] ([i915#1188]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][41] ([fdo#108145] / [i915#265]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][43] ([fdo#109441]) -> [PASS][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][45] ([i915#180] / [i915#95]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/shard-apl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-hsw:          [INCOMPLETE][47] ([i915#61]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/shard-hsw4/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/shard-hsw1/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * {igt@perf@polling-parameterized}:
    - shard-hsw:          [FAIL][49] ([i915#1542]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/shard-hsw6/igt@perf@polling-parameterized.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/shard-hsw4/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][51] ([i915#588]) -> [SKIP][52] ([i915#658])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][53] ([i915#454]) -> [SKIP][54] ([i915#468])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/shard-tglb8/igt@i915_pm_dc@dc6-dpms.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [FAIL][55] ([i915#1515]) -> [WARN][56] ([i915#1515])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_selftest@live@gt_pm:
    - shard-tglb:         [DMESG-FAIL][57] ([i915#1744]) -> [DMESG-FAIL][58] ([i915#1759])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/shard-tglb7/igt@i915_selftest@live@gt_pm.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/shard-tglb2/igt@i915_selftest@live@gt_pm.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-kbl:          [FAIL][59] ([fdo#108145] / [i915#265]) -> [FAIL][60] ([fdo#108145] / [i915#265] / [i915#93] / [i915#95])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1622]: https://gitlab.freedesktop.org/drm/intel/issues/1622
  [i915#1658]: https://gitlab.freedesktop.org/drm/intel/issues/1658
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#1744]: https://gitlab.freedesktop.org/drm/intel/issues/1744
  [i915#1759]: https://gitlab.freedesktop.org/drm/intel/issues/1759
  [i915#1763]: https://gitlab.freedesktop.org/drm/intel/issues/1763
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
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
  * Linux: CI_DRM_8334 -> Patchwork_17391

  CI-20190529: 20190529
  CI_DRM_8334: 123d6397d46c0bec471a43d2da881e87a30c5ea0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5602: a8fcccd15dcc2dd409edd23785a2d6f6e85fb682 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17391: 120669f6723eada8d373329f4c05d4450a56a70a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17391/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
