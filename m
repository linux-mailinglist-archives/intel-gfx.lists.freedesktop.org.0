Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 269161991ED
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 11:22:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 615E56E57E;
	Tue, 31 Mar 2020 09:22:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 272906E313;
 Tue, 31 Mar 2020 09:22:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2144FA0071;
 Tue, 31 Mar 2020 09:22:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Melissa Wen" <melissa.srw@gmail.com>
Date: Tue, 31 Mar 2020 09:22:27 -0000
Message-ID: <158564654711.5565.3136172431136201801@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <2a7dba6ade737e179e812bb9fd1a5c3ab8c3a35f.1585604921.git.melissa.srw@gmail.com>
In-Reply-To: <2a7dba6ade737e179e812bb9fd1a5c3ab8c3a35f.1585604921.git.melissa.srw@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgdGVz?=
 =?utf-8?q?ts/kms=5Fplane=5Falpha=5Fblend=3A_Correct_typo_in_the_name_and_?=
 =?utf-8?q?comments_of_a_subtest?=
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

Series: tests/kms_plane_alpha_blend: Correct typo in the name and comments of a subtest
URL   : https://patchwork.freedesktop.org/series/75273/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8219_full -> IGTPW_4376_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in IGTPW_4376_full:

### IGT changes ###

#### Possible regressions ####

  * {igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb} (NEW):
    - shard-glk:          NOTRUN -> [FAIL][1] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-glk2/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
    - shard-apl:          NOTRUN -> [FAIL][2] +2 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * {igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb} (NEW):
    - shard-kbl:          NOTRUN -> [FAIL][3] +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8219_full and IGTPW_4376_full:

### New IGT tests (4) ###

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - Statuses : 3 fail(s) 2 pass(s) 2 skip(s)
    - Exec time: [0.0, 1.58] s

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - Statuses : 3 fail(s) 2 pass(s) 2 skip(s)
    - Exec time: [0.0, 2.62] s

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - Statuses : 2 fail(s) 2 pass(s) 2 skip(s)
    - Exec time: [0.0, 2.67] s

  * igt@kms_plane_alpha_blend@pipe-d-alpha-transparent-fb:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 2.16] s

  

