Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6797E1BDCBD
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 14:56:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AE2B6EE01;
	Wed, 29 Apr 2020 12:56:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 953706EDFE;
 Wed, 29 Apr 2020 12:56:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8EF33A0BCB;
 Wed, 29 Apr 2020 12:56:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bartlomiej Zolnierkiewicz" <b.zolnierkie@samsung.com>
Date: Wed, 29 Apr 2020 12:56:08 -0000
Message-ID: <158816496856.6697.15239467800373669572@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200420130118.7a866fd5@canb.auug.org.au>
In-Reply-To: <20200420130118.7a866fd5@canb.auug.org.au>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgbGlu?=
 =?utf-8?q?ux-next=3A_build_failure_after_merge_of_the_drm-misc_tree?=
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

Series: linux-next: build failure after merge of the drm-misc tree
URL   : https://patchwork.freedesktop.org/series/76709/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8390_full -> Patchwork_17505_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17505_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@suspend:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2] ([i915#1185])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-iclb7/igt@gem_eio@suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17505/shard-iclb3/igt@gem_eio@suspend.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-apl1/igt@gem_workarounds@suspend-resume-fd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17505/shard-apl4/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_rps@waitboost:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#39])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-skl10/igt@i915_pm_rps@waitboost.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17505/shard-skl7/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17505/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#177] / [i915#52] / [i915#54])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-glk2/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17505/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#69])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17505/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([fdo#108145] / [i915#265])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17505/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109441]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17505/shard-iclb4/igt@kms_psr@psr2_cursor_blt.html

  
#### Possible fixes ####

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][17] ([i915#180]) -> [PASS][18] +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17505/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][19] ([IGT#5] / [i915#697]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17505/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2}:
    - shard-glk:          [FAIL][21] ([i915#79]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17505/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][23] ([i915#180]) -> [PASS][24] +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17505/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * {igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1}:
    - shard-skl:          [FAIL][25] ([i915#34]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17505/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-b:
    - shard-snb:          [SKIP][27] ([fdo#109271]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-snb4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-b.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17505/shard-snb6/igt@kms_pipe_crc_basic@hang-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][29] ([fdo#108145] / [i915#265]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17505/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [SKIP][31] ([fdo#109441]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17505/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [FAIL][33] ([i915#31]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-hsw1/igt@kms_setmode@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17505/shard-hsw7/igt@kms_setmode@basic.html

  * {igt@perf@polling-parameterized}:
    - shard-hsw:          [FAIL][35] ([i915#1542]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/shard-hsw8/igt@perf@polling-parameterized.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17505/shard-hsw7/igt@perf@polling-parameterized.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#697]: https://gitlab.freedesktop.org/drm/intel/issues/697
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8390 -> Patchwork_17505

  CI-20190529: 20190529
  CI_DRM_8390: 89473e10666c78c4df9e92c9caf03d7311c291cb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5614: d095827add11d4e8158b87683971ee659749d9a4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17505: 4cb00cc7b2f7e895d430b9bf376db1a803fddd6a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17505/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
