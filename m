Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 693111AC023
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 13:49:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EC256EB45;
	Thu, 16 Apr 2020 11:49:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 394666E3EF;
 Thu, 16 Apr 2020 11:49:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 33D0DA0088;
 Thu, 16 Apr 2020 11:49:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 16 Apr 2020 11:49:36 -0000
Message-ID: <158703777617.20886.7423329282550898680@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200415144512.29953-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200415144512.29953-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Move_the_batch_buffer_pool_from_the_engine_to_the_g?=
 =?utf-8?q?t?=
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

Series: drm/i915/gt: Move the batch buffer pool from the engine to the gt
URL   : https://patchwork.freedesktop.org/series/75979/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8301_full -> Patchwork_17310_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17310_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox:
    - shard-apl:          [PASS][1] -> [FAIL][2] ([i915#1528])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/shard-apl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17310/shard-apl3/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@i915_selftest@live@requests:
    - shard-iclb:         [PASS][3] -> [INCOMPLETE][4] ([i915#1531] / [i915#1581])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/shard-iclb6/igt@i915_selftest@live@requests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17310/shard-iclb2/igt@i915_selftest@live@requests.html

  * igt@i915_suspend@forcewake:
    - shard-glk:          [PASS][5] -> [INCOMPLETE][6] ([i915#58] / [k.org#198133])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/shard-glk9/igt@i915_suspend@forcewake.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17310/shard-glk4/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen:
    - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#54])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17310/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17310/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-rgb565-render-untiled:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#52] / [i915#54]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17310/shard-glk4/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#34])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17310/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#34])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/shard-skl5/igt@kms_flip@plain-flip-fb-recreate.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17310/shard-skl1/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#1188])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17310/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145] / [i915#265]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17310/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/shard-iclb2/igt@kms_psr@psr2_basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17310/shard-iclb1/igt@kms_psr@psr2_basic.html

  
#### Possible fixes ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][23] ([i915#454]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17310/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_suspend@debugfs-reader:
    - shard-skl:          [INCOMPLETE][25] ([i915#69]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/shard-skl6/igt@i915_suspend@debugfs-reader.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17310/shard-skl10/igt@i915_suspend@debugfs-reader.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][27] ([i915#180]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/shard-apl4/igt@i915_suspend@sysfs-reader.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17310/shard-apl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][29] ([i915#180]) -> [PASS][30] +4 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17310/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy:
    - shard-glk:          [FAIL][31] ([i915#1566]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17310/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html

  * igt@kms_cursor_legacy@pipe-d-torture-move:
    - shard-tglb:         [DMESG-WARN][33] ([i915#128]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/shard-tglb1/igt@kms_cursor_legacy@pipe-d-torture-move.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17310/shard-tglb6/igt@kms_cursor_legacy@pipe-d-torture-move.html

  * igt@kms_flip@2x-plain-flip-fb-recreate:
    - shard-glk:          [FAIL][35] ([i915#34]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17310/shard-glk4/igt@kms_flip@2x-plain-flip-fb-recreate.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][37] ([i915#79]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/shard-skl7/igt@kms_flip@flip-vs-expired-vblank.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17310/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][39] ([fdo#108145] / [i915#265]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17310/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][41] ([fdo#109441]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17310/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][43] ([i915#31] / [i915#93] / [i915#95]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/shard-kbl6/igt@kms_setmode@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17310/shard-kbl2/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][45] ([i915#1515]) -> [FAIL][46] ([i915#1515])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17310/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [INCOMPLETE][47] ([i915#1531]) -> [INCOMPLETE][48] ([i915#1531] / [i915#1658])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/shard-tglb1/igt@i915_selftest@live@requests.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17310/shard-tglb1/igt@i915_selftest@live@requests.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [FAIL][49] ([i915#608]) -> [SKIP][50] ([fdo#109642] / [fdo#111068])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17310/shard-iclb3/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#1566]: https://gitlab.freedesktop.org/drm/intel/issues/1566
  [i915#1581]: https://gitlab.freedesktop.org/drm/intel/issues/1581
  [i915#1658]: https://gitlab.freedesktop.org/drm/intel/issues/1658
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8301 -> Patchwork_17310

  CI-20190529: 20190529
  CI_DRM_8301: 7d2bdd2df0d18945bb274de8bc7560e14779e346 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5590: c7b4a43942be32245b1c00b5b4a38401d8ca6e0d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17310: 4498659d60153dd53b6ead50a87f5b5221d2a670 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17310/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
