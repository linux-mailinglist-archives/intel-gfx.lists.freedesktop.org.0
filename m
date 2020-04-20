Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2F31B04B7
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 10:43:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4540989DA7;
	Mon, 20 Apr 2020 08:43:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9C81E89DA7;
 Mon, 20 Apr 2020 08:43:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 93263A363B;
 Mon, 20 Apr 2020 08:43:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Mon, 20 Apr 2020 08:43:45 -0000
Message-ID: <158737222557.29874.2408179674064486841@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200419134627.359025-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20200419134627.359025-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_store_HW_tagging_information_into_tracepoints_=28rev2?=
 =?utf-8?q?=29?=
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

Series: drm/i915: store HW tagging information into tracepoints (rev2)
URL   : https://patchwork.freedesktop.org/series/75849/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8324_full -> Patchwork_17373_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17373_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@debugfs-reader:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8324/shard-apl7/igt@i915_suspend@debugfs-reader.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17373/shard-apl6/igt@i915_suspend@debugfs-reader.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][3] -> [FAIL][4] ([i915#1188])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8324/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17373/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_mmap_write_crc@main:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#93] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8324/shard-kbl6/igt@kms_mmap_write_crc@main.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17373/shard-kbl7/igt@kms_mmap_write_crc@main.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([fdo#108145] / [i915#265])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8324/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17373/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][9] -> [FAIL][10] ([i915#173])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8324/shard-iclb5/igt@kms_psr@no_drrs.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17373/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109441]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8324/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17373/shard-iclb6/igt@kms_psr@psr2_no_drrs.html

  
#### Possible fixes ####

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][13] ([fdo#109276]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8324/shard-iclb8/igt@gem_exec_params@invalid-bsd-ring.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17373/shard-iclb4/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-snb:          [FAIL][15] ([i915#1066]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8324/shard-snb6/igt@i915_pm_rc6_residency@rc6-idle.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17373/shard-snb5/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [INCOMPLETE][17] ([i915#1531] / [i915#1658]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8324/shard-tglb1/igt@i915_selftest@live@requests.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17373/shard-tglb8/igt@i915_selftest@live@requests.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled:
    - shard-glk:          [FAIL][19] ([i915#52] / [i915#54]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8324/shard-glk4/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17373/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled.html

  * {igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-hdmi-a1-hdmi-a2}:
    - shard-glk:          [FAIL][21] ([i915#34]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8324/shard-glk6/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-hdmi-a1-hdmi-a2.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17373/shard-glk4/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-hdmi-a1-hdmi-a2.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-kbl:          [DMESG-WARN][23] ([i915#180]) -> [PASS][24] +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8324/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17373/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * {igt@kms_flip@flip-vs-suspend@a-dp1}:
    - shard-apl:          [DMESG-WARN][25] ([i915#180]) -> [PASS][26] +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8324/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17373/shard-apl7/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][27] ([i915#1188]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8324/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17373/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][29] ([fdo#108145] / [i915#265]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8324/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17373/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][31] ([fdo#109441]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8324/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17373/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc5-psr:
    - shard-snb:          [INCOMPLETE][33] ([i915#82]) -> [SKIP][34] ([fdo#109271])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8324/shard-snb5/igt@i915_pm_dc@dc5-psr.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17373/shard-snb6/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][35] ([i915#454]) -> [SKIP][36] ([i915#468])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8324/shard-tglb5/igt@i915_pm_dc@dc6-psr.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17373/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-apl:          [FAIL][37] ([fdo#108145] / [i915#265]) -> [FAIL][38] ([fdo#108145] / [i915#265] / [i915#95])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8324/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17373/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
    - shard-kbl:          [FAIL][39] ([fdo#108145] / [i915#265]) -> [FAIL][40] ([fdo#108145] / [i915#265] / [i915#93] / [i915#95])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8324/shard-kbl6/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17373/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1066]: https://gitlab.freedesktop.org/drm/intel/issues/1066
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1658]: https://gitlab.freedesktop.org/drm/intel/issues/1658
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8324 -> Patchwork_17373

  CI-20190529: 20190529
  CI_DRM_8324: 279672c3e0717ef7047b97b49d98636ef2242a91 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5600: 363bdd3e5bf06f5c964a12ccec71d7684cf46847 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17373: be955ab0bea376a36b10a28afc85d4aac5bd6f97 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17373/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
