Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E3D2CA84F
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 17:32:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5985E6E830;
	Tue,  1 Dec 2020 16:31:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 56CAC893B8;
 Tue,  1 Dec 2020 16:31:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4C449A7525;
 Tue,  1 Dec 2020 16:31:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 01 Dec 2020 16:31:57 -0000
Message-ID: <160684031727.6987.2445743161036818667@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201201073356.18968-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201201073356.18968-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/gt=3A_Replace_direct_?=
 =?utf-8?q?submit_with_direct_call_to_tasklet?=
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
Content-Type: multipart/mixed; boundary="===============0586280330=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0586280330==
Content-Type: multipart/alternative;
 boundary="===============7552815288697312947=="

--===============7552815288697312947==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/2] drm/i915/gt: Replace direct submit with direct call to tasklet
URL   : https://patchwork.freedesktop.org/series/84433/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9411_full -> Patchwork_19021_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19021_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19021_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19021_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_balancer@full:
    - shard-iclb:         [PASS][1] -> [DMESG-FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-iclb7/igt@gem_exec_balancer@full.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-iclb1/igt@gem_exec_balancer@full.html

  * igt@gem_exec_balancer@full-late:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-tglb2/igt@gem_exec_balancer@full-late.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-tglb2/igt@gem_exec_balancer@full-late.html

  * igt@gem_exec_balancer@full-late-pulse:
    - shard-tglb:         [PASS][5] -> [DMESG-FAIL][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-tglb7/igt@gem_exec_balancer@full-late-pulse.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-tglb3/igt@gem_exec_balancer@full-late-pulse.html

  * igt@gem_exec_balancer@hog:
    - shard-kbl:          [PASS][7] -> [INCOMPLETE][8] +4 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-kbl3/igt@gem_exec_balancer@hog.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-kbl3/igt@gem_exec_balancer@hog.html

  * igt@gem_exec_parallel@fds@bcs0:
    - shard-iclb:         [PASS][9] -> [INCOMPLETE][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-iclb2/igt@gem_exec_parallel@fds@bcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-iclb1/igt@gem_exec_parallel@fds@bcs0.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9411_full and Patchwork_19021_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 175 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19021_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@full:
    - shard-kbl:          [PASS][11] -> [INCOMPLETE][12] ([i915#794])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-kbl1/igt@gem_exec_balancer@full.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-kbl1/igt@gem_exec_balancer@full.html

  * igt@gem_exec_gttfill@basic:
    - shard-glk:          [PASS][13] -> [DMESG-WARN][14] ([i915#118] / [i915#95]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-glk8/igt@gem_exec_gttfill@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-glk5/igt@gem_exec_gttfill@basic.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-apl1/igt@i915_pm_rpm@basic-pci-d3-state.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-apl7/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@active:
    - shard-glk:          [PASS][17] -> [DMESG-FAIL][18] ([i915#2291] / [i915#666])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-glk5/igt@i915_selftest@live@active.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-glk8/igt@i915_selftest@live@active.html

  * igt@i915_selftest@live@execlists:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#1037] / [i915#2268])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-tglb3/igt@i915_selftest@live@execlists.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-tglb5/igt@i915_selftest@live@execlists.html
    - shard-kbl:          [PASS][21] -> [INCOMPLETE][22] ([i915#1037] / [i915#794])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-kbl6/igt@i915_selftest@live@execlists.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-kbl4/igt@i915_selftest@live@execlists.html

  * igt@kms_big_fb@linear-8bpp-rotate-180:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +7 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-skl4/igt@kms_big_fb@linear-8bpp-rotate-180.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-skl8/igt@kms_big_fb@linear-8bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#54]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding:
    - shard-apl:          [PASS][27] -> [FAIL][28] ([i915#54])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:
    - shard-glk:          [PASS][31] -> [DMESG-WARN][32] ([i915#1982]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-glk5/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-glk8/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html
    - shard-iclb:         [PASS][33] -> [DMESG-WARN][34] ([i915#1982])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-iclb4/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-iclb6/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-tglb:         [PASS][35] -> [FAIL][36] ([i915#2598])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#2122])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#1188])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109441]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_cpu.html

  
#### Possible fixes ####

  * igt@gem_sync@basic-store-all:
    - shard-glk:          [DMESG-WARN][43] ([i915#118] / [i915#262] / [i915#95]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-glk4/igt@gem_sync@basic-store-all.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-glk7/igt@gem_sync@basic-store-all.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [DMESG-WARN][45] ([i915#1982]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-tglb5/igt@i915_module_load@reload.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-tglb8/igt@i915_module_load@reload.html

  * {igt@kms_async_flips@alternate-sync-async-flip}:
    - shard-skl:          [FAIL][47] ([i915#2521]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen:
    - shard-skl:          [FAIL][49] ([i915#54]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][51] ([i915#2405] / [i915#300]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-tglb:         [FAIL][53] ([i915#2346]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:
    - shard-apl:          [DMESG-WARN][55] ([i915#1982]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-apl2/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-apl6/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:
    - shard-glk:          [FAIL][57] ([i915#79]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html

  * {igt@kms_flip_tiling@flip-to-x-tiled@hdmi-a-1-pipe-a}:
    - shard-glk:          [DMESG-WARN][59] ([i915#1982]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-glk8/igt@kms_flip_tiling@flip-to-x-tiled@hdmi-a-1-pipe-a.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-glk7/igt@kms_flip_tiling@flip-to-x-tiled@hdmi-a-1-pipe-a.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
    - shard-skl:          [DMESG-WARN][61] ([i915#1982]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-skl4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-skl8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][63] ([i915#1188]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][65] ([fdo#108145] / [i915#265]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant:
    - shard-iclb:         [FAIL][67] -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-iclb6/igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-iclb4/igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant.html

  * igt@kms_plane_cursor@pipe-b-viewport-size-128:
    - shard-iclb:         [FAIL][69] ([i915#2657]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-iclb6/igt@kms_plane_cursor@pipe-b-viewport-size-128.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-iclb4/igt@kms_plane_cursor@pipe-b-viewport-size-128.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][71] ([fdo#109441]) -> [PASS][72] +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][73] ([i915#2681] / [i915#2684]) -> [WARN][74] ([i915#2684])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [DMESG-FAIL][75] ([i915#1982]) -> [DMESG-WARN][76] ([i915#1982])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
    - shard-skl:          [FAIL][77] ([i915#2346]) -> [DMESG-FAIL][78] ([i915#1982])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][79] ([i915#295]) -> [INCOMPLETE][80] ([i915#155] / [i915#2295])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@runner@aborted:
    - shard-iclb:         ([FAIL][81], [FAIL][82], [FAIL][83]) ([i915#1814] / [i915#2295] / [i915#2426] / [i915#2722]) -> ([FAIL][84], [FAIL][85], [FAIL][86]) ([i915#1814] / [i915#2295] / [i915#2426] / [i915#2722] / [i915#483])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-iclb7/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-iclb4/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-iclb3/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-iclb4/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-iclb6/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-iclb8/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][87], [FAIL][88]) ([i915#2295] / [i915#2426] / [i915#2722]) -> ([FAIL][89], [FAIL][90]) ([i915#1764] / [i915#2295] / [i915#2426] / [i915#2722])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-tglb7/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-tglb8/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-tglb3/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-tglb3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1764]: https://gitlab.freedesktop.org/drm/intel/issues/1764
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2268]: https://gitlab.freedesktop.org/drm/intel/issues/2268
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2657]: https://gitlab.freedesktop.org/drm/intel/issues/2657
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9411 -> Patchwork_19021

  CI-20190529: 20190529
  CI_DRM_9411: fab5bb55dda8498ba4a672b5d38791341e4852f8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5877: c36f7973d1ee7886ec65fa16c7b1fd8dc5a33caa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19021: 2a7cad66b87206595372e02a98d3fbbbdc86853c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/index.html

--===============7552815288697312947==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/2] drm/i915/gt: R=
eplace direct submit with direct call to tasklet</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/84433/">https://patchwork.freedesktop.org/series/84433/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19021/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19021/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9411_full -&gt; Patchwork_19021_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19021_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19021_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19021_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@full:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-iclb7/igt@gem_exec_balancer@full.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-icl=
b1/igt@gem_exec_balancer@full.html">DMESG-FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@full-late:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-tglb2/igt@gem_exec_balancer@full-late.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shar=
d-tglb2/igt@gem_exec_balancer@full-late.html">INCOMPLETE</a> +3 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@full-late-pulse:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-tglb7/igt@gem_exec_balancer@full-late-pulse.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1902=
1/shard-tglb3/igt@gem_exec_balancer@full-late-pulse.html">DMESG-FAIL</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hog:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-kbl3/igt@gem_exec_balancer@hog.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-kbl3/=
igt@gem_exec_balancer@hog.html">INCOMPLETE</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@fds@bcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-iclb2/igt@gem_exec_parallel@fds@bcs0.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard=
-iclb1/igt@gem_exec_parallel@fds@bcs0.html">INCOMPLETE</a> +1 similar issue=
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9411_full and Patchwork_19=
021_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 175 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19021_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@full:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-kbl1/igt@gem_exec_balancer@full.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-kbl1=
/igt@gem_exec_balancer@full.html">INCOMPLETE</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/794">i915#794</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-glk8/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-glk5=
/igt@gem_exec_gttfill@basic.html">DMESG-WARN</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-apl1/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/sh=
ard-apl7/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-glk5/igt@i915_selftest@live@active.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-g=
lk8/igt@i915_selftest@live@active.html">DMESG-FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/666">i915#666</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9411/shard-tglb3/igt@i915_selftest@live@execlists.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shar=
d-tglb5/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/2268">i915#2268</a>)</=
p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9411/shard-kbl6/igt@i915_selftest@live@execlists.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard=
-kbl4/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-180:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-skl4/igt@kms_big_fb@linear-8bpp-rotate-180.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021=
/shard-skl8/igt@kms_big_fb@linear-8bpp-rotate-180.html">DMESG-WARN</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>=
) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19021/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i=
915#54</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19021/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54"=
>i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
021/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9411/shard-glk5/igt@kms_cursor_legacy@short-flip-after-cursor-atomic=
-transitions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19021/shard-glk8/igt@kms_cursor_legacy@short-flip-afte=
r-cursor-atomic-transitions.html">DMESG-WARN</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9411/shard-iclb4/igt@kms_cursor_legacy@short-flip-after-cursor-atomi=
c-transitions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19021/shard-iclb6/igt@kms_cursor_legacy@short-flip-af=
ter-cursor-atomic-transitions.html">DMESG-WARN</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19021/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank-interr=
uptible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2598">i915#2598</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19021/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interrup=
tible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-=
skl6/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/sha=
rd-iclb1/igt@kms_psr@psr2_sprite_mmap_cpu.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar=
 issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_sync@basic-store-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-glk4/igt@gem_sync@basic-store-all.html">DMESG-WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/262">i915#26=
2</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i915=
#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19021/shard-glk7/igt@gem_sync@basic-store-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-tglb5/igt@i915_module_load@reload.html">DMESG-WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
021/shard-tglb8/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@alternate-sync-async-flip}:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2521"=
>i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19021/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5=
4">i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19021/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen=
.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">INCO=
MPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2405=
">i915#2405</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/300">i915#300</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19021/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346">=
i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19021/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-apl2/igt@kms_cursor_legacy@short-flip-after-cursor-atomi=
c-transitions.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_19021/shard-apl6/igt@kms_cursor_legacy@sh=
ort-flip-after-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i=
915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19021/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html">P=
ASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@kms_flip_tiling@flip-to-x-tiled@hdmi-a-1-pipe-a}:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-glk8/igt@kms_flip_tiling@flip-to-x-tiled@hdmi-a-1-pipe-a=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19021/shard-glk7/igt@kms_flip_tiling@flip-to-x-tiled@h=
dmi-a-1-pipe-a.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-skl4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mma=
p-wc.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19021/shard-skl8/igt@kms_frontbuffer_tracking@psr-=
rgb101010-draw-mmap-wc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/sha=
rd-skl1/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19021/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-=
7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-iclb6/igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premu=
lt-vs-constant.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19021/shard-iclb4/igt@kms_plane_alpha_blend@pipe-c-c=
overage-vs-premult-vs-constant.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-viewport-size-128:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-iclb6/igt@kms_plane_cursor@pipe-b-viewport-size-128.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2657=
">i915#2657</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19021/shard-iclb4/igt@kms_plane_cursor@pipe-b-viewport-size-128.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#1094=
41</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19021/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> +2 sim=
ilar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#268=
1</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i9=
15#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19021/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19021/shard-skl10/igt@kms_cursor_legacy@flip-vs-cu=
rsor-atomic-transitions.html">DMESG-WARN</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legac=
y.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19021/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-busy-=
crc-legacy.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/295">i915#295</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19021/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend=
.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/155">i915#155</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2295">i915#2295</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-iclb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-iclb4/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9411/shard-iclb3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722=
</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19021/shard-iclb4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_19021/shard-iclb6/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19021/shard-iclb8/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#272=
2</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i91=
5#483</a>)</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-tglb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-tglb8/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2426">i915#2426</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2722">i915#2722</a>) -&gt; (<a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_19021/shard-tglb3/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
021/shard-tglb3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1764">i915#1764</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)<=
/p>
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
<li>Linux: CI_DRM_9411 -&gt; Patchwork_19021</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9411: fab5bb55dda8498ba4a672b5d38791341e4852f8 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5877: c36f7973d1ee7886ec65fa16c7b1fd8dc5a33caa @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19021: 2a7cad66b87206595372e02a98d3fbbbdc86853c @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============7552815288697312947==--

--===============0586280330==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0586280330==--
