Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0220830186C
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Jan 2021 21:50:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AEB789F19;
	Sat, 23 Jan 2021 20:50:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 85B8F89F0A;
 Sat, 23 Jan 2021 20:50:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 77C29A8836;
 Sat, 23 Jan 2021 20:50:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 23 Jan 2021 20:50:22 -0000
Message-ID: <161143502244.14870.6589443880959880272@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210123153733.18139-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210123153733.18139-1-chris@chris-wilson.co.uk>
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
Content-Type: multipart/mixed; boundary="===============0148507740=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0148507740==
Content-Type: multipart/alternative;
 boundary="===============6925685035718306811=="

--===============6925685035718306811==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/8] drm/i915/gt: Show the per-engine runtime in sysfs
URL   : https://patchwork.freedesktop.org/series/86207/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9672_full -> Patchwork_19473_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19473_full:

### IGT changes ###

#### Possible regressions ####

  * {igt@sysfs_clients@busy@all} (NEW):
    - shard-tglb:         NOTRUN -> [FAIL][1] +7 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-tglb2/igt@sysfs_clients@busy@all.html

  * {igt@sysfs_clients@sema-10@rcs0} (NEW):
    - shard-skl:          NOTRUN -> [FAIL][2] +13 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl2/igt@sysfs_clients@sema-10@rcs0.html

  * {igt@sysfs_clients@sema-10@vcs0} (NEW):
    - shard-apl:          NOTRUN -> [FAIL][3] +7 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-apl7/igt@sysfs_clients@sema-10@vcs0.html
    - shard-kbl:          NOTRUN -> [FAIL][4] +4 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-kbl1/igt@sysfs_clients@sema-10@vcs0.html

  * {igt@sysfs_clients@sema-25@vcs0} (NEW):
    - shard-glk:          NOTRUN -> [FAIL][5] +6 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-glk2/igt@sysfs_clients@sema-25@vcs0.html

  * {igt@sysfs_clients@sema-50@bcs0} (NEW):
    - shard-iclb:         NOTRUN -> [FAIL][6] +43 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb1/igt@sysfs_clients@sema-50@bcs0.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9672_full and Patchwork_19473_full:

