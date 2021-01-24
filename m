Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F546301E24
	for <lists+intel-gfx@lfdr.de>; Sun, 24 Jan 2021 19:34:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A20C89D46;
	Sun, 24 Jan 2021 18:34:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BF1D189B5F;
 Sun, 24 Jan 2021 18:34:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B1FC2A363D;
 Sun, 24 Jan 2021 18:34:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 24 Jan 2021 18:34:12 -0000
Message-ID: <161151325269.10311.12732021862817579662@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210124153136.19124-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210124153136.19124-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/8=5D_drm/i915/gt=3A_Show_the_per-en?=
 =?utf-8?q?gine_runtime_in_sysfs?=
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
Content-Type: multipart/mixed; boundary="===============1914351333=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1914351333==
Content-Type: multipart/alternative;
 boundary="===============4057778510195952740=="

--===============4057778510195952740==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/8] drm/i915/gt: Show the per-engine runtime in sysfs
URL   : https://patchwork.freedesktop.org/series/86222/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9675_full -> Patchwork_19475_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19475_full:

### IGT changes ###

#### Possible regressions ####

  * {igt@sysfs_clients@busy@vecs0} (NEW):
    - shard-glk:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-glk9/igt@sysfs_clients@busy@vecs0.html

  * {igt@sysfs_clients@sema-10@rcs0} (NEW):
    - shard-skl:          NOTRUN -> [FAIL][2] +6 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-skl3/igt@sysfs_clients@sema-10@rcs0.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9675_full and Patchwork_19475_full:

### New IGT tests (44) ###

  * igt@sysfs_clients@busy@all:
    - Statuses : 6 pass(s)
    - Exec time: [0.05, 0.26] s

  * igt@sysfs_clients@busy@bcs0:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [0.08, 0.26] s

  * igt@sysfs_clients@busy@rcs0:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [0.08, 0.27] s

  * igt@sysfs_clients@busy@vcs0:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [0.07, 0.26] s

  * igt@sysfs_clients@busy@vcs1:
    - Statuses : 3 pass(s)
    - Exec time: [0.07, 0.12] s

  * igt@sysfs_clients@busy@vecs0:
    - Statuses : 2 fail(s) 4 pass(s)
    - Exec time: [0.06, 0.32] s

  * igt@sysfs_clients@fair-1@bcs:
    - Statuses : 6 pass(s)
    - Exec time: [5.05, 5.23] s

  * igt@sysfs_clients@fair-1@rcs:
    - Statuses : 6 pass(s)
    - Exec time: [5.05, 5.24] s

  * igt@sysfs_clients@fair-1@vcs:
    - Statuses : 6 pass(s)
    - Exec time: [5.04, 5.24] s

  * igt@sysfs_clients@fair-1@vecs:
    - Statuses : 6 pass(s)
    - Exec time: [5.05, 5.21] s

  * igt@sysfs_clients@fair-3@bcs:
    - Statuses : 6 pass(s)
    - Exec time: [5.06, 5.29] s

  * igt@sysfs_clients@fair-3@rcs:
    - Statuses : 6 pass(s)
    - Exec time: [5.05, 5.27] s

  * igt@sysfs_clients@fair-3@vcs:
    - Statuses : 6 pass(s)
    - Exec time: [5.04, 5.26] s

  * igt@sysfs_clients@fair-3@vecs:
    - Statuses : 6 pass(s)
    - Exec time: [5.06, 5.30] s

  * igt@sysfs_clients@sema-10@bcs0:
    - Statuses : 2 pass(s)
    - Exec time: [2.21, 2.23] s

  * igt@sysfs_clients@sema-10@rcs0:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [2.20, 2.53] s

  * igt@sysfs_clients@sema-10@vcs0:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [2.21, 2.51] s

  * igt@sysfs_clients@sema-10@vcs1:
    - Statuses : 3 pass(s)
    - Exec time: [2.21, 2.24] s

  * igt@sysfs_clients@sema-10@vecs0:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [2.21, 2.50] s

  * igt@sysfs_clients@sema-25@bcs0:
    - Statuses : 2 pass(s)
    - Exec time: [2.20, 2.22] s

  * igt@sysfs_clients@sema-25@rcs0:
    - Statuses : 5 pass(s)
    - Exec time: [2.20, 2.26] s

  * igt@sysfs_clients@sema-25@vcs0:
    - Statuses : 5 pass(s)
    - Exec time: [2.21, 2.24] s

  * igt@sysfs_clients@sema-25@vcs1:
    - Statuses : 3 pass(s)
    - Exec time: [2.21, 2.24] s

  * igt@sysfs_clients@sema-25@vecs0:
    - Statuses : 5 pass(s)
    - Exec time: [2.21, 2.25] s

  * igt@sysfs_clients@sema-50@bcs0:
    - Statuses : 2 pass(s)
    - Exec time: [2.20, 2.21] s

  * igt@sysfs_clients@sema-50@rcs0:
    - Statuses : 6 pass(s)
    - Exec time: [2.21, 2.44] s

  * igt@sysfs_clients@sema-50@vcs0:
    - Statuses : 6 pass(s)
    - Exec time: [2.21, 2.45] s

  * igt@sysfs_clients@sema-50@vcs1:
    - Statuses : 2 pass(s)
    - Exec time: [2.22, 2.23] s

  * igt@sysfs_clients@sema-50@vecs0:
    - Statuses : 6 pass(s)
    - Exec time: [2.21, 2.43] s

  * igt@sysfs_clients@split-10@bcs0:
    - Statuses : 6 pass(s)
    - Exec time: [2.20, 2.49] s

  * igt@sysfs_clients@split-10@rcs0:
    - Statuses : 6 pass(s)
    - Exec time: [2.18, 2.45] s

  * igt@sysfs_clients@split-10@vcs0:
    - Statuses : 6 pass(s)
    - Exec time: [2.20, 2.46] s

  * igt@sysfs_clients@split-10@vcs1:
    - Statuses : 2 pass(s)
    - Exec time: [2.21, 2.24] s

  * igt@sysfs_clients@split-10@vecs0:
    - Statuses : 6 pass(s)
    - Exec time: [2.19, 2.46] s

  * igt@sysfs_clients@split-25@bcs0:
    - Statuses : 6 pass(s)
    - Exec time: [2.21, 2.50] s

  * igt@sysfs_clients@split-25@rcs0:
    - Statuses : 6 pass(s)
    - Exec time: [2.20, 2.43] s

  * igt@sysfs_clients@split-25@vcs0:
    - Statuses : 6 pass(s)
    - Exec time: [2.19, 2.46] s

  * igt@sysfs_clients@split-25@vcs1:
    - Statuses : 2 pass(s)
    - Exec time: [2.18, 2.23] s

  * igt@sysfs_clients@split-25@vecs0:
    - Statuses : 6 pass(s)
    - Exec time: [2.18, 2.43] s

  * igt@sysfs_clients@split-50@bcs0:
    - Statuses : 6 pass(s)
    - Exec time: [2.21, 2.50] s

  * igt@sysfs_clients@split-50@rcs0:
    - Statuses : 6 pass(s)
    - Exec time: [2.19, 2.45] s

  * igt@sysfs_clients@split-50@vcs0:
    - Statuses : 6 pass(s)
    - Exec time: [2.20, 2.46] s

  * igt@sysfs_clients@split-50@vcs1:
    - Statuses : 3 pass(s)
    - Exec time: [2.19, 2.23] s

  * igt@sysfs_clients@split-50@vecs0:
    - Statuses : 6 pass(s)
    - Exec time: [2.20, 2.51] s

  

