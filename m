Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF9144F0B0
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Nov 2021 02:57:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 103B26E0FF;
	Sat, 13 Nov 2021 01:57:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 788376E05A;
 Sat, 13 Nov 2021 01:57:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6DD8DA73C7;
 Sat, 13 Nov 2021 01:57:36 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3579676283484417401=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Sat, 13 Nov 2021 01:57:36 -0000
Message-ID: <163676865640.17046.1369076546688398087@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211112210825.1489596-1-anusha.srivatsa@intel.com>
In-Reply-To: <20211112210825.1489596-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_Raptor_Lake_S?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============3579676283484417401==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce Raptor Lake S
URL   : https://patchwork.freedesktop.org/series/96869/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10877_full -> Patchwork_21580_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_21580_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-apl:          NOTRUN -> [DMESG-WARN][1] ([i915#3002])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-apl3/igt@gem_create@create-massive.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][2] -> [TIMEOUT][3] ([i915#2369] / [i915#3063] / [i915#3648])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-tglb5/igt@gem_eio@unwedge-stress.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-tglb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-skl:          NOTRUN -> [FAIL][4] ([i915#2846])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-skl9/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][5] -> [FAIL][6] ([i915#2842]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-apl:          [PASS][7] -> [SKIP][8] ([fdo#109271])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-apl6/igt@gem_exec_fair@basic-none-share@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][9] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][10] -> [FAIL][11] ([i915#2842]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-kbl3/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][12] -> [FAIL][13] ([i915#2849])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [PASS][14] -> [DMESG-WARN][15] ([i915#118]) +2 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-glk4/igt@gem_exec_whisper@basic-queues-forked-all.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-glk8/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#2190])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-apl8/igt@gem_huc_copy@huc-copy.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-kbl:          NOTRUN -> [WARN][17] ([i915#2658])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-kbl3/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@input-checking:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][18] ([i915#3002])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-kbl7/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-kbl:          NOTRUN -> [FAIL][19] ([i915#3318])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-kbl7/igt@gem_userptr_blits@vma-merge.html

  * igt@i915_suspend@debugfs-reader:
    - shard-tglb:         [PASS][20] -> [INCOMPLETE][21] ([i915#456]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-tglb8/igt@i915_suspend@debugfs-reader.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-tglb7/igt@i915_suspend@debugfs-reader.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-tglb:         [PASS][22] -> [INCOMPLETE][23] ([i915#456] / [i915#750])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-tglb2/igt@i915_suspend@fence-restore-tiled2untiled.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-tglb7/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          NOTRUN -> [DMESG-WARN][24] ([i915#180])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-apl1/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][25] ([i915#3743])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3777])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3886]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-apl7/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3886]) +4 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-kbl3/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#3886]) +5 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-skl9/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-hpd-storm-disable:
    - shard-skl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-skl6/igt@kms_chamelium@dp-hpd-storm-disable.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-apl3/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_color@pipe-c-ctm-0-75:
    - shard-skl:          [PASS][32] -> [DMESG-WARN][33] ([i915#1982])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl4/igt@kms_color@pipe-c-ctm-0-75.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-skl8/igt@kms_color@pipe-c-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
    - shard-kbl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-kbl3/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          NOTRUN -> [TIMEOUT][35] ([i915#1319])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-kbl7/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@lic:
    - shard-apl:          NOTRUN -> [TIMEOUT][36] ([i915#1319])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-apl3/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@uevent:
    - shard-kbl:          NOTRUN -> [FAIL][37] ([i915#2105])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-kbl7/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:
    - shard-iclb:         [PASS][38] -> [DMESG-FAIL][39] ([i915#1226])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-iclb8/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-iclb7/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([i915#2346] / [i915#533])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#533]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-apl8/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#79])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          NOTRUN -> [FAIL][45] ([i915#2122])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
    - shard-skl:          [PASS][46] -> [FAIL][47] ([i915#2122])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-apl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#2672])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-apl3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][49] ([fdo#109271]) +147 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-skl1/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-apl:          NOTRUN -> [SKIP][50] ([fdo#109271]) +93 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-apl3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-kbl:          NOTRUN -> [SKIP][51] ([fdo#109271]) +55 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-kbl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#533])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-skl1/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - shard-apl:          [PASS][53] -> [DMESG-WARN][54] ([i915#180]) +3 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][55] ([fdo#108145] / [i915#265]) +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][56] ([fdo#108145] / [i915#265])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
    - shard-apl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#658]) +3 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-apl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
    - shard-kbl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#658])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-kbl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-skl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#658]) +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-skl6/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [PASS][60] -> [SKIP][61] ([fdo#109441])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_writeback@writeback-check-output:
    - shard-kbl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#2437])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-kbl7/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#2437])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-apl3/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][64] -> [FAIL][65] ([i915#1542])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl6/igt@perf@polling-parameterized.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-skl7/igt@perf@polling-parameterized.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][66] -> [FAIL][67] ([i915#1722])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl7/igt@perf@polling-small-buf.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-skl8/igt@perf@polling-small-buf.html

  * igt@sysfs_clients@create:
    - shard-skl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#2994]) +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-skl9/igt@sysfs_clients@create.html

  * igt@sysfs_clients@sema-10:
    - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#2994]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-apl1/igt@sysfs_clients@sema-10.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][70] ([i915#2842]) -> [PASS][71] +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         [FAIL][72] ([i915#2842]) -> [PASS][73] +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html
    - shard-tglb:         [FAIL][74] ([i915#2842]) -> [PASS][75] +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-tglb5/igt@gem_exec_fair@basic-pace@vcs1.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][76] ([i915#2190]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-tglb5/igt@gem_huc_copy@huc-copy.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-glk:          [DMESG-WARN][78] ([i915#118]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-glk9/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-glk2/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][80] ([i915#180]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][82] ([i915#2122]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-glk5/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-glk1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
    - shard-glk:          [FAIL][84] ([i915#79]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][86] ([i915#79]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [INCOMPLETE][88] ([i915#636]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-apl:          [DMESG-WARN][90] ([i915#180]) -> [PASS][91] +4 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-apl1/igt@kms_hdr@bpc-switch-suspend.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-apl7/igt@kms_hdr@bpc-switch-suspend.html
    - shard-skl:          [FAIL][92] ([i915#1188]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][94] ([fdo#108145] / [i915#265]) -> [PASS][95] +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][96] ([fdo#109441]) -> [PASS][97] +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][98] ([i915#31]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-apl2/igt@kms_setmode@basic.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-apl3/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [INCOMPLETE][100] ([i915#2828] / [i915#794]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-kbl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-kbl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         [FAIL][102] ([i915#2852]) -> [FAIL][103] ([i915#2842])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-iclb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [SKIP][104] ([i915#4281]) -> [FAIL][105] ([i915#4275])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-iclb5/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][106] ([i915#2684]) -> [WARN][107] ([i915#1804] / [i915#2684])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][108] ([i915#1804] / [i915#2684]) -> [FAIL][109] ([i915#2680])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
    - shard-iclb:         [SKIP][110] ([i915#658]) -> [SKIP][111] ([i915#2920]) +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][112] ([i915#2920]) -> [SKIP][113] ([i915#658])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][114], [FAIL][115]) ([i915#1814] / [i915#3002] / [i915#3363] / [i915#4312]) -> ([FAIL][116], [FAIL][117]) ([i915#3002] / [i915#3363] / [i915#4312])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-kbl7/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-kbl3/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-kbl7/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-kbl3/igt@runner@aborted.html
    - shard-apl:          ([FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3363] / [i915#4312]) -> ([FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#4312])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-apl3/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-apl8/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-apl1/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-apl2/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-apl3/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-apl1/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-apl2/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-apl1/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-apl6/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-apl6/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-apl1/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-apl8/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-apl8/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-apl4/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-apl3/igt@runner@aborted.html
    - shard-skl:          ([FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137]) ([i915#1436] / [i915#2029] / [i915#2263] / [i915#2369] / [i915#3002] / [i915#3363] / [i915#4312]) -> ([FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141]) ([i915#1436] / [i915#2369] / [i915#3002] / [i915#3363] / [i915#4312])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl2/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl9/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl8/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl10/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl10/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-skl9/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-skl10/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-skl4/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-skl4/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2105]: https://gitlab.freedesktop.org/drm/intel/issues/2105
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2263]: https://gitlab.freedesktop.org/drm/intel/issues/2263
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2680]: https://gitlab.freedesktop.org/drm/intel/issues/2680
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2828]: https://gitlab.freedesktop.org/drm/intel/issues/2828
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2852]: https://gitlab.freedesktop.org/drm/intel/issues/2852
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3648]: https://gitlab.free

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/index.html

--===============3579676283484417401==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>Introduce Raptor Lake S</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/96869/">https://patchwork.freedesktop.org/series/96869/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21580/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21580/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10877_full -&gt; Patchwork_21580_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21580_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-apl3/igt@gem_create@create-massive.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3002">i915#3002</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-tglb5/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-tg=
lb6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/2369">i915#2369</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a> / <a href=3D"ht=
tps://gitlab.free">i915#3648</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-skl9/igt@gem_exec_fair@basic-deadline.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/s=
hard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +2 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-apl6/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
580/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a=
>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/sh=
ard-kbl3/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 similar =
issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_215=
80/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/2849">i915#2849</a>)</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-glk4/igt@gem_exec_whisper@basic-queues-forked-all.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_21580/shard-glk8/igt@gem_exec_whisper@basic-queues-forked-all.html">DMES=
G-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118"=
>i915#118</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-apl8/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-kbl3/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/26=
58">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-kbl7/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3002">i915#3002</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-kbl7/igt@gem_userptr_blits@vma-merge.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/33=
18">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-tglb8/igt@i915_suspend@debugfs-reader.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/sha=
rd-tglb7/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</a> ([i915#456]) =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-tglb2/igt@i915_suspend@fence-restore-tiled2untiled.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21580/shard-tglb7/igt@i915_suspend@fence-restore-tiled2untiled.html">IN=
COMPLETE</a> ([i915#456] / [i915#750])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-apl1/igt@i915_suspend@fence-restore-unt=
iled.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-apl7/igt@kms_ccs@pipe-a-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886]) +3 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-kbl3/igt@kms_ccs@pipe-c-bad-pixel-forma=
t-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886]) +4 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-skl9/igt@kms_ccs@pipe-c-crc-sprite-plan=
es-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886]) +5 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm-disable:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-skl6/igt@kms_chamelium@dp-hpd-storm-dis=
able.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-apl3/igt@kms_chamelium@vga-hpd-for-each=
-pipe.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-skl4/igt@kms_color@pipe-c-ctm-0-75.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-=
skl8/igt@kms_color@pipe-c-ctm-0-75.html">DMESG-WARN</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-green-to-red:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-kbl3/igt@kms_color_chamelium@pipe-d-ctm=
-green-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-kbl7/igt@kms_content_protection@atomic.=
html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-apl3/igt@kms_content_protection@lic.htm=
l">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-kbl7/igt@kms_content_protection@uevent.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2105">i915#2105</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-iclb8/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_21580/shard-iclb7/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscree=
n.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1226">i915#1226</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_21580/shard-skl1/igt@kms_cursor_legacy@flip-vs-c=
ursor-atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-apl8/igt@kms_cursor_legacy@pipe-d-tortu=
re-bo.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21580/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a=
> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-skl6/igt@kms_flip@plain-flip-fb-recreat=
e-interruptible@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21580/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#212=
2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-apl3/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-32bpp-ytilercccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-skl1/igt@kms_frontbuffer_tracking@fbc-1=
p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +147 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-apl3/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +93 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-kbl7/igt@kms_frontbuffer_tracking@psr-1=
p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +55 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-skl1/igt@kms_pipe_crc_basic@hang-read-c=
rc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend@p=
ipe-a-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21580/shard-apl4/igt@kms_plane@plane-panning-bottom-ri=
ght-suspend@pipe-a-planes.html">DMESG-WARN</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/180">i915#180</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-=
alpha-7efc.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/265">i915#265</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-apl1/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-1.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +3 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-kbl3/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-2.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-skl6/igt@kms_psr2_su@frontbuffer.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/sh=
ard-iclb5/igt@kms_psr@psr2_cursor_mmap_gtt.html">SKIP</a> (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-kbl7/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-apl3/igt@kms_writeback@writeback-pixel-=
formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-skl6/igt@perf@polling-parameterized.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard=
-skl7/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-skl7/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-skl=
8/igt@perf@polling-small-buf.html">FAIL</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/1722">i915#1722</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-skl9/igt@sysfs_clients@create.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
994">i915#2994</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21580/shard-apl1/igt@sysfs_clients@sema-10.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2994">i915#2994</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
580/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +1 similar =
issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10877/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
580/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> +1 similar=
 issue</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10877/shard-tglb5/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
580/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> +1 similar=
 issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/sha=
rd-tglb5/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-glk9/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i=
915#118</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21580/shard-glk2/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180=
">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_21580/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-glk5/igt@kms_flip@2x-plain-flip-fb-recreate-interruptib=
le@bc-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-glk1/igt@kms_flip@2x-plain-=
flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21580/shard-glk3/igt@kms_flip@flip-vs-expired=
-vblank-interruptible@a-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">=
FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21580/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html">INCOMPLET=
E</a> ([i915#636]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21580/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10877/shard-apl1/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
580/shard-apl7/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> +4 similar iss=
ues</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10877/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/=
shard-skl7/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1081=
45">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21580/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverag=
e-7efc.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#10944=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21580/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> +1 simila=
r issue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-apl2/igt@kms_setmode@basic.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-apl3/i=
gt@kms_setmode@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-kbl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html=
">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2828">i915#2828</a> / [i915#794]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_21580/shard-kbl6/igt@kms_vblank@pipe-c-ts-cont=
inuation-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-iclb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2852">i915=
#2852</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21580/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#284=
2</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> ([i915#428=
1]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_215=
80/shard-iclb5/igt@i915_pm_dc@dc9-dpms.html">FAIL</a> ([i915#4275])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#26=
84</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21580/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#268=
4</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#180=
4</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i9=
15#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21580/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2680">i915#2680<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
1.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21580/shard-iclb2/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_21580/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-d=
mg-area-2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-kbl3/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3363">i915#3363</a> / [i915#4312]) -&gt; (<a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-kbl7/igt@runner@=
aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21580/shard-kbl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> /=
 [i915#4312])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-apl8/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10877/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-apl2/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10877/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-apl1/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0877/shard-apl2/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> /=
 [i915#4312]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21580/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-apl6/igt@runner@=
aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21580/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-apl1/igt@runn=
er@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21580/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-apl8/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21580/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard-apl3/=
igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / [i915#431=
2])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl9/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10877/shard-skl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl10/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_10877/shard-skl10/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/2263">i915#2263</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2369">i915#2369<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915=
#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3363=
">i915#3363</a> / [i915#4312]) -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_21580/shard-skl9/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/shard=
-skl10/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_21580/shard-skl4/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21580/s=
hard-skl4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/2369">i915#2369</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / [i915=
#4312])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3579676283484417401==--