### New IGT tests (52) ###

  * igt@sysfs_clients@busy@all:
    - Statuses : 2 fail(s) 4 pass(s)
    - Exec time: [0.06, 0.29] s

  * igt@sysfs_clients@busy@bcs0:
    - Statuses : 2 fail(s) 4 pass(s)
    - Exec time: [0.08, 0.29] s

  * igt@sysfs_clients@busy@rcs0:
    - Statuses : 3 fail(s) 3 pass(s)
    - Exec time: [0.08, 0.28] s

  * igt@sysfs_clients@busy@vcs0:
    - Statuses : 4 fail(s) 2 pass(s)
    - Exec time: [0.04, 0.29] s

  * igt@sysfs_clients@busy@vcs1:
    - Statuses : 1 fail(s) 2 pass(s)
    - Exec time: [0.08, 0.12] s

  * igt@sysfs_clients@busy@vecs0:
    - Statuses : 4 fail(s) 2 pass(s)
    - Exec time: [0.08, 0.28] s

  * igt@sysfs_clients@fair-0@bcs:
    - Statuses : 6 pass(s)
    - Exec time: [5.04, 5.20] s

  * igt@sysfs_clients@fair-0@rcs:
    - Statuses : 6 pass(s)
    - Exec time: [5.04, 5.18] s

  * igt@sysfs_clients@fair-0@vcs:
    - Statuses : 6 pass(s)
    - Exec time: [5.03, 5.21] s

  * igt@sysfs_clients@fair-0@vecs:
    - Statuses : 6 pass(s)
    - Exec time: [5.04, 5.20] s

  * igt@sysfs_clients@fair-1@bcs:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [5.03, 5.27] s

  * igt@sysfs_clients@fair-1@rcs:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [5.05, 5.25] s

  * igt@sysfs_clients@fair-1@vcs:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [5.03, 5.25] s

  * igt@sysfs_clients@fair-1@vecs:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [5.03, 5.31] s

  * igt@sysfs_clients@fair-3@bcs:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [5.03, 5.30] s

  * igt@sysfs_clients@fair-3@rcs:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [5.05, 5.27] s

  * igt@sysfs_clients@fair-3@vcs:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [5.04, 5.31] s

  * igt@sysfs_clients@fair-3@vecs:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [5.03, 5.30] s

  * igt@sysfs_clients@fair-7@bcs:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [5.04, 5.40] s

  * igt@sysfs_clients@fair-7@rcs:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [5.04, 5.40] s

  * igt@sysfs_clients@fair-7@vcs:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [5.05, 5.39] s

  * igt@sysfs_clients@fair-7@vecs:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [5.04, 5.48] s

  * igt@sysfs_clients@sema-10@bcs0:
    - Statuses : 2 fail(s)
    - Exec time: [2.17, 2.18] s

  * igt@sysfs_clients@sema-10@rcs0:
    - Statuses : 6 fail(s)
    - Exec time: [2.17, 2.44] s

  * igt@sysfs_clients@sema-10@vcs0:
    - Statuses : 6 fail(s)
    - Exec time: [2.17, 2.43] s

  * igt@sysfs_clients@sema-10@vcs1:
    - Statuses : 2 fail(s)
    - Exec time: [2.17, 2.18] s

  * igt@sysfs_clients@sema-10@vecs0:
    - Statuses : 6 fail(s)
    - Exec time: [2.17, 2.40] s

  * igt@sysfs_clients@sema-25@bcs0:
    - Statuses : 1 fail(s) 1 pass(s)
    - Exec time: [2.18, 2.21] s

  * igt@sysfs_clients@sema-25@rcs0:
    - Statuses : 5 fail(s) 1 pass(s)
    - Exec time: [2.17, 2.46] s

  * igt@sysfs_clients@sema-25@vcs0:
    - Statuses : 3 fail(s) 3 pass(s)
    - Exec time: [2.18, 2.41] s

  * igt@sysfs_clients@sema-25@vcs1:
    - Statuses : 1 fail(s) 2 pass(s)
    - Exec time: [2.18, 2.22] s

  * igt@sysfs_clients@sema-25@vecs0:
    - Statuses : 3 fail(s) 3 pass(s)
    - Exec time: [2.18, 2.46] s

  * igt@sysfs_clients@sema-50@bcs0:
    - Statuses : 1 fail(s) 1 pass(s)
    - Exec time: [2.17, 2.20] s

  * igt@sysfs_clients@sema-50@rcs0:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [2.18, 2.49] s

  * igt@sysfs_clients@sema-50@vcs0:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [2.17, 2.44] s

  * igt@sysfs_clients@sema-50@vcs1:
    - Statuses : 1 fail(s) 2 pass(s)
    - Exec time: [2.17, 2.22] s

  * igt@sysfs_clients@sema-50@vecs0:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [2.18, 2.45] s

  * igt@sysfs_clients@split-10@bcs0:
    - Statuses : 4 fail(s) 2 pass(s)
    - Exec time: [2.17, 2.46] s

  * igt@sysfs_clients@split-10@rcs0:
    - Statuses : 2 fail(s) 4 pass(s)
    - Exec time: [2.19, 2.49] s

  * igt@sysfs_clients@split-10@vcs0:
    - Statuses : 2 fail(s) 4 pass(s)
    - Exec time: [2.21, 2.47] s

  * igt@sysfs_clients@split-10@vcs1:
    - Statuses : 2 pass(s)
    - Exec time: [2.22, 2.23] s

  * igt@sysfs_clients@split-10@vecs0:
    - Statuses : 2 fail(s) 4 pass(s)
    - Exec time: [2.17, 2.39] s

  * igt@sysfs_clients@split-25@bcs0:
    - Statuses : 1 fail(s) 4 pass(s)
    - Exec time: [2.18, 2.25] s

  * igt@sysfs_clients@split-25@rcs0:
    - Statuses : 1 fail(s) 4 pass(s)
    - Exec time: [2.20, 2.44] s

  * igt@sysfs_clients@split-25@vcs0:
    - Statuses : 1 fail(s) 4 pass(s)
    - Exec time: [2.21, 2.24] s

  * igt@sysfs_clients@split-25@vcs1:
    - Statuses : 2 pass(s)
    - Exec time: [2.22, 2.25] s

  * igt@sysfs_clients@split-25@vecs0:
    - Statuses : 1 fail(s) 4 pass(s)
    - Exec time: [2.18, 2.24] s

  * igt@sysfs_clients@split-50@bcs0:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [2.19, 2.50] s

  * igt@sysfs_clients@split-50@rcs0:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [2.19, 2.42] s

  * igt@sysfs_clients@split-50@vcs0:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [2.17, 2.47] s

  * igt@sysfs_clients@split-50@vcs1:
    - Statuses : 2 pass(s)
    - Exec time: [2.21, 2.25] s

  * igt@sysfs_clients@split-50@vecs0:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [2.21, 2.46] s

  

