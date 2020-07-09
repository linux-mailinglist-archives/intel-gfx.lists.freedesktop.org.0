Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E495821965B
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 04:53:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2E666E989;
	Thu,  9 Jul 2020 02:53:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 61C276E989;
 Thu,  9 Jul 2020 02:53:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5BB62A00E6;
 Thu,  9 Jul 2020 02:53:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Thu, 09 Jul 2020 02:53:20 -0000
Message-ID: <159426320037.31093.8653242824353776675@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200708205512.21625-1-jose.souza@intel.com>
In-Reply-To: <20200708205512.21625-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv4=2C1/5=5D_drm/i915/display=3A_Replace_dr?=
 =?utf-8?q?m=5Fi915=5Fprivate_in_voltage_swing_functions_by_intel=5Fencode?=
 =?utf-8?q?r?=
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

Series: series starting with [v4,1/5] drm/i915/display: Replace drm_i915_private in voltage swing functions by intel_encoder
URL   : https://patchwork.freedesktop.org/series/79265/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8717_full -> Patchwork_18115_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18115_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18115_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18115_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_atomic_transition@1x-modeset-transitions-nonblocking-fencing:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-tglb5/igt@kms_atomic_transition@1x-modeset-transitions-nonblocking-fencing.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-tglb8/igt@kms_atomic_transition@1x-modeset-transitions-nonblocking-fencing.html

  
Known issues
------------

  Here are the changes found in Patchwork_18115_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@fences-dpms:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#1982]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl2/igt@i915_pm_rpm@fences-dpms.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-apl6/igt@i915_pm_rpm@fences-dpms.html

  * igt@kms_big_fb@linear-16bpp-rotate-0:
    - shard-kbl:          [PASS][5] -> [DMESG-FAIL][6] ([i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-kbl1/igt@kms_big_fb@linear-16bpp-rotate-0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-kbl4/igt@kms_big_fb@linear-16bpp-rotate-0.html
    - shard-apl:          [PASS][7] -> [DMESG-FAIL][8] ([i915#1635] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl7/igt@kms_big_fb@linear-16bpp-rotate-0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-apl4/igt@kms_big_fb@linear-16bpp-rotate-0.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-glk:          [PASS][9] -> [DMESG-FAIL][10] ([i915#118] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-glk3/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#93] / [i915#95]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([IGT#5])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1635] / [i915#95]) +13 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl3/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-apl7/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@pipe-a-forked-move:
    - shard-glk:          [PASS][17] -> [DMESG-WARN][18] ([i915#118] / [i915#95]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-glk3/igt@kms_cursor_legacy@pipe-a-forked-move.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-glk8/igt@kms_cursor_legacy@pipe-a-forked-move.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +6 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +5 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
    - shard-tglb:         [PASS][23] -> [DMESG-WARN][24] ([i915#1982])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-tglb8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-tglb8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html

  * igt@kms_plane_scaling@pipe-c-scaler-with-clipping-clamping:
    - shard-iclb:         [PASS][25] -> [DMESG-WARN][26] ([i915#1982])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-iclb4/igt@kms_plane_scaling@pipe-c-scaler-with-clipping-clamping.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-iclb3/igt@kms_plane_scaling@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109642] / [fdo#111068])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-iclb5/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-iclb5/igt@kms_psr@psr2_suspend.html

  * igt@perf@polling-parameterized:
    - shard-iclb:         [PASS][31] -> [FAIL][32] ([i915#1542])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-iclb6/igt@perf@polling-parameterized.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-iclb7/igt@perf@polling-parameterized.html

  * igt@perf_pmu@module-unload:
    - shard-tglb:         [PASS][33] -> [DMESG-WARN][34] ([i915#402])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-tglb2/igt@perf_pmu@module-unload.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-tglb3/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [PASS][35] -> [FAIL][36] ([i915#1820])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-kbl4/igt@perf_pmu@semaphore-busy@rcs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-kbl1/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Possible fixes ####

  * igt@gem_exec_whisper@basic-normal:
    - shard-glk:          [DMESG-WARN][37] ([i915#118] / [i915#95]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-glk9/igt@gem_exec_whisper@basic-normal.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-glk8/igt@gem_exec_whisper@basic-normal.html

  * igt@gem_mmap_gtt@big-bo:
    - shard-skl:          [DMESG-WARN][39] ([i915#1982]) -> [PASS][40] +5 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl8/igt@gem_mmap_gtt@big-bo.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-skl4/igt@gem_mmap_gtt@big-bo.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][41] ([i915#1436] / [i915#716]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl6/igt@gen9_exec_parse@allowed-all.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-apl4/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_module_load@reload:
    - shard-apl:          [DMESG-WARN][43] ([i915#1982]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl1/igt@i915_module_load@reload.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-apl4/igt@i915_module_load@reload.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [INCOMPLETE][45] ([i915#198] / [i915#2110]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl5/igt@i915_selftest@mock@requests.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-skl9/igt@i915_selftest@mock@requests.html

  * igt@kms_addfb_basic@unused-pitches:
    - shard-apl:          [DMESG-WARN][47] ([i915#1635] / [i915#95]) -> [PASS][48] +15 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl4/igt@kms_addfb_basic@unused-pitches.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-apl8/igt@kms_addfb_basic@unused-pitches.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][49] ([i915#118] / [i915#95]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-glk9/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_color@pipe-b-legacy-gamma:
    - shard-skl:          [FAIL][51] ([i915#71]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl4/igt@kms_color@pipe-b-legacy-gamma.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-skl9/igt@kms_color@pipe-b-legacy-gamma.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - shard-snb:          [TIMEOUT][53] ([i915#1958] / [i915#2119]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-snb4/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [DMESG-WARN][57] ([i915#1982]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][59] ([fdo#108145] / [i915#265]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][61] ([fdo#109441]) -> [PASS][62] +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-iclb4/igt@kms_psr@psr2_primary_page_flip.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_pwrite_crc:
    - shard-skl:          [FAIL][63] ([i915#150]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl2/igt@kms_pwrite_crc.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-skl1/igt@kms_pwrite_crc.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [TIMEOUT][65] ([i915#1958] / [i915#2119]) -> [FAIL][66] ([i915#1930])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-snb4/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_vm_create@execbuf:
    - shard-snb:          [TIMEOUT][67] ([i915#1958] / [i915#2119]) -> [SKIP][68] ([fdo#109271]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-snb6/igt@gem_vm_create@execbuf.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-snb4/igt@gem_vm_create@execbuf.html

  * igt@kms_chamelium@dp-crc-fast:
    - shard-apl:          [SKIP][69] ([fdo#109271] / [fdo#111827] / [i915#1635]) -> [SKIP][70] ([fdo#109271] / [fdo#111827])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl4/igt@kms_chamelium@dp-crc-fast.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-apl8/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
    - shard-apl:          [SKIP][71] ([fdo#109271]) -> [SKIP][72] ([fdo#109271] / [i915#1635]) +9 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl2/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-apl6/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html

  * igt@kms_plane_alpha_blend@pipe-d-coverage-vs-premult-vs-constant:
    - shard-apl:          [SKIP][73] ([fdo#109271] / [i915#1635]) -> [SKIP][74] ([fdo#109271]) +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl7/igt@kms_plane_alpha_blend@pipe-d-coverage-vs-premult-vs-constant.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-apl2/igt@kms_plane_alpha_blend@pipe-d-coverage-vs-premult-vs-constant.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][75], [FAIL][76], [FAIL][77]) ([fdo#109271] / [i915#1610] / [i915#1635] / [i915#2110] / [i915#716]) -> [FAIL][78] ([i915#1635] / [i915#2110])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl6/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl2/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl6/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/shard-apl6/igt@runner@aborted.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#150]: https://gitlab.freedesktop.org/drm/intel/issues/150
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#71]: https://gitlab.freedesktop.org/drm/intel/issues/71
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8717 -> Patchwork_18115

  CI-20190529: 20190529
  CI_DRM_8717: 6e5ac4c72af4e86138f04cc2dd089b069bad873f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5728: 6988eebf78e9ce9746b8c2b7d21cb4174d6623a9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18115: 79e12a5e0e106e784d61a3d6f6d20231dfbce95a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18115/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
