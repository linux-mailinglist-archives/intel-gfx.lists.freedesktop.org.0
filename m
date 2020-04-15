Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 973121AB45D
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 01:45:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDEAF6EAB0;
	Wed, 15 Apr 2020 23:45:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C4E516EAB0;
 Wed, 15 Apr 2020 23:45:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B3EBCA0091;
 Wed, 15 Apr 2020 23:45:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 15 Apr 2020 23:45:03 -0000
Message-ID: <158699430370.21016.12378049496112384034@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZGV2?=
 =?utf-8?q?m=5Fdrm=5Fdev=5Falloc=2C_v2?=
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

Series: devm_drm_dev_alloc, v2
URL   : https://patchwork.freedesktop.org/series/75956/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8298_full -> Patchwork_17304_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_8298_full and Patchwork_17304_full:

### New IGT tests (27) ###

  * igt@kms_plane_cursor@pipe-a-overlay-size-128:
    - Statuses : 8 pass(s)
    - Exec time: [1.65, 3.69] s

  * igt@kms_plane_cursor@pipe-a-overlay-size-256:
    - Statuses : 8 pass(s)
    - Exec time: [1.64, 3.68] s

  * igt@kms_plane_cursor@pipe-a-overlay-size-64:
    - Statuses : 8 pass(s)
    - Exec time: [1.65, 3.68] s

  * igt@kms_plane_cursor@pipe-a-primary-size-128:
    - Statuses : 8 pass(s)
    - Exec time: [1.64, 3.43] s

  * igt@kms_plane_cursor@pipe-a-primary-size-256:
    - Statuses : 8 pass(s)
    - Exec time: [1.63, 3.43] s

  * igt@kms_plane_cursor@pipe-a-primary-size-64:
    - Statuses : 8 pass(s)
    - Exec time: [1.63, 3.50] s

  * igt@kms_plane_cursor@pipe-a-viewport-size-128:
    - Statuses : 8 pass(s)
    - Exec time: [1.65, 3.65] s

  * igt@kms_plane_cursor@pipe-a-viewport-size-256:
    - Statuses : 8 pass(s)
    - Exec time: [1.64, 3.68] s

  * igt@kms_plane_cursor@pipe-a-viewport-size-64:
    - Statuses : 8 pass(s)
    - Exec time: [1.65, 3.69] s

  * igt@kms_plane_cursor@pipe-b-overlay-size-128:
    - Statuses : 8 pass(s)
    - Exec time: [2.21, 4.80] s

  * igt@kms_plane_cursor@pipe-b-overlay-size-256:
    - Statuses : 8 pass(s)
    - Exec time: [2.24, 4.84] s

  * igt@kms_plane_cursor@pipe-b-overlay-size-64:
    - Statuses : 8 pass(s)
    - Exec time: [2.21, 4.86] s

  * igt@kms_plane_cursor@pipe-b-primary-size-128:
    - Statuses : 8 pass(s)
    - Exec time: [2.20, 4.62] s

  * igt@kms_plane_cursor@pipe-b-primary-size-256:
    - Statuses : 8 pass(s)
    - Exec time: [2.21, 4.58] s

  * igt@kms_plane_cursor@pipe-b-primary-size-64:
    - Statuses : 8 pass(s)
    - Exec time: [2.21, 4.62] s

  * igt@kms_plane_cursor@pipe-b-viewport-size-128:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_plane_cursor@pipe-b-viewport-size-256:
    - Statuses : 8 pass(s)
    - Exec time: [2.23, 4.86] s

  * igt@kms_plane_cursor@pipe-b-viewport-size-64:
    - Statuses : 8 pass(s)
    - Exec time: [2.28, 4.82] s

  * igt@kms_plane_cursor@pipe-c-overlay-size-128:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 3.59] s

  * igt@kms_plane_cursor@pipe-c-overlay-size-256:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.87] s

  * igt@kms_plane_cursor@pipe-c-overlay-size-64:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.87] s

  * igt@kms_plane_cursor@pipe-c-primary-size-128:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.62] s

  * igt@kms_plane_cursor@pipe-c-primary-size-256:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.62] s

  * igt@kms_plane_cursor@pipe-c-primary-size-64:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.71] s

  * igt@kms_plane_cursor@pipe-c-viewport-size-128:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.86] s

  * igt@kms_plane_cursor@pipe-c-viewport-size-256:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.85] s

  * igt@kms_plane_cursor@pipe-c-viewport-size-64:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.90] s

  

