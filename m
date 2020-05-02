Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 140F11C24C2
	for <lists+intel-gfx@lfdr.de>; Sat,  2 May 2020 13:36:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 426AC6E0F2;
	Sat,  2 May 2020 11:35:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1AF0F6E0E9;
 Sat,  2 May 2020 11:35:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E5123A47EE;
 Sat,  2 May 2020 11:35:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 02 May 2020 11:35:55 -0000
Message-ID: <158841935590.5001.8363153908129472307@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200502082654.6847-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200502082654.6847-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Repeat_the_rps_clock_frequency_measurement?=
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

Series: drm/i915/selftests: Repeat the rps clock frequency measurement
URL   : https://patchwork.freedesktop.org/series/76846/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8409_full -> Patchwork_17549_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17549_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17549_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17549_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-tglb:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17549/shard-tglb7/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17549_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-tglb:         [PASS][2] -> [INCOMPLETE][3] ([i915#456])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8409/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17549/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-skl:          [PASS][4] -> [FAIL][5] ([IGT#5])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8409/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17549/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#109349])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8409/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17549/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled:
    - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#52] / [i915#54])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8409/shard-glk2/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17549/shard-glk5/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][10] -> [FAIL][11] ([i915#1188]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8409/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17549/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b-frame-sequence:
    - shard-skl:          [PASS][12] -> [FAIL][13] ([i915#53])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8409/shard-skl1/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b-frame-sequence.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17549/shard-skl3/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b-frame-sequence.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [PASS][14] -> [DMESG-WARN][15] ([i915#180]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8409/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17549/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-apl:          [PASS][16] -> [DMESG-WARN][17] ([i915#180]) +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8409/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17549/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][18] -> [FAIL][19] ([fdo#108145] / [i915#265])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8409/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17549/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][20] -> [SKIP][21] ([fdo#109441]) +2 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8409/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17549/shard-iclb7/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][22] -> [FAIL][23] ([i915#31])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8409/shard-apl7/igt@kms_setmode@basic.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17549/shard-apl2/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][24] ([i915#716]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8409/shard-apl7/igt@gen9_exec_parse@allowed-all.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17549/shard-apl8/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-skl:          [INCOMPLETE][26] ([i915#151] / [i915#69]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8409/shard-skl10/igt@i915_pm_rpm@system-suspend.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17549/shard-skl2/igt@i915_pm_rpm@system-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][28] ([i915#180]) -> [PASS][29] +7 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8409/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17549/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * {igt@kms_flip@flip-vs-suspend@a-dp1}:
    - shard-apl:          [DMESG-WARN][30] ([i915#180]) -> [PASS][31] +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8409/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17549/shard-apl2/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][32] ([i915#1188]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8409/shard-skl1/igt@kms_hdr@bpc-switch.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17549/shard-skl1/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][34] ([i915#899]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8409/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17549/shard-glk6/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][36] ([fdo#109441]) -> [PASS][37] +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8409/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17549/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  
#### Warnings ####

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-apl:          [FAIL][38] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][39] ([fdo#108145] / [i915#265])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8409/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17549/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [FAIL][40] ([i915#608]) -> [SKIP][41] ([fdo#109642] / [fdo#111068])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8409/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17549/shard-iclb7/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8409 -> Patchwork_17549

  CI-20190529: 20190529
  CI_DRM_8409: 62a6fd0fefe59854db85f52a0ee1d3b1b4a9c51e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5626: f27fdfff026276ac75c69e487c929a843f66f6ca @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17549: 78830699b88e1514b15f5fc113a642fe72eb9b7f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17549/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
