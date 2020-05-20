Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30BF31DB32B
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 14:28:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25B1D6E7E6;
	Wed, 20 May 2020 12:28:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EEA136E82A;
 Wed, 20 May 2020 12:28:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E8517A0138;
 Wed, 20 May 2020 12:28:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swathi Dhanavanthri" <swathi.dhanavanthri@intel.com>
Date: Wed, 20 May 2020 12:28:38 -0000
Message-ID: <158997771891.30688.14652717778147368262@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200519201256.31226-1-swathi.dhanavanthri@intel.com>
In-Reply-To: <20200519201256.31226-1-swathi.dhanavanthri@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/ehl=3A_Extend_w/a_14010685332_to_JSP/MCC_=28rev2=29?=
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

Series: drm/i915/ehl: Extend w/a 14010685332 to JSP/MCC (rev2)
URL   : https://patchwork.freedesktop.org/series/77382/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8506_full -> Patchwork_17717_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17717_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-kbl7/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17717/shard-kbl4/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-iclb:         [PASS][3] -> [INCOMPLETE][4] ([i915#1185])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-iclb6/igt@gem_workarounds@suspend-resume-fd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17717/shard-iclb3/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-random:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#54])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17717/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#300])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17717/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#1188])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17717/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17717/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([fdo#108145] / [i915#265])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17717/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#31])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-skl3/igt@kms_setmode@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17717/shard-skl9/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][17] ([i915#1436] / [i915#716]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-apl6/igt@gen9_exec_parse@allowed-all.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17717/shard-apl2/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen:
    - shard-skl:          [FAIL][19] ([i915#54]) -> [PASS][20] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17717/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-apl:          [DMESG-WARN][21] ([i915#180]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17717/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-kbl:          [DMESG-WARN][23] ([i915#180]) -> [PASS][24] +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17717/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-snb:          [SKIP][25] ([fdo#109271]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-snb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17717/shard-snb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][27] ([i915#1188]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17717/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][29] ([fdo#108145] / [i915#265]) -> [PASS][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17717/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][31] ([fdo#109441]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-iclb1/igt@kms_psr@psr2_primary_blt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17717/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  * {igt@prime_vgem@sync@rcs0}:
    - shard-iclb:         [INCOMPLETE][33] ([i915#409]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-iclb8/igt@prime_vgem@sync@rcs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17717/shard-iclb8/igt@prime_vgem@sync@rcs0.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic:
    - shard-apl:          [TIMEOUT][35] ([i915#1319]) -> [FAIL][36] ([fdo#110321] / [fdo#110336])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-apl1/igt@kms_content_protection@atomic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17717/shard-apl4/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [TIMEOUT][37] ([i915#1319]) -> [FAIL][38] ([fdo#110321])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-apl8/igt@kms_content_protection@srm.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17717/shard-apl7/igt@kms_content_protection@srm.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [DMESG-FAIL][39] ([i915#180] / [i915#95]) -> [FAIL][40] ([i915#1121] / [i915#93] / [i915#95])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17717/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1121]: https://gitlab.freedesktop.org/drm/intel/issues/1121
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1883]: https://gitlab.freedesktop.org/drm/intel/issues/1883
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8506 -> Patchwork_17717

  CI-20190529: 20190529
  CI_DRM_8506: d6a73e9084ff6adfabbad014bc294d254484f304 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5661: a772a7c7a761c6125bc0af5284ad603478107737 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17717: e71c461a0da44e3fd095719790961a6606eb4e8c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17717/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
