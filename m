Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D15351A9AD3
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 12:38:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99DE86E95B;
	Wed, 15 Apr 2020 10:38:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4C92D6E95B;
 Wed, 15 Apr 2020 10:38:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3BAF5A008A;
 Wed, 15 Apr 2020 10:38:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kishore Kadiyala" <kishore.kadiyala@intel.com>
Date: Wed, 15 Apr 2020 10:38:32 -0000
Message-ID: <158694711221.21015.17541223007924056582@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200413071346.14612-1-kishore.kadiyala@intel.com>
In-Reply-To: <20200413071346.14612-1-kishore.kadiyala@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_Plane_color_encoding_support_for_YCBCR=5FBT2020_?=
 =?utf-8?b?KHJldjUp?=
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

Series: drm/i915: Add Plane color encoding support for YCBCR_BT2020 (rev5)
URL   : https://patchwork.freedesktop.org/series/75660/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8295_full -> Patchwork_17285_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17285_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_legacy@pipe-b-torture-bo:
    - shard-tglb:         [PASS][1] -> [DMESG-WARN][2] ([i915#128])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8295/shard-tglb1/igt@kms_cursor_legacy@pipe-b-torture-bo.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17285/shard-tglb2/igt@kms_cursor_legacy@pipe-b-torture-bo.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109349])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8295/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17285/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#79])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8295/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17285/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-snb:          [PASS][7] -> [DMESG-WARN][8] ([i915#42])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8295/shard-snb2/igt@kms_flip@flip-vs-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17285/shard-snb2/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8295/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17285/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8295/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17285/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-iclb:         [PASS][13] -> [INCOMPLETE][14] ([i915#1185] / [i915#221])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8295/shard-iclb4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17285/shard-iclb3/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#1188])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8295/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17285/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145] / [i915#265]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8295/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17285/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109642] / [fdo#111068])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8295/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17285/shard-iclb6/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8295/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17285/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#31])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8295/shard-glk8/igt@kms_setmode@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17285/shard-glk8/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][25] ([i915#180]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8295/shard-apl4/igt@gem_softpin@noreloc-s3.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17285/shard-apl6/igt@gem_softpin@noreloc-s3.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [DMESG-WARN][27] ([i915#716]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8295/shard-skl4/igt@gen9_exec_parse@allowed-all.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17285/shard-skl4/igt@gen9_exec_parse@allowed-all.html
    - shard-apl:          [DMESG-WARN][29] ([i915#716]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8295/shard-apl6/igt@gen9_exec_parse@allowed-all.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17285/shard-apl2/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [INCOMPLETE][31] ([i915#221]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8295/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17285/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34] +4 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8295/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17285/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][35] ([fdo#108145] / [i915#265]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8295/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17285/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][37] ([fdo#109441]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8295/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17285/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * {igt@sysfs_heartbeat_interval@mixed@vecs0}:
    - shard-skl:          [FAIL][39] ([i915#1459]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8295/shard-skl4/igt@sysfs_heartbeat_interval@mixed@vecs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17285/shard-skl9/igt@sysfs_heartbeat_interval@mixed@vecs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][41] ([i915#454]) -> [SKIP][42] ([i915#468])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8295/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17285/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@cursor-dpms:
    - shard-snb:          [SKIP][43] ([fdo#109271]) -> [INCOMPLETE][44] ([i915#82])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8295/shard-snb4/igt@i915_pm_rpm@cursor-dpms.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17285/shard-snb1/igt@i915_pm_rpm@cursor-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-kbl:          [FAIL][45] ([fdo#108145] / [i915#265] / [i915#93] / [i915#95]) -> [FAIL][46] ([fdo#108145] / [i915#265])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8295/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17285/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][47], [FAIL][48]) ([i915#1423] / [i915#716]) -> [FAIL][49] ([i915#1423])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8295/shard-apl6/igt@runner@aborted.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8295/shard-apl6/igt@runner@aborted.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17285/shard-apl3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
  [i915#1459]: https://gitlab.freedesktop.org/drm/intel/issues/1459
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
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
  * Linux: CI_DRM_8295 -> Patchwork_17285

  CI-20190529: 20190529
  CI_DRM_8295: 4cb6dbe0a641129fd07ad1fbfcd6e7b4f03ec5c1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5589: 31962324ac86f029e2841e56e97c42cf9d572956 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17285: c23e702e8b821acdcb9e35f4ffd05e14bc0e058a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17285/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