Known issues
------------

  Here are the changes found in Patchwork_17304_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_mmap_wc@bad-object:
    - shard-hsw:          [PASS][1] -> [INCOMPLETE][2] ([i915#61])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-hsw1/igt@gem_mmap_wc@bad-object.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17304/shard-hsw4/igt@gem_mmap_wc@bad-object.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17304/shard-apl4/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-snb:          [PASS][5] -> [FAIL][6] ([i915#1066])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-snb2/igt@i915_pm_rc6_residency@rc6-idle.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17304/shard-snb5/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#1531] / [i915#1658])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-tglb1/igt@i915_selftest@live@requests.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17304/shard-tglb3/igt@i915_selftest@live@requests.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17304/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled:
    - shard-snb:          [PASS][11] -> [SKIP][12] ([fdo#109271]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-snb6/igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17304/shard-snb6/igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#79])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17304/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#221])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl4/igt@kms_flip@flip-vs-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17304/shard-skl8/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#34])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17304/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145] / [i915#265]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17304/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17304/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html

  
#### Possible fixes ####

  * {igt@gem_wait@write-wait@all}:
    - shard-skl:          [FAIL][23] ([i915#1676]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl2/igt@gem_wait@write-wait@all.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17304/shard-skl2/igt@gem_wait@write-wait@all.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][25] ([i915#716]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl3/igt@gen9_exec_parse@allowed-all.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17304/shard-apl8/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][27] ([i915#1188]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17304/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][29] ([i915#180]) -> [PASS][30] +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17304/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][31] ([fdo#109441]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-iclb1/igt@kms_psr@psr2_primary_mmap_cpu.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17304/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34] +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17304/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * {igt@perf@polling-parameterized}:
    - shard-hsw:          [FAIL][35] ([i915#1542]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-hsw6/igt@perf@polling-parameterized.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17304/shard-hsw7/igt@perf@polling-parameterized.html

  * {igt@sysfs_heartbeat_interval@mixed@vcs0}:
    - shard-skl:          [INCOMPLETE][37] ([i915#198]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl7/igt@sysfs_heartbeat_interval@mixed@vcs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17304/shard-skl5/igt@sysfs_heartbeat_interval@mixed@vcs0.html

  
#### Warnings ####

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [DMESG-FAIL][39] ([i915#180] / [i915#95]) -> [FAIL][40] ([i915#93] / [i915#95])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17304/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-apl:          [FAIL][41] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][42] ([fdo#108145] / [i915#265])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl4/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17304/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][43], [FAIL][44]) ([i915#1423] / [i915#716]) -> [FAIL][45] ([i915#1423])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl3/igt@runner@aborted.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl3/igt@runner@aborted.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17304/shard-apl4/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1066]: https://gitlab.freedesktop.org/drm/intel/issues/1066
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1658]: https://gitlab.freedesktop.org/drm/intel/issues/1658
  [i915#1676]: https://gitlab.freedesktop.org/drm/intel/issues/1676
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8298 -> Patchwork_17304

  CI-20190529: 20190529
  CI_DRM_8298: 17f82f0c2857d0b442adbdb62eb44b61d0f5b775 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5589: 31962324ac86f029e2841e56e97c42cf9d572956 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17304: 6b267f98398f217419dc7403a953f518eec588bb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17304/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
