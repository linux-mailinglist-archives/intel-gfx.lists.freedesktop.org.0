Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD69A2C61C8
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 10:34:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C10AF6EB76;
	Fri, 27 Nov 2020 09:34:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5ECE46EB75;
 Fri, 27 Nov 2020 09:34:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5410AA47E8;
 Fri, 27 Nov 2020 09:34:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uma Shankar" <uma.shankar@intel.com>
Date: Fri, 27 Nov 2020 09:34:14 -0000
Message-ID: <160646965430.26782.2720868962440569809@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201126210314.7882-1-uma.shankar@intel.com>
In-Reply-To: <20201126210314.7882-1-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRW5h?=
 =?utf-8?q?ble_HDR_on_MCA_LSPCON_based_Gen9_devices_=28rev12=29?=
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
Content-Type: multipart/mixed; boundary="===============1498564467=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1498564467==
Content-Type: multipart/alternative;
 boundary="===============7224601495150617680=="

--===============7224601495150617680==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable HDR on MCA LSPCON based Gen9 devices (rev12)
URL   : https://patchwork.freedesktop.org/series/68081/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9395_full -> Patchwork_18993_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18993_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18993_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18993_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - shard-skl:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-rte.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@syncobj_timeline@wait-all-snapshot:
    - shard-glk:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-glk2/igt@syncobj_timeline@wait-all-snapshot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-glk4/igt@syncobj_timeline@wait-all-snapshot.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9395_full and Patchwork_18993_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 200 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18993_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-normal-all:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#118] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-glk4/igt@gem_exec_whisper@basic-normal-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-glk3/igt@gem_exec_whisper@basic-normal-all.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#151])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-skl1/igt@i915_pm_rpm@system-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-skl9/igt@i915_pm_rpm@system-suspend.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#54])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#72])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-kbl2/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-kbl2/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled:
    - shard-glk:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-glk1/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-glk7/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.html

  * igt@kms_flip@2x-flip-vs-dpms@ab-vga1-hdmi-a1:
    - shard-hsw:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-hsw2/igt@kms_flip@2x-flip-vs-dpms@ab-vga1-hdmi-a1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-hsw6/igt@kms_flip@2x-flip-vs-dpms@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-tglb:         [PASS][19] -> [FAIL][20] ([i915#2598])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#2122]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-msflip-blt:
    - shard-tglb:         [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-msflip-blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen:
    - shard-skl:          [PASS][25] -> [DMESG-WARN][26] ([i915#1982]) +6 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#49]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-skl4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-skl7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#1188])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf@blocking:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#1542]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-skl2/igt@perf@blocking.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-skl10/igt@perf@blocking.html

  * igt@sysfs_heartbeat_interval@mixed@vecs0:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#1731])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-skl7/igt@sysfs_heartbeat_interval@mixed@vecs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-skl4/igt@sysfs_heartbeat_interval@mixed@vecs0.html

  
#### Possible fixes ####

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-glk:          [DMESG-WARN][39] ([i915#118] / [i915#95]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-glk8/igt@gem_exec_whisper@basic-contexts-forked.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-glk6/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [INCOMPLETE][41] ([i915#198] / [i915#2405]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-skl3/igt@gem_softpin@noreloc-s3.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-skl8/igt@gem_softpin@noreloc-s3.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [DMESG-WARN][43] ([i915#1436] / [i915#716]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-skl8/igt@gen9_exec_parse@allowed-all.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-skl1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_module_load@reload:
    - shard-skl:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-skl4/igt@i915_module_load@reload.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-skl4/igt@i915_module_load@reload.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-random:
    - shard-skl:          [FAIL][47] ([i915#54]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:
    - shard-glk:          [DMESG-WARN][49] ([i915#1982]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-glk6/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-glk1/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][51] ([i915#2122]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1:
    - shard-kbl:          [DMESG-WARN][53] ([i915#1982]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-kbl4/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-kbl7/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:
    - shard-glk:          [FAIL][55] ([i915#79]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-badstride:
    - shard-iclb:         [DMESG-WARN][57] ([i915#1982]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-badstride.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-iclb4/igt@kms_frontbuffer_tracking@fbc-badstride.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][59] ([fdo#109441]) -> [PASS][60] +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_universal_plane@disable-primary-vs-flip-pipe-c:
    - shard-tglb:         [DMESG-WARN][61] ([i915#1982]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-tglb1/igt@kms_universal_plane@disable-primary-vs-flip-pipe-c.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-tglb8/igt@kms_universal_plane@disable-primary-vs-flip-pipe-c.html

  * igt@prime_vgem@sync@rcs0:
    - shard-snb:          [INCOMPLETE][63] -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-snb6/igt@prime_vgem@sync@rcs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-snb5/igt@prime_vgem@sync@rcs0.html

  
#### Warnings ####

  * igt@gem_exec_schedule@semaphore-power:
    - shard-snb:          [SKIP][65] ([fdo#109271] / [i915#2295]) -> [SKIP][66] ([fdo#109271]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-snb6/igt@gem_exec_schedule@semaphore-power.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-snb4/igt@gem_exec_schedule@semaphore-power.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-tglb:         [WARN][67] ([i915#2681]) -> [WARN][68] ([i915#2681] / [i915#2684])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-tglb2/igt@i915_pm_rc6_residency@rc6-idle.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-tglb5/igt@i915_pm_rc6_residency@rc6-idle.html
    - shard-iclb:         [WARN][69] ([i915#1804]) -> [WARN][70] ([i915#2684])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic:
    - shard-skl:          [DMESG-WARN][71] ([i915#1982] / [i915#2295]) -> [DMESG-WARN][72] ([i915#1982])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-skl4/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-skl8/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-glk:          [FAIL][73] ([fdo#108145] / [i915#2295] / [i915#265]) -> [FAIL][74] ([fdo#108145] / [i915#265])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-glk4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-glk3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html
    - shard-skl:          [FAIL][75] ([fdo#108145] / [i915#2295] / [i915#265]) -> [FAIL][76] ([fdo#108145] / [i915#265])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html
    - shard-hsw:          [SKIP][77] ([fdo#109271] / [i915#2295]) -> [SKIP][78] ([fdo#109271]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-hsw4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-hsw2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html
    - shard-kbl:          [FAIL][79] ([fdo#108145] / [i915#2295] / [i915#265]) -> [FAIL][80] ([fdo#108145] / [i915#265])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-tglb:         [INCOMPLETE][81] ([i915#1436] / [i915#1602] / [i915#1887] / [i915#2411] / [i915#456]) -> [DMESG-WARN][82] ([i915#1436] / [i915#1602] / [i915#1887] / [i915#2411])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-tglb6/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-tglb3/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-tglb:         [DMESG-WARN][83] ([i915#2295] / [i915#2411]) -> [DMESG-WARN][84] ([i915#2411]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-tglb7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-tglb7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][85] ([i915#2295]) -> [FAIL][86] ([i915#2295] / [i915#2722])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-kbl7/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-kbl7/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][87], [FAIL][88]) ([i915#1814] / [i915#2295] / [i915#483]) -> ([FAIL][89], [FAIL][90]) ([i915#1814] / [i915#2295] / [i915#2722] / [i915#483])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-iclb3/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-iclb5/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-iclb1/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-iclb4/igt@runner@aborted.html
    - shard-apl:          ([FAIL][91], [FAIL][92]) ([i915#1814] / [i915#2295]) -> ([FAIL][93], [FAIL][94], [FAIL][95], [FAIL][96], [FAIL][97], [FAIL][98], [FAIL][99], [FAIL][100], [FAIL][101], [FAIL][102], [FAIL][103], [FAIL][104], [FAIL][105], [FAIL][106], [FAIL][107], [FAIL][108], [FAIL][109], [FAIL][110], [FAIL][111], [FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117]) ([i915#1610] / [i915#2295] / [i915#2722])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-apl3/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-apl7/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl2/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl1/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl8/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl3/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl4/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl4/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl1/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl7/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl3/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl1/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl2/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl1/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl8/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl7/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl6/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl4/igt@runner@aborted.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl8/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl6/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl6/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl8/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl6/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl3/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl3/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl2/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl7/igt@runner@aborted.html
    - shard-glk:          ([FAIL][118], [FAIL][119], [FAIL][120]) ([i915#1814] / [i915#2295] / [i915#483] / [k.org#202321]) -> ([FAIL][121], [FAIL][122]) ([i915#1814] / [i915#2295] / [i915#2722] / [i915#483] / [k.org#202321])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-glk8/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-glk4/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-glk7/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-glk3/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-glk5/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][123], [FAIL][124]) ([i915#1602] / [i915#2295]) -> ([FAIL][125], [FAIL][126]) ([i915#1602] / [i915#2295] / [i915#2722])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-tglb2/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-tglb6/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-tglb5/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-tglb3/igt@runner@aborted.html
    - shard-skl:          ([FAIL][127], [FAIL][128]) ([i915#1436] / [i915#2295]) -> [FAIL][129] ([i915#2295] / [i915#2722])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-skl4/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-skl8/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-skl8/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1887]: https://gitlab.freedesktop.org/drm/intel/issues/1887
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9395 -> Patchwork_18993

  CI-20190529: 20190529
  CI_DRM_9395: 83729b962cacdce11fe05033ad2493da61536ebf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5871: ff519fd84618558c550bec07e7cc4b2c682f86ff @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18993: 1702176c40ec84b4ae74690055dcfb850ee47256 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/index.html

--===============7224601495150617680==
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
<tr><td><b>Series:</b></td><td>Enable HDR on MCA LSPCON based Gen9 devices =
(rev12)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/68081/">https://patchwork.freedesktop.org/series/68081/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18993/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18993/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9395_full -&gt; Patchwork_18993_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18993_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_18993_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
18993_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-rte:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-rte.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_189=
93/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-rte.html">DMESG-WARN</a><=
/li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-snapshot:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-glk2/igt@syncobj_timeline@wait-all-snapshot.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1899=
3/shard-glk4/igt@syncobj_timeline@wait-all-snapshot.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9395_full and Patchwork_18=
993_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 200 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18993_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-normal-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-glk4/igt@gem_exec_whisper@basic-normal-all.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993=
/shard-glk3/igt@gem_exec_whisper@basic-normal-all.html">DMESG-WARN</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>=
)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-skl1/igt@i915_pm_rpm@system-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-=
skl9/igt@i915_pm_rpm@system-suspend.html">INCOMPLETE</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/151">i915#151</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18993/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5=
4">i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18993/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atom=
ic.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/72">i915#72</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-kbl2/igt@kms_cursor_legacy@short-flip-before-cursor-atom=
ic-transitions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18993/shard-kbl2/igt@kms_cursor_legacy@short-flip-be=
fore-cursor-atomic-transitions.html">DMESG-WARN</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-glk1/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18993/shard-glk7/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-hsw2/igt@kms_flip@2x-flip-vs-dpms@ab-vga1-hdmi-a1.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18993/shard-hsw6/igt@kms_flip@2x-flip-vs-dpms@ab-vga1-hdmi-a1.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982"=
>i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18993/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2598">i915#25=
98</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18993/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#212=
2</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb=
-msflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_18993/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-p=
rimscrn-indfb-msflip-blt.html">DMESG-WARN</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-i=
ndfb-fullscreen.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18993/shard-skl1/igt@kms_frontbuffer_tracking@psr-1=
p-primscrn-spr-indfb-fullscreen.html">DMESG-WARN</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +6 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-skl4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18993/shard-skl7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-b=
lt.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/49">i915#49</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard=
-skl1/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18993/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">F=
AIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145">=
fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/265">i915#265</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/sha=
rd-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-skl2/igt@perf@blocking.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-skl10/igt@per=
f@blocking.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1542">i915#1542</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-skl7/igt@sysfs_heartbeat_interval@mixed@vecs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
993/shard-skl4/igt@sysfs_heartbeat_interval@mixed@vecs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1731">i915#1731</a>=
)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-glk8/igt@gem_exec_whisper@basic-contexts-forked.html">DM=
ESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/11=
8">i915#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/95">i915#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_18993/shard-glk6/igt@gem_exec_whisper@basic-contexts-forked.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-skl3/igt@gem_softpin@noreloc-s3.html">INCOMPLETE</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#240=
5</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18993/shard-skl8/igt@gem_softpin@noreloc-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-skl8/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#14=
36</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i9=
15#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18993/shard-skl1/igt@gen9_exec_parse@allowed-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-skl4/igt@i915_module_load@reload.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_189=
93/shard-skl4/igt@i915_module_load@reload.html">PASS</a> +1 similar issue</=
li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54"=
>i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18993/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html=
">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-glk6/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_18993/shard-glk1/igt@kms_cursor_edge_walk@pipe-b-256x256=
-left-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptibl=
e@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_18993/shard-glk7/igt@kms_flip@2x-flip-vs=
-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-kbl4/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html">DM=
ESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/19=
82">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_18993/shard-kbl7/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i=
915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18993/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-badstride:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-badstride.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_18993/shard-iclb4/igt@kms_frontbuffer_tracking@fbc-badstride.h=
tml">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8993/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> +2 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip-pipe-c:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-tglb1/igt@kms_universal_plane@disable-primary-vs-flip-pi=
pe-c.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_18993/shard-tglb8/igt@kms_universal_plane@disable-=
primary-vs-flip-pipe-c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@rcs0:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-snb6/igt@prime_vgem@sync@rcs0.html">INCOMPLETE</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-=
snb5/igt@prime_vgem@sync@rcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-snb6/igt@gem_exec_schedule@semaphore-power.html">SKIP</a=
> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10=
9271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295"=
>i915#2295</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18993/shard-snb4/igt@gem_exec_schedule@semaphore-power.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#=
109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9395/shard-tglb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
993/shard-tglb5/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</=
a>)</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9395/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
993/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-skl4/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
982">i915#1982</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2295">i915#2295</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_18993/shard-skl8/igt@kms_cursor_legacy@cursor-vs-flip-at=
omic.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9395/shard-glk4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.=
html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
08145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_18993/shard-glk3/igt@kms_plane_alpha_blend@pipe-c=
-constant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/265">i915#265</a>)</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9395/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.=
html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
08145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_18993/shard-skl9/igt@kms_plane_alpha_blend@pipe-c=
-constant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/265">i915#265</a>)</p>
</li>
<li>
<p>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9395/shard-hsw4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2295">i915#2295</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_18993/shard-hsw2/igt@kms_plane_alpha_blend@pipe-c-con=
stant-alpha-max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9395/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.=
html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
08145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_18993/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c=
-constant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/265">i915#265</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-tglb6/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend=
.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1436">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1602">i915#1602</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/1887">i915#1887</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2411">i915#2411</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/456">i915#456</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-tglb3/igt@kms_vblank=
@pipe-a-ts-continuation-dpms-suspend.html">DMESG-WARN</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1887">i915#1887</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#241=
1</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-tglb7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2411">i915#2411</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_18993/shard-tglb7/igt@kms_vblank@pipe-a-ts-continuati=
on-suspend.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2411">i915#2411</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9395/shard-kbl7/igt@runner@aborted.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-kbl7/ig=
t@runner@aborted.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2722">i915#2722</a>)</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-iclb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-iclb5/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/483">i915#483</a>) -&gt; (<a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_18993/shard-iclb1/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1899=
3/shard-iclb4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>)</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-apl7/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2295">i915#2295</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_18993/shard-apl2/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard=
-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_18993/shard-apl8/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/sh=
ard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_18993/shard-apl4/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993=
/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl1/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
993/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl3/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18993/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl2/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18993/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl8/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18993/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl6/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_18993/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl8/igt@runne=
r@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_18993/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl6/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18993/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl6/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_18993/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-apl3/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_18993/shard-apl2/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-ap=
l7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/1610">i915#1610</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-glk8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-glk4/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9395/shard-glk7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a> / <a =
href=3D"https://bugzilla.kernel.org/show_bug.cgi?id=3D202321">k.org#202321<=
/a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8993/shard-glk3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/shard-glk5/igt@runner@aborted.h=
tml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2722">i915#2722</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/483">i915#483</a> / <a href=3D"https://bugzilla.kernel.or=
g/show_bug.cgi?id=3D202321">k.org#202321</a>)</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-tglb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-tglb6/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1602">i915#1602</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2295">i915#2295</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_18993/shard-tglb5/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18993/sh=
ard-tglb3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9395/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9395/shard-skl8/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1436">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2295">i915#2295</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18993/shard-skl8/igt@runner@aborted.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722">i91=
5#2722</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9395 -&gt; Patchwork_18993</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9395: 83729b962cacdce11fe05033ad2493da61536ebf @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5871: ff519fd84618558c550bec07e7cc4b2c682f86ff @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18993: 1702176c40ec84b4ae74690055dcfb850ee47256 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============7224601495150617680==--

--===============1498564467==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1498564467==--
