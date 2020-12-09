Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F15CE2D3B98
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 07:41:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC7856E10B;
	Wed,  9 Dec 2020 06:41:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D24366E10B;
 Wed,  9 Dec 2020 06:41:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C9F75A7DFB;
 Wed,  9 Dec 2020 06:41:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dave Airlie" <airlied@gmail.com>
Date: Wed, 09 Dec 2020 06:41:26 -0000
Message-ID: <160749608680.4258.1611235799426269136@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201209042144.2281-1-airlied@gmail.com>
In-Reply-To: <20201209042144.2281-1-airlied@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_refactor_cursor_code_ou?=
 =?utf-8?q?t_of_i915=5Fdisplay=2Ec?=
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
Content-Type: multipart/mixed; boundary="===============1209865938=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1209865938==
Content-Type: multipart/alternative;
 boundary="===============1907907964986612661=="

--===============1907907964986612661==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/4] drm/i915: refactor cursor code out of i915_display.c
URL   : https://patchwork.freedesktop.org/series/84712/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9463_full -> Patchwork_19086_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_9463_full and Patchwork_19086_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 200 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19086_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_reloc@basic-many-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][1] ([i915#2389])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-iclb1/igt@gem_exec_reloc@basic-many-active@vcs1.html

  * igt@i915_pm_rpm@cursor:
    - shard-glk:          [PASS][2] -> [DMESG-WARN][3] ([i915#118] / [i915#95])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-glk1/igt@i915_pm_rpm@cursor.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-glk3/igt@i915_pm_rpm@cursor.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-hsw:          NOTRUN -> [SKIP][4] ([fdo#109271]) +53 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-hsw6/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-skl:          [PASS][5] -> [DMESG-FAIL][6] ([i915#2291] / [i915#541])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-skl8/igt@i915_selftest@live@gt_heartbeat.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-skl1/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#2597])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-tglb5/igt@kms_async_flips@test-time-stamp.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-tglb2/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_chamelium@hdmi-crc-nonplanar-formats:
    - shard-hsw:          NOTRUN -> [SKIP][9] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-hsw6/igt@kms_chamelium@hdmi-crc-nonplanar-formats.html

  * igt@kms_color_chamelium@pipe-a-gamma:
    - shard-skl:          NOTRUN -> [SKIP][10] ([fdo#109271] / [fdo#111827])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-skl4/igt@kms_color_chamelium@pipe-a-gamma.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#54])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          NOTRUN -> [FAIL][13] ([i915#96])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-ytiled:
    - shard-glk:          [PASS][14] -> [FAIL][15] ([i915#52] / [i915#54])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-glk1/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-ytiled.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-glk3/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-tglb:         [PASS][16] -> [FAIL][17] ([i915#2598])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-tglb2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][18] -> [FAIL][19] ([i915#2122]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-skl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#2672])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-skl5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render:
    - shard-skl:          NOTRUN -> [SKIP][21] ([fdo#109271]) +23 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-skl8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][22] -> [FAIL][23] ([i915#1188])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][24] ([fdo#108145] / [i915#265])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145] / [i915#265]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf@enable-disable:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#1352])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-skl2/igt@perf@enable-disable.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-skl2/igt@perf@enable-disable.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#1542])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-skl2/igt@perf@polling-parameterized.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-skl9/igt@perf@polling-parameterized.html
    - shard-tglb:         [PASS][33] -> [FAIL][34] ([i915#1542])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-tglb8/igt@perf@polling-parameterized.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-tglb8/igt@perf@polling-parameterized.html

  
#### Possible fixes ####

  * igt@gem_exec_whisper@basic-contexts:
    - shard-glk:          [DMESG-WARN][35] ([i915#118] / [i915#95]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-glk3/igt@gem_exec_whisper@basic-contexts.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-glk5/igt@gem_exec_whisper@basic-contexts.html

  * igt@gem_userptr_blits@huge-split:
    - shard-hsw:          [FAIL][37] -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-hsw2/igt@gem_userptr_blits@huge-split.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-hsw6/igt@gem_userptr_blits@huge-split.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
    - shard-skl:          [FAIL][39] ([i915#54]) -> [PASS][40] +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [FAIL][41] ([i915#96]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-hsw2/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][43] ([i915#2346] / [i915#533]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][45] ([i915#79]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-vga1-hdmi-a1:
    - shard-hsw:          [FAIL][47] ([i915#2122]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-hsw6/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-vga1-hdmi-a1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-hsw4/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][49] ([i915#1188]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][51] ([i915#198]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-skl9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][53] ([fdo#108145] / [i915#265]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][55] ([fdo#109441]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][57] ([i915#588]) -> [SKIP][58] ([i915#658])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][59] ([i915#2681] / [i915#2684]) -> [WARN][60] ([i915#2684])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][61] ([i915#1804] / [i915#2684]) -> [WARN][62] ([i915#2684])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][63] ([i915#1226]) -> [SKIP][64] ([fdo#109349])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@runner@aborted:
    - shard-iclb:         ([FAIL][65], [FAIL][66]) ([i915#1814] / [i915#2295] / [i915#2722] / [i915#483]) -> ([FAIL][67], [FAIL][68]) ([i915#1814] / [i915#2295] / [i915#2722] / [i915#2724] / [i915#483])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-iclb1/igt@runner@aborted.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-iclb3/igt@runner@aborted.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-iclb5/igt@runner@aborted.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-iclb2/igt@runner@aborted.html
    - shard-glk:          ([FAIL][69], [FAIL][70]) ([i915#1814] / [i915#2295] / [i915#2722] / [i915#483] / [k.org#202321]) -> ([FAIL][71], [FAIL][72]) ([i915#1814] / [i915#2295] / [i915#2722] / [k.org#202321])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-glk2/igt@runner@aborted.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-glk3/igt@runner@aborted.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-glk8/igt@runner@aborted.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-glk5/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1352]: https://gitlab.freedesktop.org/drm/intel/issues/1352
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2597]: https://gitlab.freedesktop.org/drm/intel/issues/2597
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9463 -> Patchwork_19086

  CI-20190529: 20190529
  CI_DRM_9463: 1c64d5d72bcd4e6ccf2d0ba6e6ab3644497846b5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5885: d99f644b1868b9c92435b05ebfafa230721cd677 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19086: a10cb379b7b484c1440dfadc8f815447c5ebfb6d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/index.html

--===============1907907964986612661==
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
<tr><td><b>Series:</b></td><td>series starting with [1/4] drm/i915: refacto=
r cursor code out of i915_display.c</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/84712/">https://patchwork.freedesktop.org/series/84712/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19086/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19086/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9463_full -&gt; Patchwork_19086_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9463_full and Patchwork_19=
086_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 200 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19086_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19086/shard-iclb1/igt@gem_exec_reloc@basic-many-act=
ive@vcs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2389">i915#2389</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9463/shard-glk1/igt@i915_pm_rpm@cursor.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-glk3/igt=
@i915_pm_rpm@cursor.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/118">i915#118</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19086/shard-hsw6/igt@i915_pm_rpm@gem-execbuf-stress=
-pc8.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a>) +53 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9463/shard-skl8/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/s=
hard-skl1/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9463/shard-tglb5/igt@kms_async_flips@test-time-stamp.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/=
shard-tglb2/igt@kms_async_flips@test-time-stamp.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2597">i915#2597</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-nonplanar-formats:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19086/shard-hsw6/igt@kms_chamelium@hdmi-crc-nonplan=
ar-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-gamma:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19086/shard-skl4/igt@kms_color_chamelium@pipe-a-gam=
ma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9463/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19086/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54"=
>i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19086/shard-hsw6/igt@kms_cursor_legacy@2x-long-curs=
or-vs-flip-legacy.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/96">i915#96</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-pwrite-ytiled:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9463/shard-glk1/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-ytiled=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19086/shard-glk3/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-ytil=
ed.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/52">i915#52</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/54">i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9463/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19086/shard-tglb2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2598">i915#25=
98</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9463/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@b=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19086/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interrup=
tible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2122">i915#2122</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19086/shard-skl5/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render:</=
p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19086/shard-skl8/igt@kms_frontbuffer_tracking@fbcps=
r-1p-offscren-pri-indfb-draw-render.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +23 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9463/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-skl=
9/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19086/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-7efc.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9463/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19086/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">F=
AIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145">=
fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/265">i915#265</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9463/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/sha=
rd-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@perf@enable-disable:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9463/shard-skl2/igt@perf@enable-disable.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-skl2/ig=
t@perf@enable-disable.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/1352">i915#1352</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9463/shard-skl2/igt@perf@polling-parameterized.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-s=
kl9/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9463/shard-tglb8/igt@perf@polling-parameterized.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-=
tglb8/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-contexts:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9463/shard-glk3/igt@gem_exec_whisper@basic-contexts.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915=
#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i=
915#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19086/shard-glk5/igt@gem_exec_whisper@basic-contexts.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@huge-split:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9463/shard-hsw2/igt@gem_userptr_blits@huge-split.html">FAIL</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shar=
d-hsw6/igt@gem_userptr_blits@huge-split.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9463/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54=
">i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19086/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.h=
tml">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9463/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/96">i915#96</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19086/shard-hsw2/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-at=
omic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9463/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2346">i915#2346</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/533">i915#533</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-skl4/igt@kms_cursor_legacy@=
flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9463/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-h=
dmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19086/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank@ab=
-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9463/shard-hsw6/igt@kms_flip@2x-plain-flip-fb-recreate-interruptibl=
e@ab-vga1-hdmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19086/shard-hsw4/igt@kms_flip@2x-plain-flip=
-fb-recreate-interruptible@ab-vga1-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9463/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086=
/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9463/shard-skl9/igt@kms_plane@plane-panning-bottom-right-suspend-pi=
pe-b-planes.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/198">i915#198</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_19086/shard-skl5/igt@kms_plane@plane-panning-=
bottom-right-suspend-pipe-b-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9463/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min=
.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19086/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-cons=
tant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9463/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#1094=
41</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19086/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a> +1 sim=
ilar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9463/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
086/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9463/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#268=
1</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i9=
15#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19086/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684=
</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9463/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19086/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9463/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1226">i9=
15#1226</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19086/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109349">fdo#1093=
49</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9463/shard-iclb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-iclb3/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2722">i915#2722</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/483">i915#483</a>) -&gt; (<a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-iclb5/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19086/shard-iclb2/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2724">i915#2724</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#4=
83</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9463/shard-glk2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9463/shard-glk3/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2722">i915#2722</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/483">i915#483</a> / <a href=3D"https://bugzilla.kerne=
l.org/show_bug.cgi?id=3D202321">k.org#202321</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19086/shard-glk8/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19086/shard-glk5/igt@runner@aborted.html">FAIL</a>) (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</=
a> / <a href=3D"https://bugzilla.kernel.org/show_bug.cgi?id=3D202321">k.org=
#202321</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9463 -&gt; Patchwork_19086</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9463: 1c64d5d72bcd4e6ccf2d0ba6e6ab3644497846b5 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5885: d99f644b1868b9c92435b05ebfafa230721cd677 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19086: a10cb379b7b484c1440dfadc8f815447c5ebfb6d @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1907907964986612661==--

--===============1209865938==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1209865938==--
