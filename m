Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F521AB36E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 23:39:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93C606EA73;
	Wed, 15 Apr 2020 21:39:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E17406EA71;
 Wed, 15 Apr 2020 21:39:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B9E10A0088;
 Wed, 15 Apr 2020 21:39:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Wed, 15 Apr 2020 21:39:13 -0000
Message-ID: <158698675372.21016.15253160509608103474@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200414205755.2777261-1-matthew.d.roper@intel.com>
In-Reply-To: <20200414205755.2777261-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Use_single_set_of_AUX_powerwell_ops_for_gen11+?=
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

Series: drm/i915: Use single set of AUX powerwell ops for gen11+
URL   : https://patchwork.freedesktop.org/series/75943/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8298_full -> Patchwork_17301_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17301_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17301_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17301_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_dp_aux_dev:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-iclb5/igt@kms_dp_aux_dev.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17301/shard-iclb8/igt@kms_dp_aux_dev.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8298_full and Patchwork_17301_full:

### New IGT tests (27) ###

  * igt@kms_plane_cursor@pipe-a-overlay-size-128:
    - Statuses : 8 pass(s)
    - Exec time: [1.66, 3.69] s

  * igt@kms_plane_cursor@pipe-a-overlay-size-256:
    - Statuses : 8 pass(s)
    - Exec time: [1.65, 3.65] s

  * igt@kms_plane_cursor@pipe-a-overlay-size-64:
    - Statuses : 8 pass(s)
    - Exec time: [1.65, 3.66] s

  * igt@kms_plane_cursor@pipe-a-primary-size-128:
    - Statuses : 8 pass(s)
    - Exec time: [1.63, 3.48] s

  * igt@kms_plane_cursor@pipe-a-primary-size-256:
    - Statuses : 8 pass(s)
    - Exec time: [1.63, 3.40] s

  * igt@kms_plane_cursor@pipe-a-primary-size-64:
    - Statuses : 7 pass(s)
    - Exec time: [1.63, 2.59] s

  * igt@kms_plane_cursor@pipe-a-viewport-size-128:
    - Statuses : 8 pass(s)
    - Exec time: [1.65, 3.68] s

  * igt@kms_plane_cursor@pipe-a-viewport-size-256:
    - Statuses : 8 pass(s)
    - Exec time: [1.64, 3.67] s

  * igt@kms_plane_cursor@pipe-a-viewport-size-64:
    - Statuses : 8 pass(s)
    - Exec time: [1.64, 3.68] s

  * igt@kms_plane_cursor@pipe-b-overlay-size-128:
    - Statuses : 8 pass(s)
    - Exec time: [2.22, 4.90] s

  * igt@kms_plane_cursor@pipe-b-overlay-size-256:
    - Statuses : 8 pass(s)
    - Exec time: [2.22, 4.83] s

  * igt@kms_plane_cursor@pipe-b-overlay-size-64:
    - Statuses : 8 pass(s)
    - Exec time: [2.22, 4.85] s

  * igt@kms_plane_cursor@pipe-b-primary-size-128:
    - Statuses : 8 pass(s)
    - Exec time: [2.21, 4.66] s

  * igt@kms_plane_cursor@pipe-b-primary-size-256:
    - Statuses : 8 pass(s)
    - Exec time: [2.21, 4.61] s

  * igt@kms_plane_cursor@pipe-b-primary-size-64:
    - Statuses : 8 pass(s)
    - Exec time: [2.20, 4.60] s

  * igt@kms_plane_cursor@pipe-b-viewport-size-128:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_plane_cursor@pipe-b-viewport-size-256:
    - Statuses : 8 pass(s)
    - Exec time: [2.23, 4.84] s

  * igt@kms_plane_cursor@pipe-b-viewport-size-64:
    - Statuses : 8 pass(s)
    - Exec time: [2.26, 4.86] s

  * igt@kms_plane_cursor@pipe-c-overlay-size-128:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.80] s

  * igt@kms_plane_cursor@pipe-c-overlay-size-256:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.89] s

  * igt@kms_plane_cursor@pipe-c-overlay-size-64:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 3.65] s

  * igt@kms_plane_cursor@pipe-c-primary-size-128:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.66] s

  * igt@kms_plane_cursor@pipe-c-primary-size-256:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.57] s

  * igt@kms_plane_cursor@pipe-c-primary-size-64:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.64] s

  * igt@kms_plane_cursor@pipe-c-viewport-size-128:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.89] s

  * igt@kms_plane_cursor@pipe-c-viewport-size-256:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.89] s

  * igt@kms_plane_cursor@pipe-c-viewport-size-64:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.83] s

  

