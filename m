Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9F32191B6
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 22:43:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BD486E129;
	Wed,  8 Jul 2020 20:43:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 065D06E117;
 Wed,  8 Jul 2020 20:43:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2B942A0118;
 Wed,  8 Jul 2020 20:43:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 08 Jul 2020 20:43:23 -0000
Message-ID: <159424100317.3838.981604054976155987@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200708150527.1302305-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200708150527.1302305-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/vgem=3A_Replace_opencoded_version_of_drm=5Fgem=5Fdumb=5Fmap=5F?=
 =?utf-8?b?b2Zmc2V0KCkgKHJldjIp?=
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

Series: drm/vgem: Replace opencoded version of drm_gem_dumb_map_offset() (rev2)
URL   : https://patchwork.freedesktop.org/series/79255/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8715_full -> Patchwork_18112_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18112_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18112_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18112_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_vblank@pipe-a-wait-busy:
    - shard-hsw:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-hsw7/igt@kms_vblank@pipe-a-wait-busy.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-hsw1/igt@kms_vblank@pipe-a-wait-busy.html

  
Known issues
------------

  Here are the changes found in Patchwork_18112_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_workarounds@suspend-resume:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#69])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl1/igt@gem_workarounds@suspend-resume.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-skl9/igt@gem_workarounds@suspend-resume.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [PASS][5] -> [DMESG-WARN][6] ([i915#402])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-tglb2/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-tglb2/igt@i915_module_load@reload.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-hsw:          [PASS][7] -> [WARN][8] ([i915#1519])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-hsw7/igt@i915_pm_rc6_residency@rc6-fence.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-hsw1/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_big_fb@linear-16bpp-rotate-0:
    - shard-kbl:          [PASS][9] -> [DMESG-FAIL][10] ([i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl3/igt@kms_big_fb@linear-16bpp-rotate-0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-kbl4/igt@kms_big_fb@linear-16bpp-rotate-0.html
    - shard-apl:          [PASS][11] -> [DMESG-FAIL][12] ([i915#1635] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl7/igt@kms_big_fb@linear-16bpp-rotate-0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-apl8/igt@kms_big_fb@linear-16bpp-rotate-0.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982]) +5 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl6/igt@kms_color@pipe-a-ctm-0-5.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-skl8/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#93] / [i915#95]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([IGT#5])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#1635] / [i915#95]) +20 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl3/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-apl6/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#2122])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][25] -> [DMESG-WARN][26] ([i915#1982])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:
    - shard-tglb:         [PASS][27] -> [SKIP][28] ([i915#668]) +5 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-tglb2/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-tglb1/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145] / [i915#265])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_scaling@pipe-c-scaler-with-clipping-clamping:
    - shard-iclb:         [PASS][31] -> [DMESG-WARN][32] ([i915#1982])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-iclb3/igt@kms_plane_scaling@pipe-c-scaler-with-clipping-clamping.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-iclb3/igt@kms_plane_scaling@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][33] -> [FAIL][34] ([i915#173])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-iclb5/igt@kms_psr@no_drrs.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-iclb8/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [PASS][37] -> [FAIL][38] ([i915#1542])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-iclb7/igt@perf@blocking-parameterized.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-iclb1/igt@perf@blocking-parameterized.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@bonded-early:
    - shard-iclb:         [FAIL][39] ([i915#926]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-iclb1/igt@gem_exec_balancer@bonded-early.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-iclb5/igt@gem_exec_balancer@bonded-early.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [FAIL][41] ([i915#1930]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-glk8/igt@gem_exec_reloc@basic-concurrent0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-glk2/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_whisper@basic-normal:
    - shard-glk:          [DMESG-WARN][43] ([i915#118] / [i915#95]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-glk9/igt@gem_exec_whisper@basic-normal.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-glk1/igt@gem_exec_whisper@basic-normal.html

  * igt@gem_mmap_gtt@big-bo:
    - shard-skl:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46] +4 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl8/igt@gem_mmap_gtt@big-bo.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-skl6/igt@gem_mmap_gtt@big-bo.html

  * igt@gem_render_copy@y-tiled-ccs-to-x-tiled:
    - shard-kbl:          [DMESG-WARN][47] ([i915#93] / [i915#95]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl1/igt@gem_render_copy@y-tiled-ccs-to-x-tiled.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-kbl6/igt@gem_render_copy@y-tiled-ccs-to-x-tiled.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglb:         [DMESG-WARN][49] ([i915#402]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-tglb5/igt@i915_module_load@reload-with-fault-injection.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-tglb6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [INCOMPLETE][51] ([i915#636] / [i915#69]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl3/igt@i915_suspend@forcewake.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-skl1/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen:
    - shard-apl:          [DMESG-WARN][53] ([i915#1635] / [i915#95]) -> [PASS][54] +18 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
    - shard-skl:          [INCOMPLETE][55] ([i915#198]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-kbl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +5 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-skl:          [FAIL][59] ([i915#699]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl9/igt@kms_flip_tiling@flip-changes-tiling.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-skl8/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:
    - shard-tglb:         [DMESG-WARN][61] ([i915#1982]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][63] ([i915#1188]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl7/igt@kms_hdr@bpc-switch.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-skl7/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][65] ([fdo#108145] / [i915#265]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_pwrite_crc:
    - shard-skl:          [FAIL][67] ([i915#150]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl5/igt@kms_pwrite_crc.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-skl5/igt@kms_pwrite_crc.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [FAIL][69] ([i915#1820]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl3/igt@perf_pmu@semaphore-busy@rcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-kbl7/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Warnings ####

  * igt@kms_chamelium@dp-crc-fast:
    - shard-apl:          [SKIP][71] ([fdo#109271] / [fdo#111827]) -> [SKIP][72] ([fdo#109271] / [fdo#111827] / [i915#1635])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl2/igt@kms_chamelium@dp-crc-fast.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-apl7/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-hpd-with-enabled-mode:
    - shard-apl:          [SKIP][73] ([fdo#109271] / [fdo#111827] / [i915#1635]) -> [SKIP][74] ([fdo#109271] / [fdo#111827])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl6/igt@kms_chamelium@dp-hpd-with-enabled-mode.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-apl2/igt@kms_chamelium@dp-hpd-with-enabled-mode.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-kbl:          [TIMEOUT][75] ([i915#1319] / [i915#1958] / [i915#2119]) -> [TIMEOUT][76] ([i915#1319] / [i915#2119])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl3/igt@kms_content_protection@atomic-dpms.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-kbl7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
    - shard-apl:          [SKIP][77] ([fdo#109271] / [i915#1635]) -> [SKIP][78] ([fdo#109271]) +4 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl6/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-apl3/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html

  * igt@kms_plane_cursor@pipe-d-viewport-size-128:
    - shard-apl:          [SKIP][79] ([fdo#109271]) -> [SKIP][80] ([fdo#109271] / [i915#1635]) +4 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl3/igt@kms_plane_cursor@pipe-d-viewport-size-128.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-apl6/igt@kms_plane_cursor@pipe-d-viewport-size-128.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][81], [FAIL][82], [FAIL][83]) ([i915#1610] / [i915#1635] / [i915#2110]) -> [FAIL][84] ([i915#1635] / [i915#2110])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl1/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl3/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl2/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/shard-apl3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#150]: https://gitlab.freedesktop.org/drm/intel/issues/150
  [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#926]: https://gitlab.freedesktop.org/drm/intel/issues/926
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8715 -> Patchwork_18112

  CI-20190529: 20190529
  CI_DRM_8715: 76c2d43437601608d75f61a9eb6cf3a7aae5e02b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5728: 6988eebf78e9ce9746b8c2b7d21cb4174d6623a9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18112: 0a11cb9ac30552bae1e56609fc92f3959df94520 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18112/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