Known issues
------------

  Here are the changes found in IGTPW_4376_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][4] -> [SKIP][5] ([fdo#112080]) +10 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#109276] / [i915#677]) +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd1.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-iclb7/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#109276]) +10 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb1/igt@gem_exec_schedule@independent-bsd2.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-iclb5/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([i915#677]) +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#112146]) +5 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-glk:          [PASS][14] -> [FAIL][15] ([i915#1527])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-glk8/igt@i915_pm_rc6_residency@rc6-idle.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-glk2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [PASS][16] -> [INCOMPLETE][17] ([i915#1531])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-tglb5/igt@i915_selftest@live@requests.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-tglb2/igt@i915_selftest@live@requests.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [PASS][18] -> [DMESG-WARN][19] ([i915#180]) +2 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl3/igt@i915_suspend@fence-restore-untiled.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-kbl1/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
    - shard-kbl:          [PASS][20] -> [FAIL][21] ([i915#54] / [i915#93] / [i915#95])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen:
    - shard-glk:          [PASS][22] -> [FAIL][23] ([i915#54])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-glk6/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-glk9/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html
    - shard-apl:          [PASS][24] -> [FAIL][25] ([i915#54])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-apl3/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html
    - shard-kbl:          [PASS][26] -> [FAIL][27] ([i915#54])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:
    - shard-glk:          [PASS][28] -> [FAIL][29] ([i915#177] / [i915#52] / [i915#54])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-glk5/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled:
    - shard-glk:          [PASS][30] -> [FAIL][31] ([i915#52] / [i915#54]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-glk7/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled:
    - shard-kbl:          [PASS][32] -> [FAIL][33] ([i915#177] / [i915#52] / [i915#54] / [i915#93] / [i915#95])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-kbl4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled.html
    - shard-apl:          [PASS][34] -> [FAIL][35] ([i915#52] / [i915#54] / [i915#95])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-apl2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-apl:          [PASS][36] -> [FAIL][37] ([i915#95])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl7/igt@kms_flip_tiling@flip-changes-tiling.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-apl2/igt@kms_flip_tiling@flip-changes-tiling.html
    - shard-kbl:          [PASS][38] -> [FAIL][39] ([i915#699] / [i915#93] / [i915#95])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl4/igt@kms_flip_tiling@flip-changes-tiling.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-kbl6/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant:
    - shard-kbl:          [PASS][40] -> [FAIL][41] ([fdo#108145] / [i915#93] / [i915#95])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl2/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-kbl3/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
    - shard-apl:          [PASS][42] -> [FAIL][43] ([fdo#108145] / [i915#95])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][44] -> [SKIP][45] ([fdo#109441]) +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][46] -> [FAIL][47] ([i915#31])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl4/igt@kms_setmode@basic.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-apl8/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm:
    - shard-glk:          [PASS][48] -> [SKIP][49] ([fdo#109271])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-glk3/igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-glk4/igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm.html
    - shard-tglb:         [PASS][50] -> [SKIP][51] ([fdo#112015])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-tglb3/igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-tglb1/igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm.html
    - shard-hsw:          [PASS][52] -> [SKIP][53] ([fdo#109271])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-hsw1/igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-hsw4/igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm.html
    - shard-iclb:         [PASS][54] -> [SKIP][55] ([fdo#109278])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb5/igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-iclb5/igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@processes:
    - shard-kbl:          [FAIL][56] ([i915#1528]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl1/igt@gem_ctx_persistence@processes.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-kbl6/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][58] ([fdo#110854]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb8/igt@gem_exec_balancer@smoke.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][60] ([fdo#109276] / [i915#677]) -> [PASS][61] +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb6/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][62] ([i915#677]) -> [PASS][63] +2 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-iclb7/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [SKIP][64] ([fdo#112146]) -> [PASS][65] +3 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb4/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-iclb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][66] ([i915#180]) -> [PASS][67] +2 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_rpm@debugfs-forcewake-user:
    - shard-hsw:          [SKIP][68] ([fdo#109271]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-hsw2/igt@i915_pm_rpm@debugfs-forcewake-user.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-hsw4/igt@i915_pm_rpm@debugfs-forcewake-user.html
    - shard-iclb:         [SKIP][70] ([i915#1316]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb8/igt@i915_pm_rpm@debugfs-forcewake-user.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-iclb3/igt@i915_pm_rpm@debugfs-forcewake-user.html
    - shard-tglb:         [SKIP][72] ([i915#1316]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-tglb8/igt@i915_pm_rpm@debugfs-forcewake-user.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-tglb1/igt@i915_pm_rpm@debugfs-forcewake-user.html
    - shard-glk:          [SKIP][74] ([fdo#109271]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-glk1/igt@i915_pm_rpm@debugfs-forcewake-user.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-glk7/igt@i915_pm_rpm@debugfs-forcewake-user.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-kbl:          [FAIL][76] ([i915#1119] / [i915#93] / [i915#95]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl4/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-kbl4/igt@kms_big_fb@linear-32bpp-rotate-0.html
    - shard-apl:          [FAIL][78] ([i915#1119] / [i915#95]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl6/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-apl3/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen:
    - shard-kbl:          [FAIL][80] ([i915#54] / [i915#93] / [i915#95]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html

  * igt@kms_draw_crc@draw-method-rgb565-render-untiled:
    - shard-glk:          [FAIL][82] ([i915#52] / [i915#54]) -> [PASS][83] +3 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-glk7/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-glk1/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-untiled:
    - shard-kbl:          [FAIL][84] ([i915#177] / [i915#52] / [i915#54] / [i915#93] / [i915#95]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl6/igt@kms_draw_crc@draw-method-xrgb8888-render-untiled.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-kbl3/igt@kms_draw_crc@draw-method-xrgb8888-render-untiled.html
    - shard-apl:          [FAIL][86] ([i915#52] / [i915#54] / [i915#95]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl8/igt@kms_draw_crc@draw-method-xrgb8888-render-untiled.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-apl1/igt@kms_draw_crc@draw-method-xrgb8888-render-untiled.html

  * igt@kms_flip@flip-vs-dpms-off-vs-modeset:
    - shard-apl:          [INCOMPLETE][88] ([i915#1297]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl3/igt@kms_flip@flip-vs-dpms-off-vs-modeset.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-apl2/igt@kms_flip@flip-vs-dpms-off-vs-modeset.html
    - shard-kbl:          [INCOMPLETE][90] ([i915#1297] / [i915#600]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl3/igt@kms_flip@flip-vs-dpms-off-vs-modeset.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-kbl4/igt@kms_flip@flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][92] ([i915#180]) -> [PASS][93] +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [FAIL][94] ([i915#53] / [i915#93] / [i915#95]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
    - shard-apl:          [FAIL][96] ([i915#53] / [i915#95]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][98] ([fdo#109441]) -> [PASS][99] +3 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-b-query-forked-busy-hang:
    - shard-tglb:         [INCOMPLETE][100] ([i915#1373]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-tglb6/igt@kms_vblank@pipe-b-query-forked-busy-hang.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-tglb7/igt@kms_vblank@pipe-b-query-forked-busy-hang.html

  * {igt@perf@polling-parameterized}:
    - shard-hsw:          [FAIL][102] ([i915#1542]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-hsw6/igt@perf@polling-parameterized.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-hsw2/igt@perf@polling-parameterized.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][104] ([fdo#112080]) -> [PASS][105] +15 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb7/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][106] ([fdo#109276]) -> [PASS][107] +19 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb5/igt@prime_busy@hang-bsd2.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][108] ([i915#468]) -> [FAIL][109] ([i915#454])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112015]: https://bugs.freedesktop.org/show_bug.cgi?id=112015
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#1297]: https://gitlab.freedesktop.org/drm/intel/issues/1297
  [i915#1316]: https://gitlab.freedesktop.org/drm/intel/issues/1316
  [i915#1373]: https://gitlab.freedesktop.org/drm/intel/issues/1373
  [i915#1527]: https://gitlab.freedesktop.org/drm/intel/issues/1527
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#600]: https://gitlab.freedesktop.org/drm/intel/issues/600
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 8)
------------------------------

  Missing    (2): pig-skl-6260u pig-glk-j5005 


Build changes
-------------

  * CI: CI-20190529 -> None
  * IGT: IGT_5545 -> IGTPW_4376
  * Piglit: piglit_4509 -> None

  CI-20190529: 20190529
  CI_DRM_8219: 42de3b3c94078845ceed586199c039622561b522 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_4376: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/index.html
  IGT_5545: 9e5bfd10d56f81b98e0229c6bb14670221fd0b54 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