Known issues
------------

  Here are the changes found in Patchwork_17301_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@i2c:
    - shard-iclb:         [PASS][3] -> [INCOMPLETE][4] ([i915#189])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-iclb1/igt@i915_pm_rpm@i2c.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17301/shard-iclb7/igt@i915_pm_rpm@i2c.html

  * igt@i915_selftest@live@active:
    - shard-glk:          [PASS][5] -> [DMESG-FAIL][6] ([i915#666] / [i915#765])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-glk8/igt@i915_selftest@live@active.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17301/shard-glk5/igt@i915_selftest@live@active.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +4 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl2/igt@i915_suspend@forcewake.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17301/shard-kbl7/igt@i915_suspend@forcewake.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl1/igt@i915_suspend@sysfs-reader.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17301/shard-apl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_legacy@all-pipes-torture-bo:
    - shard-hsw:          [PASS][11] -> [DMESG-WARN][12] ([i915#128])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-hsw6/igt@kms_cursor_legacy@all-pipes-torture-bo.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17301/shard-hsw7/igt@kms_cursor_legacy@all-pipes-torture-bo.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#52] / [i915#54])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17301/shard-glk1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#34])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17301/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#79])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-glk8/igt@kms_flip@flip-vs-expired-vblank.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17301/shard-glk1/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#34])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17301/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17301/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#31])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl7/igt@kms_setmode@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17301/shard-skl4/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * {igt@gem_wait@write-wait@all}:
    - shard-skl:          [FAIL][25] ([i915#1676]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl2/igt@gem_wait@write-wait@all.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17301/shard-skl4/igt@gem_wait@write-wait@all.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][27] ([i915#716]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl3/igt@gen9_exec_parse@allowed-all.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17301/shard-apl1/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][29] ([i915#79]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17301/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][31] ([i915#180]) -> [PASS][32] +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17301/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][33] ([fdo#109441]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-iclb8/igt@kms_psr@psr2_basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17301/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][35] ([i915#31]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl4/igt@kms_setmode@basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17301/shard-kbl6/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17301/shard-apl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-kbl:          [FAIL][39] ([fdo#108145] / [i915#265] / [i915#93] / [i915#95]) -> [FAIL][40] ([fdo#108145] / [i915#265])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17301/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
    - shard-apl:          [FAIL][41] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][42] ([fdo#108145] / [i915#265])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl4/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17301/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][43], [FAIL][44]) ([i915#1423] / [i915#716]) -> [FAIL][45] ([i915#1423])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl3/igt@runner@aborted.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl3/igt@runner@aborted.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17301/shard-apl2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
  [i915#1676]: https://gitlab.freedesktop.org/drm/intel/issues/1676
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#765]: https://gitlab.freedesktop.org/drm/intel/issues/765
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8298 -> Patchwork_17301

  CI-20190529: 20190529
  CI_DRM_8298: 17f82f0c2857d0b442adbdb62eb44b61d0f5b775 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5589: 31962324ac86f029e2841e56e97c42cf9d572956 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17301: 9df67892b530cc90426bd404c750a6e3f2e96f40 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17301/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
