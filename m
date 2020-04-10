Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F05FD1A4B9E
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2020 23:37:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A7266ED5E;
	Fri, 10 Apr 2020 21:37:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3ACA46ED5D;
 Fri, 10 Apr 2020 21:37:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 33C70A47E0;
 Fri, 10 Apr 2020 21:37:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Colin King" <colin.king@canonical.com>
Date: Fri, 10 Apr 2020 21:37:20 -0000
Message-ID: <158655464017.10045.13801822095980322933@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200410192252.76908-1-colin.king@canonical.com>
In-Reply-To: <20200410192252.76908-1-colin.king@canonical.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_remove_redundant_assignment_to_variable_x?=
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

Series: drm/i915/gt: remove redundant assignment to variable x
URL   : https://patchwork.freedesktop.org/series/75814/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8290_full -> Patchwork_17279_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_8290_full and Patchwork_17279_full:

### New IGT tests (1) ###

  * igt@gem_userptr_blits@process-exit-mmap:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_17279_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@forcewake:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-apl2/igt@i915_suspend@forcewake.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17279/shard-apl8/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17279/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#72])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-glk2/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17279/shard-glk2/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#221])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17279/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#1188])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17279/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([fdo#108145] / [i915#265])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17279/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109441]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17279/shard-iclb5/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][15] -> [FAIL][16] ([i915#31])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-apl1/igt@kms_setmode@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17279/shard-apl1/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * {igt@gem_exec_schedule@pi-distinct-iova@vecs0}:
    - shard-glk:          [FAIL][17] -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-glk1/igt@gem_exec_schedule@pi-distinct-iova@vecs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17279/shard-glk1/igt@gem_exec_schedule@pi-distinct-iova@vecs0.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-kbl:          [DMESG-WARN][19] ([i915#183]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-kbl4/igt@gem_tiled_swapping@non-threaded.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17279/shard-kbl2/igt@gem_tiled_swapping@non-threaded.html

  * {igt@gem_wait@write-wait@vcs0}:
    - shard-skl:          [FAIL][21] -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-skl6/igt@gem_wait@write-wait@vcs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17279/shard-skl10/igt@gem_wait@write-wait@vcs0.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [INCOMPLETE][23] ([i915#1531]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-tglb1/igt@i915_selftest@live@requests.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17279/shard-tglb5/igt@i915_selftest@live@requests.html

  * igt@kms_draw_crc@draw-method-rgb565-render-ytiled:
    - shard-glk:          [FAIL][25] ([i915#52] / [i915#54]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17279/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [FAIL][27] ([i915#79]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-glk5/igt@kms_flip@flip-vs-expired-vblank.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17279/shard-glk7/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-skl:          [FAIL][29] ([i915#34]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-skl2/igt@kms_flip@plain-flip-ts-check.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17279/shard-skl8/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][31] ([i915#1188]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17279/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-apl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-apl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17279/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36] +4 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17279/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][37] ([fdo#108145] / [i915#265]) -> [PASS][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17279/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [SKIP][39] ([fdo#109441]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-iclb4/igt@kms_psr@psr2_dpms.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17279/shard-iclb2/igt@kms_psr@psr2_dpms.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][41] ([i915#31]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-skl7/igt@kms_setmode@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17279/shard-skl7/igt@kms_setmode@basic.html

  * {igt@perf@blocking-parameterized}:
    - shard-iclb:         [FAIL][43] ([i915#1542]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-iclb8/igt@perf@blocking-parameterized.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17279/shard-iclb4/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][45] ([i915#658]) -> [SKIP][46] ([i915#588])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17279/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][47] ([i915#180]) -> [INCOMPLETE][48] ([i915#155])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17279/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          [FAIL][49] ([fdo#108145] / [i915#265]) -> [FAIL][50] ([fdo#108145] / [i915#265] / [i915#95])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8290/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17279/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#1532]: https://gitlab.freedesktop.org/drm/intel/issues/1532
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#183]: https://gitlab.freedesktop.org/drm/intel/issues/183
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8290 -> Patchwork_17279

  CI-20190529: 20190529
  CI_DRM_8290: dd69e63dc11c8fdabcc029b27f16e80be504ffc8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5587: 628878f89c61fd628c4a65076f634b099d360b85 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17279: 9d9853e054f38ccdd7bf4399f402d2ddf08911a0 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17279/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
