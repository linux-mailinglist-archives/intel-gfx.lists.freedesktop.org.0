Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E58051CC237
	for <lists+intel-gfx@lfdr.de>; Sat,  9 May 2020 16:43:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BEA76E370;
	Sat,  9 May 2020 14:43:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CA6F66E36F;
 Sat,  9 May 2020 14:43:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BCE86A0078;
 Sat,  9 May 2020 14:43:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 09 May 2020 14:43:34 -0000
Message-ID: <158903541474.12066.16260624213222093717@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200509095733.30073-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200509095733.30073-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Couple_up_old_virtual_breadcrumb_on_new_sibling?=
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

Series: drm/i915/gt: Couple up old virtual breadcrumb on new sibling
URL   : https://patchwork.freedesktop.org/series/77101/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8456_full -> Patchwork_17615_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17615_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:
    - shard-kbl:          [PASS][1] -> [FAIL][2] ([i915#54] / [i915#93] / [i915#95])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17615/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][3] -> [FAIL][4] ([IGT#5])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17615/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#1188])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-skl9/igt@kms_hdr@bpc-switch.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17615/shard-skl9/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17615/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109441]) +4 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17615/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#31])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-kbl6/igt@kms_setmode@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17615/shard-kbl3/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@kms_cursor_legacy@all-pipes-torture-move:
    - shard-tglb:         [DMESG-WARN][13] ([i915#128]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-tglb2/igt@kms_cursor_legacy@all-pipes-torture-move.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17615/shard-tglb3/igt@kms_cursor_legacy@all-pipes-torture-move.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][15] ([fdo#109349]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17615/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-apl:          [DMESG-WARN][17] ([i915#180]) -> [PASS][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17615/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * {igt@kms_flip@flip-vs-suspend@a-edp1}:
    - shard-skl:          [INCOMPLETE][19] ([i915#198]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-skl2/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17615/shard-skl2/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * {igt@kms_flip@flip-vs-suspend@c-hdmi-a1}:
    - shard-hsw:          [INCOMPLETE][21] ([i915#61]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-hsw4/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17615/shard-hsw6/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-skl:          [FAIL][23] ([i915#49]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17615/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][25] ([i915#1188]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17615/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][27] ([i915#899]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17615/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][29] ([fdo#109441]) -> [PASS][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17615/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][31] ([i915#31]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-apl2/igt@kms_setmode@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17615/shard-apl3/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][33] ([i915#468]) -> [FAIL][34] ([i915#454])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17615/shard-tglb5/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][35] ([i915#1319]) -> [FAIL][36] ([fdo#110321] / [fdo#110336])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-apl3/igt@kms_content_protection@atomic-dpms.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17615/shard-apl8/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [FAIL][37] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][38] ([i915#1319])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-apl1/igt@kms_content_protection@legacy.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17615/shard-apl4/igt@kms_content_protection@legacy.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-apl:          [FAIL][39] ([i915#49] / [i915#95]) -> [FAIL][40] ([i915#49])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-apl8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17615/shard-apl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][41] ([fdo#109642] / [fdo#111068]) -> [FAIL][42] ([i915#608])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8456/shard-iclb5/igt@kms_psr2_su@page_flip.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17615/shard-iclb2/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8456 -> Patchwork_17615

  CI-20190529: 20190529
  CI_DRM_8456: 4027cd5e6a38cb88b4ae0296d2f06daf8944f26b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5643: 9d0576c821f886fd053effd96cd3c441fee2ce53 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17615: 52901240bad544703067ab46afce33bd7e63e04d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17615/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
