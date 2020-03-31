Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CB0199262
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 11:39:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11E326E5BF;
	Tue, 31 Mar 2020 09:39:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 82A2A6E5BE;
 Tue, 31 Mar 2020 09:39:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5A0BDA47E1;
 Tue, 31 Mar 2020 09:39:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Melissa Wen" <melissa.srw@gmail.com>
Date: Tue, 31 Mar 2020 09:39:42 -0000
Message-ID: <158564758233.5565.12453559461902628983@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <9e1e0051f2aaeeb4c3fbe9f54fee6b71f64876dd.1585582530.git.melissa.srw@gmail.com>
In-Reply-To: <9e1e0051f2aaeeb4c3fbe9f54fee6b71f64876dd.1585582530.git.melissa.srw@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgbGli?=
 =?utf-8?q?/igt=5Ffb=3A_change_comments_with_fd_description?=
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

Series: lib/igt_fb: change comments with fd description
URL   : https://patchwork.freedesktop.org/series/75274/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8219_full -> IGTPW_4377_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/index.html

Known issues
------------

  Here are the changes found in IGTPW_4377_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@in-flight-suspend:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl7/igt@gem_eio@in-flight-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-apl4/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [i915#677]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-iclb6/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@implicit-write-read-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb6/igt@gem_exec_schedule@implicit-write-read-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-iclb1/igt@gem_exec_schedule@implicit-write-read-bsd.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +9 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb1/igt@gem_exec_schedule@independent-bsd2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-iclb7/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-shared-iova-vebox:
    - shard-apl:          [PASS][9] -> [INCOMPLETE][10] ([i915#1193])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl7/igt@gem_exec_schedule@pi-shared-iova-vebox.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-apl2/igt@gem_exec_schedule@pi-shared-iova-vebox.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +5 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb7/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen:
    - shard-kbl:          [PASS][13] -> [FAIL][14] ([i915#54] / [i915#93] / [i915#95]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#52] / [i915#54]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled:
    - shard-kbl:          [PASS][17] -> [FAIL][18] ([fdo#108145] / [i915#177] / [i915#52] / [i915#54] / [i915#93] / [i915#95])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-kbl1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html
    - shard-apl:          [PASS][19] -> [FAIL][20] ([fdo#108145] / [i915#52] / [i915#54] / [i915#95])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-apl7/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-kbl:          [PASS][21] -> [FAIL][22] ([i915#64])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl4/igt@kms_fbcon_fbt@fbc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-kbl7/igt@kms_fbcon_fbt@fbc.html
    - shard-apl:          [PASS][23] -> [FAIL][24] ([i915#1525])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl6/igt@kms_fbcon_fbt@fbc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-apl6/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#34])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-glk7/igt@kms_flip@2x-plain-flip-ts-check.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-snb:          [PASS][27] -> [INCOMPLETE][28] ([i915#82])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-snb1/igt@kms_flip@flip-vs-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-snb1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip_tiling@flip-changes-tiling-yf:
    - shard-kbl:          [PASS][29] -> [FAIL][30] ([i915#699] / [i915#93] / [i915#95])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl2/igt@kms_flip_tiling@flip-changes-tiling-yf.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-kbl7/igt@kms_flip_tiling@flip-changes-tiling-yf.html
    - shard-apl:          [PASS][31] -> [FAIL][32] ([i915#95])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl1/igt@kms_flip_tiling@flip-changes-tiling-yf.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-apl6/igt@kms_flip_tiling@flip-changes-tiling-yf.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-kbl:          [PASS][33] -> [FAIL][34] ([i915#49])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:
    - shard-glk:          [PASS][35] -> [FAIL][36] ([i915#49]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_prime@basic-crc:
    - shard-apl:          [PASS][39] -> [FAIL][40] ([i915#1031] / [i915#95])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl8/igt@kms_prime@basic-crc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-apl3/igt@kms_prime@basic-crc.html
    - shard-kbl:          [PASS][41] -> [FAIL][42] ([i915#1031] / [i915#93] / [i915#95])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl6/igt@kms_prime@basic-crc.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-kbl3/igt@kms_prime@basic-crc.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109441]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][45] -> [FAIL][46] ([i915#31])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl4/igt@kms_setmode@basic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-apl8/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-ts-continuation-modeset-rpm:
    - shard-glk:          [PASS][47] -> [INCOMPLETE][48] ([i915#58] / [k.org#198133])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-glk4/igt@kms_vblank@pipe-c-ts-continuation-modeset-rpm.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-glk3/igt@kms_vblank@pipe-c-ts-continuation-modeset-rpm.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [PASS][49] -> [SKIP][50] ([fdo#112080]) +7 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb2/igt@perf_pmu@busy-check-all-vcs1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-iclb6/igt@perf_pmu@busy-check-all-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@processes:
    - shard-kbl:          [FAIL][51] ([i915#1528]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl1/igt@gem_ctx_persistence@processes.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-kbl2/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][53] ([fdo#110854]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb8/igt@gem_exec_balancer@smoke.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][55] ([fdo#109276] / [i915#677]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb6/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [SKIP][57] ([fdo#112146]) -> [PASS][58] +4 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-iclb7/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [SKIP][59] ([fdo#109276]) -> [PASS][60] +21 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb6/igt@gem_exec_schedule@promotion-bsd1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-iclb1/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@i915_pm_rpm@debugfs-forcewake-user:
    - shard-hsw:          [SKIP][61] ([fdo#109271]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-hsw2/igt@i915_pm_rpm@debugfs-forcewake-user.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-hsw2/igt@i915_pm_rpm@debugfs-forcewake-user.html
    - shard-iclb:         [SKIP][63] ([i915#1316]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb8/igt@i915_pm_rpm@debugfs-forcewake-user.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-iclb2/igt@i915_pm_rpm@debugfs-forcewake-user.html
    - shard-tglb:         [SKIP][65] ([i915#1316]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-tglb8/igt@i915_pm_rpm@debugfs-forcewake-user.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-tglb7/igt@i915_pm_rpm@debugfs-forcewake-user.html
    - shard-glk:          [SKIP][67] ([fdo#109271]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-glk1/igt@i915_pm_rpm@debugfs-forcewake-user.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-glk5/igt@i915_pm_rpm@debugfs-forcewake-user.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-kbl:          [FAIL][69] ([i915#1119] / [i915#93] / [i915#95]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl4/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-kbl6/igt@kms_big_fb@linear-32bpp-rotate-0.html
    - shard-apl:          [FAIL][71] ([i915#1119] / [i915#95]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl6/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-apl3/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen:
    - shard-kbl:          [FAIL][73] ([i915#54] / [i915#93] / [i915#95]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][75] ([fdo#109349]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_draw_crc@draw-method-rgb565-render-untiled:
    - shard-glk:          [FAIL][77] ([i915#52] / [i915#54]) -> [PASS][78] +5 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-glk7/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-glk7/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-untiled:
    - shard-kbl:          [FAIL][79] ([i915#177] / [i915#52] / [i915#54] / [i915#93] / [i915#95]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl6/igt@kms_draw_crc@draw-method-xrgb8888-render-untiled.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-kbl6/igt@kms_draw_crc@draw-method-xrgb8888-render-untiled.html
    - shard-apl:          [FAIL][81] ([i915#52] / [i915#54] / [i915#95]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl8/igt@kms_draw_crc@draw-method-xrgb8888-render-untiled.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-apl4/igt@kms_draw_crc@draw-method-xrgb8888-render-untiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][83] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-dpms-off-vs-modeset:
    - shard-apl:          [INCOMPLETE][85] ([i915#1297]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl3/igt@kms_flip@flip-vs-dpms-off-vs-modeset.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-apl1/igt@kms_flip@flip-vs-dpms-off-vs-modeset.html
    - shard-kbl:          [INCOMPLETE][87] ([i915#1297] / [i915#600]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl3/igt@kms_flip@flip-vs-dpms-off-vs-modeset.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-kbl4/igt@kms_flip@flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][89] ([i915#180]) -> [PASS][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-hsw:          [INCOMPLETE][91] ([i915#61]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-hsw6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-hsw1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [FAIL][93] ([i915#53] / [i915#93] / [i915#95]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][95] ([i915#180]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [SKIP][97] ([fdo#109441]) -> [PASS][98] +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_vblank@pipe-b-query-forked-busy-hang:
    - shard-tglb:         [INCOMPLETE][99] ([i915#1373]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-tglb6/igt@kms_vblank@pipe-b-query-forked-busy-hang.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-tglb1/igt@kms_vblank@pipe-b-query-forked-busy-hang.html

  * igt@perf@gen12-mi-rpc:
    - shard-tglb:         [FAIL][101] ([i915#1085]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-tglb5/igt@perf@gen12-mi-rpc.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-tglb6/igt@perf@gen12-mi-rpc.html

  * {igt@perf@polling-parameterized}:
    - shard-hsw:          [FAIL][103] ([i915#1542]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-hsw6/igt@perf@polling-parameterized.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-hsw1/igt@perf@polling-parameterized.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [SKIP][105] ([fdo#112080]) -> [PASS][106] +12 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb5/igt@perf_pmu@init-busy-vcs1.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-iclb2/igt@perf_pmu@init-busy-vcs1.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][107] ([i915#468]) -> [FAIL][108] ([i915#454])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-tglb8/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-tglb:         [SKIP][109] ([fdo#109506]) -> [SKIP][110] ([i915#1316])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-tglb3/igt@i915_pm_rpm@modeset-pc8-residency-stress.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-tglb1/igt@i915_pm_rpm@modeset-pc8-residency-stress.html
    - shard-iclb:         [SKIP][111] ([fdo#109293] / [fdo#109506]) -> [SKIP][112] ([i915#1316])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb5/igt@i915_pm_rpm@modeset-pc8-residency-stress.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-iclb2/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-apl:          [FAIL][113] ([i915#53] / [i915#95]) -> [DMESG-WARN][114] ([i915#180])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-kbl:          [FAIL][115] ([fdo#108145]) -> [FAIL][116] ([fdo#108145] / [i915#93] / [i915#95])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-kbl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
    - shard-apl:          [FAIL][117] ([fdo#108145]) -> [FAIL][118] ([fdo#108145] / [i915#95])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1031]: https://gitlab.freedesktop.org/drm/intel/issues/1031
  [i915#1085]: https://gitlab.freedesktop.org/drm/intel/issues/1085
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#1193]: https://gitlab.freedesktop.org/drm/intel/issues/1193
  [i915#1297]: https://gitlab.freedesktop.org/drm/intel/issues/1297
  [i915#1316]: https://gitlab.freedesktop.org/drm/intel/issues/1316
  [i915#1373]: https://gitlab.freedesktop.org/drm/intel/issues/1373
  [i915#1525]: https://gitlab.freedesktop.org/drm/intel/issues/1525
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#600]: https://gitlab.freedesktop.org/drm/intel/issues/600
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#64]: https://gitlab.freedesktop.org/drm/intel/issues/64
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 8)
------------------------------

  Missing    (2): pig-skl-6260u pig-glk-j5005 


Build changes
-------------

  * CI: CI-20190529 -> None
  * IGT: IGT_5545 -> IGTPW_4377
  * Piglit: piglit_4509 -> None

  CI-20190529: 20190529
  CI_DRM_8219: 42de3b3c94078845ceed586199c039622561b522 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_4377: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/index.html
  IGT_5545: 9e5bfd10d56f81b98e0229c6bb14670221fd0b54 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4377/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