Known issues
------------

  Here are the changes found in Patchwork_19475_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-kbl:          [PASS][3] -> [FAIL][4] ([i915#2842])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][5] ([i915#2842]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_whisper@basic-contexts-all:
    - shard-glk:          [PASS][6] -> [DMESG-WARN][7] ([i915#118] / [i915#95])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-glk5/igt@gem_exec_whisper@basic-contexts-all.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-glk5/igt@gem_exec_whisper@basic-contexts-all.html

  * igt@gem_vm_create@destroy-race:
    - shard-tglb:         [PASS][8] -> [INCOMPLETE][9] ([i915#2912])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-tglb5/igt@gem_vm_create@destroy-race.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-tglb3/igt@gem_vm_create@destroy-race.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-skl:          NOTRUN -> [SKIP][10] ([fdo#109271]) +12 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-skl5/igt@gen7_exec_parse@basic-offset.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#2597])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-tglb5/igt@kms_async_flips@test-time-stamp.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-tglb2/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_color_chamelium@pipe-b-gamma:
    - shard-kbl:          NOTRUN -> [SKIP][13] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-kbl1/igt@kms_color_chamelium@pipe-b-gamma.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          [PASS][14] -> [FAIL][15] ([i915#54]) +2 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-tglb:         [PASS][16] -> [FAIL][17] ([i915#2598]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2:
    - shard-glk:          [PASS][18] -> [FAIL][19] ([i915#79])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][20] -> [FAIL][21] ([i915#2122]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          NOTRUN -> [FAIL][22] ([i915#2122])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:
    - shard-skl:          NOTRUN -> [FAIL][23] ([i915#2628])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-skl2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-kbl:          NOTRUN -> [SKIP][24] ([fdo#109271]) +40 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-kbl1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][25] ([fdo#108145] / [i915#265])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][26] -> [FAIL][27] ([fdo#108145] / [i915#265])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][28] -> [SKIP][29] ([fdo#109441]) +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][30] ([i915#658]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-iclb6/igt@feature_discovery@psr2.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][32] ([i915#2846]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-glk5/igt@gem_exec_fair@basic-deadline.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-glk3/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][34] ([i915#2842]) -> [PASS][35] +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          [FAIL][36] ([i915#2842]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-kbl1/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [FAIL][38] ([i915#2842]) -> [PASS][39] +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-iclb3/igt@gem_exec_fair@basic-pace@vcs0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_whisper@basic-forked-all:
    - shard-glk:          [DMESG-WARN][40] ([i915#118] / [i915#95]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-glk3/igt@gem_exec_whisper@basic-forked-all.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-glk3/igt@gem_exec_whisper@basic-forked-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][42] ([i915#2190]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-tglb2/igt@gem_huc_copy@huc-copy.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-random:
    - shard-skl:          [FAIL][44] ([i915#54]) -> [PASS][45] +6 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][46] ([i915#1188]) -> [PASS][47] +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][48] ([fdo#109441]) -> [PASS][49] +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-c-wait-forked:
    - shard-skl:          [DMESG-WARN][50] ([i915#1982]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-skl3/igt@kms_vblank@pipe-c-wait-forked.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-skl1/igt@kms_vblank@pipe-c-wait-forked.html

  * {igt@sysfs_clients@create}:
    - shard-glk:          [SKIP][52] ([fdo#109271]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-glk1/igt@sysfs_clients@create.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-glk1/igt@sysfs_clients@create.html
    - shard-tglb:         [SKIP][54] -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-tglb8/igt@sysfs_clients@create.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-tglb7/igt@sysfs_clients@create.html
    - shard-apl:          [SKIP][56] ([fdo#109271]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-apl8/igt@sysfs_clients@create.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-apl2/igt@sysfs_clients@create.html
    - shard-iclb:         [SKIP][58] -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-iclb3/igt@sysfs_clients@create.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-iclb2/igt@sysfs_clients@create.html
    - shard-kbl:          [SKIP][60] ([fdo#109271]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-kbl1/igt@sysfs_clients@create.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-kbl7/igt@sysfs_clients@create.html

  * {igt@sysfs_clients@pidname}:
    - shard-snb:          [SKIP][62] ([fdo#109271]) -> [PASS][63] +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-snb7/igt@sysfs_clients@pidname.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-snb5/igt@sysfs_clients@pidname.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][64] ([i915#588]) -> [SKIP][65] ([i915#658])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-iclb5/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-tglb:         [WARN][66] ([i915#2681] / [i915#2684]) -> [FAIL][67] ([i915#2681] / [i915#2692])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-tglb2/igt@i915_pm_rc6_residency@rc6-idle.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-tglb6/igt@i915_pm_rc6_residency@rc6-idle.html
    - shard-iclb:         [WARN][68] ([i915#2684]) -> [WARN][69] ([i915#2681] / [i915#2684])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
    - shard-iclb:         [SKIP][70] ([i915#2920]) -> [SKIP][71] ([i915#658]) +2 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-iclb5/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-1:
    - shard-iclb:         [SKIP][72] ([i915#658]) -> [SKIP][73] ([i915#2920]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-iclb8/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2597]: https://gitlab.freedesktop.org/drm/intel/issues/2597
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#2628]: https://gitlab.freedesktop.org/drm/intel/issues/2628
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2692]: https://gitlab.freedesktop.org/drm/intel/issues/2692
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2912]: https://gitlab.freedesktop.org/drm/intel/issues/2912
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9675 -> Patchwork_19475

  CI-20190529: 20190529
  CI_DRM_9675: f84d1efce492ef0f46cf4fa1bf01b17ce1627fe4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5968: 267fa33c0947fbbb642098098ff6e5902f9a3d94 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19475: a1ec37ed680a947ceb9f0ca1fd94e96502f3e16f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/index.html

--===============4057778510195952740==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>series starting with [CI,1/8] drm/i915/gt: Show the per-engine runtime in sysfs</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86222/">https://patchwork.freedesktop.org/series/86222/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9675_full -&gt; Patchwork_19475_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19475_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>{igt@sysfs_clients@busy@vecs0} (NEW):</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-glk9/igt@sysfs_clients@busy@vecs0.html">FAIL</a></li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@sema-10@rcs0} (NEW):</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-skl3/igt@sysfs_clients@sema-10@rcs0.html">FAIL</a> +6 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9675_full and Patchwork_19475_full:</p>
<h3>New IGT tests (44)</h3>
<ul>
<li>
<p>igt@sysfs_clients@busy@all:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.05, 0.26] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy@bcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [0.08, 0.26] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy@rcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [0.08, 0.27] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy@vcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [0.07, 0.26] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy@vcs1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.07, 0.12] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy@vecs0:</p>
<ul>
<li>Statuses : 2 fail(s) 4 pass(s)</li>
<li>Exec time: [0.06, 0.32] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1@bcs:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [5.05, 5.23] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1@rcs:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [5.05, 5.24] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1@vcs:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [5.04, 5.24] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1@vecs:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [5.05, 5.21] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3@bcs:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [5.06, 5.29] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3@rcs:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [5.05, 5.27] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3@vcs:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [5.04, 5.26] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3@vecs:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [5.06, 5.30] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10@bcs0:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [2.21, 2.23] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10@rcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [2.20, 2.53] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10@vcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [2.21, 2.51] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10@vcs1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [2.21, 2.24] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10@vecs0:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [2.21, 2.50] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25@bcs0:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [2.20, 2.22] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25@rcs0:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [2.20, 2.26] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25@vcs0:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [2.21, 2.24] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25@vcs1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [2.21, 2.24] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25@vecs0:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [2.21, 2.25] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50@bcs0:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [2.20, 2.21] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50@rcs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [2.21, 2.44] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50@vcs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [2.21, 2.45] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50@vcs1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [2.22, 2.23] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50@vecs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [2.21, 2.43] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10@bcs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [2.20, 2.49] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10@rcs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [2.18, 2.45] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10@vcs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [2.20, 2.46] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10@vcs1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [2.21, 2.24] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10@vecs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [2.19, 2.46] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25@bcs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [2.21, 2.50] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25@rcs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [2.20, 2.43] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25@vcs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [2.19, 2.46] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25@vcs1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [2.18, 2.23] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25@vecs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [2.18, 2.43] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50@bcs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [2.21, 2.50] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50@rcs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [2.19, 2.45] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50@vcs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [2.20, 2.46] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50@vcs1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [2.19, 2.23] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50@vecs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [2.20, 2.51] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19475_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-glk5/igt@gem_exec_whisper@basic-contexts-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-glk5/igt@gem_exec_whisper@basic-contexts-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_vm_create@destroy-race:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-tglb5/igt@gem_vm_create@destroy-race.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-tglb3/igt@gem_vm_create@destroy-race.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2912">i915#2912</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-skl5/igt@gen7_exec_parse@basic-offset.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-tglb5/igt@kms_async_flips@test-time-stamp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-tglb2/igt@kms_async_flips@test-time-stamp.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2597">i915#2597</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-gamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-kbl1/igt@kms_color_chamelium@pipe-b-gamma.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2598">i915#2598</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-skl2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2628">i915#2628</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-kbl1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +40 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-iclb6/igt@feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-glk5/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-glk3/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-kbl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-iclb3/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-glk3/igt@gem_exec_whisper@basic-forked-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-glk3/igt@gem_exec_whisper@basic-forked-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-tglb2/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-wait-forked:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-skl3/igt@kms_vblank@pipe-c-wait-forked.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-skl1/igt@kms_vblank@pipe-c-wait-forked.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@create}:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-glk1/igt@sysfs_clients@create.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-glk1/igt@sysfs_clients@create.html">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-tglb8/igt@sysfs_clients@create.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-tglb7/igt@sysfs_clients@create.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-apl8/igt@sysfs_clients@create.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-apl2/igt@sysfs_clients@create.html">PASS</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-iclb3/igt@sysfs_clients@create.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-iclb2/igt@sysfs_clients@create.html">PASS</a></p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-kbl1/igt@sysfs_clients@create.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-kbl7/igt@sysfs_clients@create.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@pidname}:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-snb7/igt@sysfs_clients@pidname.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-snb5/igt@sysfs_clients@pidname.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-iclb5/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-tglb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-tglb6/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2692">i915#2692</a>)</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2920">i915#2920</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-iclb5/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9675/shard-iclb8/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19475/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9675 -&gt; Patchwork_19475</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9675: f84d1efce492ef0f46cf4fa1bf01b17ce1627fe4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5968: 267fa33c0947fbbb642098098ff6e5902f9a3d94 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19475: a1ec37ed680a947ceb9f0ca1fd94e96502f3e16f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============4057778510195952740==--

--===============1914351333==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1914351333==--
