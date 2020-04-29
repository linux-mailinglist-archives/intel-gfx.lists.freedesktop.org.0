Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0511BE2AE
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 17:27:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B70F6E0CA;
	Wed, 29 Apr 2020 15:27:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E33BD6E0CA;
 Wed, 29 Apr 2020 15:27:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DCF99A363D;
 Wed, 29 Apr 2020 15:27:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 29 Apr 2020 15:27:08 -0000
Message-ID: <158817402890.6697.5054448048017052970@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200428171940.19552-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200428171940.19552-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Put_drm=5Fdisplay=5Fmode_on_diet_=28rev6=29?=
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

Series: drm: Put drm_display_mode on diet (rev6)
URL   : https://patchwork.freedesktop.org/series/73674/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8390_full -> Patchwork_17509_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17509_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17509/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-apl8/igt@kms_hdr@bpc-switch-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17509/shard-apl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([fdo#108145] / [i915#265])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17509/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109441]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17509/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html

  
#### Possible fixes ####

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][9] ([IGT#5] / [i915#697]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17509/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2}:
    - shard-glk:          [FAIL][11] ([i915#79]) -> [PASS][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17509/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][13] ([i915#180]) -> [PASS][14] +5 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17509/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * {igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1}:
    - shard-skl:          [FAIL][15] ([i915#34]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17509/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-skl:          [FAIL][17] ([i915#49]) -> [PASS][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17509/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][19] ([i915#123] / [i915#69]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-skl8/igt@kms_frontbuffer_tracking@psr-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17509/shard-skl5/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-b:
    - shard-snb:          [SKIP][21] ([fdo#109271]) -> [PASS][22] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-snb4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-b.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17509/shard-snb2/igt@kms_pipe_crc_basic@hang-read-crc-pipe-b.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [FAIL][23] ([i915#1036]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17509/shard-skl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [DMESG-WARN][25] ([i915#180]) -> [PASS][26] +4 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17509/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][27] ([fdo#108145] / [i915#265]) -> [PASS][28] +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17509/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [SKIP][29] ([fdo#109441]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17509/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-snb:          [INCOMPLETE][31] ([i915#82]) -> [SKIP][32] ([fdo#109271])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-snb6/igt@i915_pm_dc@dc6-psr.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17509/shard-snb4/igt@i915_pm_dc@dc6-psr.html
    - shard-tglb:         [FAIL][33] ([i915#454]) -> [SKIP][34] ([i915#468]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-tglb1/igt@i915_pm_dc@dc6-psr.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17509/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1036]: https://gitlab.freedesktop.org/drm/intel/issues/1036
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#697]: https://gitlab.freedesktop.org/drm/intel/issues/697
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8390 -> Patchwork_17509

  CI-20190529: 20190529
  CI_DRM_8390: 89473e10666c78c4df9e92c9caf03d7311c291cb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5614: d095827add11d4e8158b87683971ee659749d9a4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17509: db0286c4611d0fd85cb14c8d4d8be259f1b8abb5 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17509/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
