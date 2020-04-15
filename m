Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A14CC1AAAEF
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 16:54:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A9636E9FB;
	Wed, 15 Apr 2020 14:54:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EBEBE6E9E8;
 Wed, 15 Apr 2020 14:54:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E8A09A008A;
 Wed, 15 Apr 2020 14:54:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 15 Apr 2020 14:54:15 -0000
Message-ID: <158696245595.21014.2720452595800994406@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200414122715.20374-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200414122715.20374-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Always_defer_fenced_work_to_the_worker?=
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

Series: drm/i915: Always defer fenced work to the worker
URL   : https://patchwork.freedesktop.org/series/75917/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8298_full -> Patchwork_17295_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_8298_full and Patchwork_17295_full:

### New IGT tests (27) ###

  * igt@kms_plane_cursor@pipe-a-overlay-size-128:
    - Statuses : 7 pass(s)
    - Exec time: [1.66, 2.72] s

  * igt@kms_plane_cursor@pipe-a-overlay-size-256:
    - Statuses : 8 pass(s)
    - Exec time: [1.65, 3.59] s

  * igt@kms_plane_cursor@pipe-a-overlay-size-64:
    - Statuses : 7 pass(s)
    - Exec time: [1.65, 2.73] s

  * igt@kms_plane_cursor@pipe-a-primary-size-128:
    - Statuses : 8 pass(s)
    - Exec time: [1.64, 3.34] s

  * igt@kms_plane_cursor@pipe-a-primary-size-256:
    - Statuses : 8 pass(s)
    - Exec time: [1.64, 3.50] s

  * igt@kms_plane_cursor@pipe-a-primary-size-64:
    - Statuses : 8 pass(s)
    - Exec time: [1.63, 3.36] s

  * igt@kms_plane_cursor@pipe-a-viewport-size-128:
    - Statuses : 8 pass(s)
    - Exec time: [1.65, 3.67] s

  * igt@kms_plane_cursor@pipe-a-viewport-size-256:
    - Statuses : 8 pass(s)
    - Exec time: [1.64, 3.66] s

  * igt@kms_plane_cursor@pipe-a-viewport-size-64:
    - Statuses : 8 pass(s)
    - Exec time: [1.65, 3.69] s

  * igt@kms_plane_cursor@pipe-b-overlay-size-128:
    - Statuses : 8 pass(s)
    - Exec time: [2.23, 4.87] s

  * igt@kms_plane_cursor@pipe-b-overlay-size-256:
    - Statuses : 8 pass(s)
    - Exec time: [2.22, 4.81] s

  * igt@kms_plane_cursor@pipe-b-overlay-size-64:
    - Statuses : 8 pass(s)
    - Exec time: [2.23, 4.81] s

  * igt@kms_plane_cursor@pipe-b-primary-size-128:
    - Statuses : 8 pass(s)
    - Exec time: [2.20, 4.64] s

  * igt@kms_plane_cursor@pipe-b-primary-size-256:
    - Statuses : 8 pass(s)
    - Exec time: [2.21, 4.67] s

  * igt@kms_plane_cursor@pipe-b-primary-size-64:
    - Statuses : 8 pass(s)
    - Exec time: [2.21, 4.67] s

  * igt@kms_plane_cursor@pipe-b-viewport-size-128:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_plane_cursor@pipe-b-viewport-size-256:
    - Statuses : 8 pass(s)
    - Exec time: [2.23, 4.83] s

  * igt@kms_plane_cursor@pipe-b-viewport-size-64:
    - Statuses : 8 pass(s)
    - Exec time: [2.23, 4.86] s

  * igt@kms_plane_cursor@pipe-c-overlay-size-128:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.86] s

  * igt@kms_plane_cursor@pipe-c-overlay-size-256:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.87] s

  * igt@kms_plane_cursor@pipe-c-overlay-size-64:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.84] s

  * igt@kms_plane_cursor@pipe-c-primary-size-128:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.79] s

  * igt@kms_plane_cursor@pipe-c-primary-size-256:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.65] s

  * igt@kms_plane_cursor@pipe-c-primary-size-64:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.63] s

  * igt@kms_plane_cursor@pipe-c-viewport-size-128:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.82] s

  * igt@kms_plane_cursor@pipe-c-viewport-size-256:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 3.60] s

  * igt@kms_plane_cursor@pipe-c-viewport-size-64:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.86] s

  