Known issues
------------

  Here are the changes found in Patchwork_19473_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][7] -> [FAIL][8] ([i915#2842]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html
    - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-apl1/igt@gem_exec_fair@basic-none@vcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-apl3/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][13] -> [SKIP][14] ([fdo#109271]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#2842]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-glk9/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [PASS][17] -> [FAIL][18] ([i915#2597])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-tglb2/igt@kms_async_flips@test-time-stamp.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-tglb7/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_chamelium@dp-mode-timings:
    - shard-iclb:         NOTRUN -> [SKIP][19] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb7/igt@kms_chamelium@dp-mode-timings.html

  * igt@kms_chamelium@hdmi-crc-multiple:
    - shard-kbl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-kbl7/igt@kms_chamelium@hdmi-crc-multiple.html

  * igt@kms_color@pipe-b-degamma:
    - shard-iclb:         NOTRUN -> [FAIL][21] ([i915#1149])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb7/igt@kms_color@pipe-b-degamma.html

  * igt@kms_color@pipe-c-ctm-max:
    - shard-skl:          [PASS][22] -> [DMESG-WARN][23] ([i915#1982]) +3 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl7/igt@kms_color@pipe-c-ctm-max.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl9/igt@kms_color@pipe-c-ctm-max.html

  * igt@kms_color_chamelium@pipe-a-gamma:
    - shard-skl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl3/igt@kms_color_chamelium@pipe-a-gamma.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-kbl:          NOTRUN -> [TIMEOUT][25] ([i915#1319])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-kbl3/igt@kms_content_protection@atomic-dpms.html
    - shard-iclb:         NOTRUN -> [SKIP][26] ([fdo#109300] / [fdo#111066])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#54]) +6 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
    - shard-kbl:          [PASS][29] -> [FAIL][30] ([i915#54])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
    - shard-apl:          [PASS][31] -> [FAIL][32] ([i915#54])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x170-onscreen:
    - shard-iclb:         NOTRUN -> [SKIP][33] ([fdo#109278] / [fdo#109279])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb7/igt@kms_cursor_crc@pipe-a-cursor-512x170-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-random:
    - shard-skl:          NOTRUN -> [FAIL][34] ([i915#54])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-256x256-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-128x128-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#109278]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb7/igt@kms_cursor_crc@pipe-d-cursor-128x128-offscreen.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([i915#79])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-dp1:
    - shard-apl:          [PASS][38] -> [FAIL][39] ([i915#79])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-apl2/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-apl8/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([i915#2122])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-kbl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#2672])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-kbl3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
    - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#2672])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
    - shard-iclb:         NOTRUN -> [SKIP][44] ([i915#2587])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#49])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-blt:
    - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109280]) +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([i915#1188])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a:
    - shard-skl:          [PASS][50] -> [FAIL][51] ([i915#2472])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl7/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl6/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][52] -> [FAIL][53] ([fdo#108145] / [i915#265])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][54] -> [SKIP][55] ([fdo#109441]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb4/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-kbl:          NOTRUN -> [SKIP][56] ([fdo#109271]) +20 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-kbl3/igt@kms_psr@psr2_primary_mmap_cpu.html
    - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109441])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-a-accuracy-idle:
    - shard-skl:          [PASS][58] -> [FAIL][59] ([i915#43])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl1/igt@kms_vblank@pipe-a-accuracy-idle.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl3/igt@kms_vblank@pipe-a-accuracy-idle.html

  * igt@kms_vblank@pipe-d-query-idle-hang:
    - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271]) +25 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl3/igt@kms_vblank@pipe-d-query-idle-hang.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-kbl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#2437])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-kbl7/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [PASS][62] -> [FAIL][63] ([i915#1542])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-glk7/igt@perf@polling-parameterized.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-glk1/igt@perf@polling-parameterized.html

  * igt@prime_nv_pcopy@test3_5:
    - shard-iclb:         NOTRUN -> [SKIP][64] ([fdo#109291])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb7/igt@prime_nv_pcopy@test3_5.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][65] ([i915#2846]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-glk3/igt@gem_exec_fair@basic-deadline.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-glk7/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][67] ([i915#2842]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-kbl:          [FAIL][69] ([i915#2842]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-kbl7/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-kbl2/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [FAIL][71] ([i915#2842]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [FAIL][73] ([i915#2842]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [SKIP][75] ([fdo#109271]) -> [PASS][76] +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-glk:          [FAIL][77] ([i915#2389]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-glk9/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-glk9/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-skl:          [DMESG-WARN][79] ([i915#1610] / [i915#2803]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl1/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl3/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@vcs0:
    - shard-iclb:         [DMESG-WARN][81] ([i915#2803]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-iclb4/igt@gem_exec_schedule@u-fairslice@vcs0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb7/igt@gem_exec_schedule@u-fairslice@vcs0.html

  * igt@gem_exec_schedule@u-fairslice@vcs1:
    - shard-kbl:          [DMESG-WARN][83] ([i915#1610] / [i915#2803]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-kbl7/igt@gem_exec_schedule@u-fairslice@vcs1.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-kbl3/igt@gem_exec_schedule@u-fairslice@vcs1.html

  * igt@gem_exec_whisper@basic-fds-priority-all:
    - shard-glk:          [DMESG-WARN][85] ([i915#118] / [i915#95]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-glk1/igt@gem_exec_whisper@basic-fds-priority-all.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-glk6/igt@gem_exec_whisper@basic-fds-priority-all.html

  * igt@gem_vm_create@destroy-race:
    - shard-tglb:         [TIMEOUT][87] ([i915#2795]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-tglb7/igt@gem_vm_create@destroy-race.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-tglb6/igt@gem_vm_create@destroy-race.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-skl:          [INCOMPLETE][89] ([i915#151]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl2/igt@i915_pm_rpm@system-suspend-execbuf.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl10/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-skl:          [FAIL][91] ([i915#54]) -> [PASS][92] +10 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic:
    - shard-skl:          [DMESG-WARN][93] ([i915#1982]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl4/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl8/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][95] ([i915#2346]) -> [PASS][96] +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip_tiling@flip-x-tiled@edp-1-pipe-a:
    - shard-skl:          [FAIL][97] -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl3/igt@kms_flip_tiling@flip-x-tiled@edp-1-pipe-a.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl7/igt@kms_flip_tiling@flip-x-tiled@edp-1-pipe-a.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][99] ([i915#1188]) -> [PASS][100] +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][101] ([fdo#108145] / [i915#265]) -> [PASS][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][103] ([fdo#109441]) -> [PASS][104] +2 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@perf_pmu@rc6-suspend:
    - shard-kbl:          [INCOMPLETE][105] -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-kbl2/igt@perf_pmu@rc6-suspend.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-kbl7/igt@perf_pmu@rc6-suspend.html

  * {igt@sysfs_clients@create}:
    - shard-glk:          [SKIP][107] ([fdo#109271]) -> [PASS][108] +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-glk7/igt@sysfs_clients@create.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-glk5/igt@sysfs_clients@create.html
    - shard-tglb:         [SKIP][109] -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-tglb5/igt@sysfs_clients@create.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-tglb2/igt@sysfs_clients@create.html
    - shard-apl:          [SKIP][111] ([fdo#109271]) -> [PASS][112] +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-apl4/igt@sysfs_clients@create.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-apl2/igt@sysfs_clients@create.html
    - shard-skl:          [SKIP][113] ([fdo#109271]) -> [PASS][114] +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl8/igt@sysfs_clients@create.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl5/igt@sysfs_clients@create.html

  * {igt@sysfs_clients@pidname}:
    - shard-snb:          [SKIP][115] ([fdo#109271]) -> [PASS][116] +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-snb5/igt@sysfs_clients@pidname.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-snb6/igt@sysfs_clients@pidname.html
    - shard-iclb:         [SKIP][117] -> [PASS][118] +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-iclb5/igt@sysfs_clients@pidname.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb5/igt@sysfs_clients@pidname.html
    - shard-hsw:          [SKIP][119] ([fdo#109271]) -> [PASS][120] +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-hsw6/igt@sysfs_clients@pidname.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-hsw6/igt@sysfs_clients@pidname.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         [FAIL][121] ([i915#2842]) -> [FAIL][122] ([i915#2852])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-iclb5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][123] ([i915#1804] / [i915#2684]) -> [WARN][124] ([i915#2681] / [i915#2684])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][125] ([i915#2681] / [i915#2684]) -> [WARN][126] ([i915#2684])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][127] ([fdo#109349]) -> [DMESG-WARN][128] ([i915#1226])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][129]

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/index.html

--===============6925685035718306811==
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
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86207/">https://patchwork.freedesktop.org/series/86207/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9672_full -&gt; Patchwork_19473_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19473_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>{igt@sysfs_clients@busy@all} (NEW):</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-tglb2/igt@sysfs_clients@busy@all.html">FAIL</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@sema-10@rcs0} (NEW):</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl2/igt@sysfs_clients@sema-10@rcs0.html">FAIL</a> +13 similar issues</li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@sema-10@vcs0} (NEW):</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-apl7/igt@sysfs_clients@sema-10@vcs0.html">FAIL</a> +7 similar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-kbl1/igt@sysfs_clients@sema-10@vcs0.html">FAIL</a> +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@sema-25@vcs0} (NEW):</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-glk2/igt@sysfs_clients@sema-25@vcs0.html">FAIL</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@sema-50@bcs0} (NEW):</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb1/igt@sysfs_clients@sema-50@bcs0.html">FAIL</a> +43 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9672_full and Patchwork_19473_full:</p>
<h3>New IGT tests (52)</h3>
<ul>
<li>
<p>igt@sysfs_clients@busy@all:</p>
<ul>
<li>Statuses : 2 fail(s) 4 pass(s)</li>
<li>Exec time: [0.06, 0.29] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy@bcs0:</p>
<ul>
<li>Statuses : 2 fail(s) 4 pass(s)</li>
<li>Exec time: [0.08, 0.29] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy@rcs0:</p>
<ul>
<li>Statuses : 3 fail(s) 3 pass(s)</li>
<li>Exec time: [0.08, 0.28] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy@vcs0:</p>
<ul>
<li>Statuses : 4 fail(s) 2 pass(s)</li>
<li>Exec time: [0.04, 0.29] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy@vcs1:</p>
<ul>
<li>Statuses : 1 fail(s) 2 pass(s)</li>
<li>Exec time: [0.08, 0.12] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy@vecs0:</p>
<ul>
<li>Statuses : 4 fail(s) 2 pass(s)</li>
<li>Exec time: [0.08, 0.28] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0@bcs:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [5.04, 5.20] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0@rcs:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [5.04, 5.18] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0@vcs:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [5.03, 5.21] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0@vecs:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [5.04, 5.20] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1@bcs:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [5.03, 5.27] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1@rcs:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [5.05, 5.25] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1@vcs:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [5.03, 5.25] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1@vecs:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [5.03, 5.31] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3@bcs:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [5.03, 5.30] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3@rcs:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [5.05, 5.27] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3@vcs:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [5.04, 5.31] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3@vecs:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [5.03, 5.30] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7@bcs:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [5.04, 5.40] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7@rcs:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [5.04, 5.40] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7@vcs:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [5.05, 5.39] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7@vecs:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [5.04, 5.48] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10@bcs0:</p>
<ul>
<li>Statuses : 2 fail(s)</li>
<li>Exec time: [2.17, 2.18] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10@rcs0:</p>
<ul>
<li>Statuses : 6 fail(s)</li>
<li>Exec time: [2.17, 2.44] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10@vcs0:</p>
<ul>
<li>Statuses : 6 fail(s)</li>
<li>Exec time: [2.17, 2.43] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10@vcs1:</p>
<ul>
<li>Statuses : 2 fail(s)</li>
<li>Exec time: [2.17, 2.18] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10@vecs0:</p>
<ul>
<li>Statuses : 6 fail(s)</li>
<li>Exec time: [2.17, 2.40] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25@bcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 1 pass(s)</li>
<li>Exec time: [2.18, 2.21] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25@rcs0:</p>
<ul>
<li>Statuses : 5 fail(s) 1 pass(s)</li>
<li>Exec time: [2.17, 2.46] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25@vcs0:</p>
<ul>
<li>Statuses : 3 fail(s) 3 pass(s)</li>
<li>Exec time: [2.18, 2.41] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25@vcs1:</p>
<ul>
<li>Statuses : 1 fail(s) 2 pass(s)</li>
<li>Exec time: [2.18, 2.22] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25@vecs0:</p>
<ul>
<li>Statuses : 3 fail(s) 3 pass(s)</li>
<li>Exec time: [2.18, 2.46] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50@bcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 1 pass(s)</li>
<li>Exec time: [2.17, 2.20] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50@rcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [2.18, 2.49] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50@vcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [2.17, 2.44] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50@vcs1:</p>
<ul>
<li>Statuses : 1 fail(s) 2 pass(s)</li>
<li>Exec time: [2.17, 2.22] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50@vecs0:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [2.18, 2.45] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10@bcs0:</p>
<ul>
<li>Statuses : 4 fail(s) 2 pass(s)</li>
<li>Exec time: [2.17, 2.46] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10@rcs0:</p>
<ul>
<li>Statuses : 2 fail(s) 4 pass(s)</li>
<li>Exec time: [2.19, 2.49] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10@vcs0:</p>
<ul>
<li>Statuses : 2 fail(s) 4 pass(s)</li>
<li>Exec time: [2.21, 2.47] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10@vcs1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [2.22, 2.23] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10@vecs0:</p>
<ul>
<li>Statuses : 2 fail(s) 4 pass(s)</li>
<li>Exec time: [2.17, 2.39] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25@bcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 4 pass(s)</li>
<li>Exec time: [2.18, 2.25] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25@rcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 4 pass(s)</li>
<li>Exec time: [2.20, 2.44] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25@vcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 4 pass(s)</li>
<li>Exec time: [2.21, 2.24] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25@vcs1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [2.22, 2.25] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25@vecs0:</p>
<ul>
<li>Statuses : 1 fail(s) 4 pass(s)</li>
<li>Exec time: [2.18, 2.24] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50@bcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [2.19, 2.50] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50@rcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [2.19, 2.42] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50@vcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [2.17, 2.47] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50@vcs1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [2.21, 2.25] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50@vecs0:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [2.21, 2.46] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19473_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-apl1/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-apl3/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html">SKIP</a> ([fdo#109271]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-glk9/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-tglb2/igt@kms_async_flips@test-time-stamp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-tglb7/igt@kms_async_flips@test-time-stamp.html">FAIL</a> ([i915#2597])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-mode-timings:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb7/igt@kms_chamelium@dp-mode-timings.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-multiple:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-kbl7/igt@kms_chamelium@hdmi-crc-multiple.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-degamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb7/igt@kms_color@pipe-b-degamma.html">FAIL</a> ([i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-max:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl7/igt@kms_color@pipe-c-ctm-max.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl9/igt@kms_color@pipe-c-ctm-max.html">DMESG-WARN</a> ([i915#1982]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-gamma:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl3/igt@kms_color_chamelium@pipe-a-gamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-kbl3/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> ([i915#1319])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb7/igt@kms_content_protection@atomic-dpms.html">SKIP</a> ([fdo#109300] / [fdo#111066])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html">FAIL</a> ([i915#54]) +6 similar issues</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html">FAIL</a> ([i915#54])</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html">FAIL</a> ([i915#54])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x170-onscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb7/igt@kms_cursor_crc@pipe-a-cursor-512x170-onscreen.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x256-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-256x256-random.html">FAIL</a> ([i915#54])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x128-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb7/igt@kms_cursor_crc@pipe-d-cursor-128x128-offscreen.html">SKIP</a> ([fdo#109278]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-apl2/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-apl8/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-kbl3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([i915#2587])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render.html">FAIL</a> ([i915#49])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-blt.html">SKIP</a> ([fdo#109280]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl7/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl6/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a.html">FAIL</a> ([i915#2472])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb4/igt@kms_psr@psr2_no_drrs.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-kbl3/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> ([fdo#109271]) +20 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> ([fdo#109441])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-accuracy-idle:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl1/igt@kms_vblank@pipe-a-accuracy-idle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl3/igt@kms_vblank@pipe-a-accuracy-idle.html">FAIL</a> ([i915#43])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-query-idle-hang:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl3/igt@kms_vblank@pipe-d-query-idle-hang.html">SKIP</a> ([fdo#109271]) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-kbl7/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-glk7/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-glk1/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_5:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb7/igt@prime_nv_pcopy@test3_5.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-glk3/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-glk7/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-kbl7/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-kbl2/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-glk9/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> ([i915#2389]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-glk9/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl1/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> ([i915#1610] / [i915#2803]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl3/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-iclb4/igt@gem_exec_schedule@u-fairslice@vcs0.html">DMESG-WARN</a> ([i915#2803]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb7/igt@gem_exec_schedule@u-fairslice@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vcs1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-kbl7/igt@gem_exec_schedule@u-fairslice@vcs1.html">DMESG-WARN</a> ([i915#1610] / [i915#2803]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-kbl3/igt@gem_exec_schedule@u-fairslice@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-glk1/igt@gem_exec_whisper@basic-fds-priority-all.html">DMESG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-glk6/igt@gem_exec_whisper@basic-fds-priority-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_vm_create@destroy-race:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-tglb7/igt@gem_vm_create@destroy-race.html">TIMEOUT</a> ([i915#2795]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-tglb6/igt@gem_vm_create@destroy-race.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl2/igt@i915_pm_rpm@system-suspend-execbuf.html">INCOMPLETE</a> ([i915#151]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl10/igt@i915_pm_rpm@system-suspend-execbuf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html">FAIL</a> ([i915#54]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html">PASS</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl4/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl8/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-x-tiled@edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl3/igt@kms_flip_tiling@flip-x-tiled@edp-1-pipe-a.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl7/igt@kms_flip_tiling@flip-x-tiled@edp-1-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-kbl2/igt@perf_pmu@rc6-suspend.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-kbl7/igt@perf_pmu@rc6-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@create}:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-glk7/igt@sysfs_clients@create.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-glk5/igt@sysfs_clients@create.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-tglb5/igt@sysfs_clients@create.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-tglb2/igt@sysfs_clients@create.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-apl4/igt@sysfs_clients@create.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-apl2/igt@sysfs_clients@create.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-skl8/igt@sysfs_clients@create.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-skl5/igt@sysfs_clients@create.html">PASS</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@pidname}:</p>
<ul>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-snb5/igt@sysfs_clients@pidname.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-snb6/igt@sysfs_clients@pidname.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-iclb5/igt@sysfs_clients@pidname.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb5/igt@sysfs_clients@pidname.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-hsw6/igt@sysfs_clients@pidname.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-hsw6/igt@sysfs_clients@pidname.html">PASS</a> +1 similar issue</p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-iclb5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2852])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#1804] / [i915#2684]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#2681] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#2681] / [i915#2684]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9672/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a> ([fdo#109349]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19473/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-WARN</a> ([i915#1226])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         [SKIP][129]</li>
</ul>
</li>
</ul>

</body>
</html>

--===============6925685035718306811==--

--===============0148507740==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0148507740==--