Known issues
------------

  Here are the changes found in Patchwork_17295_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2] ([i915#69]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl8/igt@i915_pm_backlight@fade_with_suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17295/shard-skl4/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@kms_atomic_transition@1x-modeset-transitions:
    - shard-snb:          [PASS][3] -> [SKIP][4] ([fdo#109271]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-snb2/igt@kms_atomic_transition@1x-modeset-transitions.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17295/shard-snb4/igt@kms_atomic_transition@1x-modeset-transitions.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17295/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#79])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17295/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17295/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17295/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109441])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17295/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#31])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl7/igt@kms_setmode@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17295/shard-skl2/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][17] ([fdo#109276]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-iclb7/igt@gem_exec_params@invalid-bsd-ring.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17295/shard-iclb1/igt@gem_exec_params@invalid-bsd-ring.html

  * {igt@gem_wait@write-wait@all}:
    - shard-skl:          [FAIL][19] ([i915#1676]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl2/igt@gem_wait@write-wait@all.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17295/shard-skl2/igt@gem_wait@write-wait@all.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][21] ([i915#716]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl3/igt@gen9_exec_parse@allowed-all.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17295/shard-apl6/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][23] ([i915#72]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17295/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][25] ([i915#79]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17295/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][27] ([i915#1188]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17295/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][29] ([i915#180]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17295/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][31] ([fdo#109441]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17295/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34] +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17295/shard-apl7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * {igt@perf@polling-parameterized}:
    - shard-hsw:          [FAIL][35] ([i915#1542]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-hsw6/igt@perf@polling-parameterized.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17295/shard-hsw4/igt@perf@polling-parameterized.html

  * {igt@sysfs_heartbeat_interval@mixed@vcs0}:
    - shard-skl:          [INCOMPLETE][37] ([i915#198]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl7/igt@sysfs_heartbeat_interval@mixed@vcs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17295/shard-skl10/igt@sysfs_heartbeat_interval@mixed@vcs0.html

  
#### Warnings ####

  * igt@i915_pm_rpm@sysfs-read:
    - shard-hsw:          [SKIP][39] ([fdo#109271]) -> [INCOMPLETE][40] ([i915#151] / [i915#61])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-hsw7/igt@i915_pm_rpm@sysfs-read.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17295/shard-hsw7/igt@i915_pm_rpm@sysfs-read.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [DMESG-FAIL][41] ([i915#180] / [i915#95]) -> [FAIL][42] ([i915#93] / [i915#95])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17295/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          [FAIL][43] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][44] ([fdo#108145] / [i915#265])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17295/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-kbl:          [FAIL][45] ([fdo#108145] / [i915#265] / [i915#93] / [i915#95]) -> [FAIL][46] ([fdo#108145] / [i915#265])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17295/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][47] ([fdo#109642] / [fdo#111068]) -> [FAIL][48] ([i915#608])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-iclb4/igt@kms_psr2_su@page_flip.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17295/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][49], [FAIL][50]) ([i915#1423] / [i915#716]) -> [FAIL][51] ([i915#1423])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl3/igt@runner@aborted.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl3/igt@runner@aborted.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17295/shard-apl4/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1676]: https://gitlab.freedesktop.org/drm/intel/issues/1676
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8298 -> Patchwork_17295

  CI-20190529: 20190529
  CI_DRM_8298: 17f82f0c2857d0b442adbdb62eb44b61d0f5b775 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5589: 31962324ac86f029e2841e56e97c42cf9d572956 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17295: 645454d09eb3ccf9c2670b0d7349f06845a048d4 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17295/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
