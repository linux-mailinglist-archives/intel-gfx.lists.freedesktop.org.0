Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 842DE2DB4F8
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Dec 2020 21:23:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6795289C69;
	Tue, 15 Dec 2020 20:23:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9B7D189C05;
 Tue, 15 Dec 2020 20:23:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 94CD6A882F;
 Tue, 15 Dec 2020 20:23:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Tue, 15 Dec 2020 20:23:15 -0000
Message-ID: <160806379557.24783.6652370789877729678@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201215135226.16776-1-anshuman.gupta@intel.com>
In-Reply-To: <20201215135226.16776-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/backlight=3A_RFC_cache_backlight_power_state?=
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
Content-Type: multipart/mixed; boundary="===============0724774885=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0724774885==
Content-Type: multipart/alternative;
 boundary="===============1278592089955634906=="

--===============1278592089955634906==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/backlight: RFC cache backlight power state
URL   : https://patchwork.freedesktop.org/series/84954/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9486_full -> Patchwork_19144_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19144_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19144_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19144_full:

### IGT changes ###

#### Possible regressions ####

  * igt@perf_pmu@enable-race@bcs0:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-tglb5/igt@perf_pmu@enable-race@bcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-tglb5/igt@perf_pmu@enable-race@bcs0.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@ext_framebuffer_multisample@turn-on-off 4:
    - pig-snb-2600:       NOTRUN -> [FAIL][3] +30 similar issues
   [3]: None

  
New tests
---------

  New tests have been introduced between CI_DRM_9486_full and Patchwork_19144_full:

### New Piglit tests (20) ###

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 1024 ds=z32f_s8:
    - Statuses : 1 fail(s)
    - Exec time: [5.80] s

  * spec@ext_packed_depth_stencil@depthstencil-render-miplevels 1024 d=s=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.46] s

  * spec@ext_packed_depth_stencil@depthstencil-render-miplevels 1024 d=z24_s8_s=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.54] s

  * spec@ext_packed_depth_stencil@depthstencil-render-miplevels 1024 ds=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.56] s

  * spec@ext_packed_depth_stencil@depthstencil-render-miplevels 1024 s=d=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.46] s

  * spec@ext_packed_depth_stencil@depthstencil-render-miplevels 1024 s=z24_s8_d=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.48] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture() 1d:
    - Statuses : 1 fail(s)
    - Exec time: [1.40] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture() 2darrayshadow:
    - Statuses : 1 fail(s)
    - Exec time: [1.51] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture() cubearrayshadow:
    - Statuses : 1 fail(s)
    - Exec time: [1.99] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture(bias) 1darrayshadow:
    - Statuses : 1 fail(s)
    - Exec time: [2.72] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureproj 1d:
    - Statuses : 1 fail(s)
    - Exec time: [1.34] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureproj 1d_projvec4:
    - Statuses : 1 fail(s)
    - Exec time: [1.35] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureproj 1dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [1.46] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureproj 2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.35] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureproj 2dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [1.48] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureproj(bias) 1d_projvec4:
    - Statuses : 1 fail(s)
    - Exec time: [2.53] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureproj(bias) 1dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [2.56] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureproj(bias) 2d:
    - Statuses : 1 fail(s)
    - Exec time: [2.53] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureproj(bias) 2dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [2.21] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureprojlod 1d:
    - Statuses : 1 fail(s)
    - Exec time: [2.63] s

  

Known issues
------------

  Here are the changes found in Patchwork_19144_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-queues-all:
    - shard-glk:          [PASS][4] -> [DMESG-WARN][5] ([i915#118] / [i915#95])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-glk4/igt@gem_exec_whisper@basic-queues-all.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-glk7/igt@gem_exec_whisper@basic-queues-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         NOTRUN -> [FAIL][6] ([i915#454])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-tglb7/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#2692])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-tglb3/igt@i915_pm_rc6_residency@rc6-idle.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-tglb2/igt@i915_pm_rc6_residency@rc6-idle.html
    - shard-iclb:         [PASS][9] -> [FAIL][10] ([i915#2680])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-tglb:         NOTRUN -> [SKIP][11] ([fdo#109506] / [i915#2411])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-tglb7/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][12] -> [FAIL][13] ([i915#2521])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_atomic_transition@3x-modeset-transitions-nonblocking:
    - shard-tglb:         NOTRUN -> [SKIP][14] ([fdo#112041])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-tglb7/igt@kms_atomic_transition@3x-modeset-transitions-nonblocking.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#165] / [i915#180] / [i915#78])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-kbl7/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-kbl2/igt@kms_atomic_transition@plane-toggle-modeset-transition.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-skl6/igt@kms_color@pipe-b-ctm-0-25.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-skl4/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
    - shard-apl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-apl7/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:
    - shard-skl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-skl2/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          NOTRUN -> [TIMEOUT][21] ([i915#1319])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-apl7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding:
    - shard-skl:          [PASS][22] -> [FAIL][23] ([i915#54]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][24] ([fdo#109279])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen.html

  * igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge:
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180] / [i915#78])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-kbl7/igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-kbl2/igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-tglb:         NOTRUN -> [SKIP][27] ([fdo#111825]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-tglb7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_dp_dsc@basic-dsc-enable-dp:
    - shard-tglb:         NOTRUN -> [SKIP][28] ([fdo#109349])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-tglb7/igt@kms_dp_dsc@basic-dsc-enable-dp.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-tglb:         [PASS][29] -> [FAIL][30] ([i915#2598])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-tglb2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#2122])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt:
    - shard-skl:          NOTRUN -> [SKIP][33] ([fdo#109271]) +25 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-skl2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-skl:          [PASS][34] -> [FAIL][35] ([i915#49])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt:
    - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271]) +16 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-apl7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#533])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-skl2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][38] -> [FAIL][39] ([fdo#108145] / [i915#265])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-skl:          NOTRUN -> [FAIL][40] ([fdo#108145] / [i915#265])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][41] ([i915#265])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
    - shard-tglb:         [PASS][42] -> [INCOMPLETE][43] ([i915#2473])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-tglb1/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-tglb5/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][44] -> [SKIP][45] ([fdo#109441]) +3 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-iclb3/igt@kms_psr@psr2_primary_page_flip.html

  * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
    - shard-tglb:         NOTRUN -> [SKIP][46] ([i915#2530])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-tglb7/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html

  * igt@prime_nv_test@nv_write_i915_gtt_mmap_read:
    - shard-tglb:         NOTRUN -> [SKIP][47] ([fdo#109291])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-tglb7/igt@prime_nv_test@nv_write_i915_gtt_mmap_read.html

  
#### Possible fixes ####

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-glk:          [FAIL][48] ([i915#2389]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-glk8/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-glk9/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * {igt@gem_exec_schedule@u-fairslice@vecs0}:
    - shard-apl:          [DMESG-WARN][50] ([i915#1610]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-apl4/igt@gem_exec_schedule@u-fairslice@vecs0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-apl7/igt@gem_exec_schedule@u-fairslice@vecs0.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][52] ([i915#454]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-iclb7/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_color@pipe-b-ctm-max:
    - shard-skl:          [DMESG-WARN][54] ([i915#1982]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-skl3/igt@kms_color@pipe-b-ctm-max.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-skl9/igt@kms_color@pipe-b-ctm-max.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-random:
    - shard-skl:          [FAIL][56] ([i915#54]) -> [PASS][57] +3 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][58] ([i915#2346] / [i915#533]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][60] ([i915#79]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][62] ([i915#1188]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][64] ([fdo#108145] / [i915#265]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-c-tiling-y:
    - shard-kbl:          [DMESG-WARN][66] ([i915#165] / [i915#180]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-kbl2/igt@kms_plane_lowres@pipe-c-tiling-y.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-kbl7/igt@kms_plane_lowres@pipe-c-tiling-y.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][68] ([fdo#109441]) -> [PASS][69] +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-iclb5/igt@kms_psr@psr2_no_drrs.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@perf@blocking:
    - shard-skl:          [FAIL][70] ([i915#1542]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-skl1/igt@perf@blocking.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-skl6/igt@perf@blocking.html

  * igt@prime_vgem@sync@vcs0:
    - shard-tglb:         [INCOMPLETE][72] ([i915#409]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-tglb6/igt@prime_vgem@sync@vcs0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-tglb7/igt@prime_vgem@sync@vcs0.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-iclb:         ([FAIL][74], [FAIL][75]) ([i915#1814] / [i915#2295] / [i915#2722] / [i915#2724]) -> ([FAIL][76], [FAIL][77]) ([i915#1814] / [i915#2295] / [i915#2722] / [i915#2724] / [i915#483])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-iclb3/igt@runner@aborted.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-iclb3/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-iclb1/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-iclb7/igt@runner@aborted.html
    - shard-apl:          ([FAIL][78], [FAIL][79], [FAIL][80]) ([i915#1610] / [i915#1814] / [i915#2295] / [i915#2426] / [i915#2722]) -> ([FAIL][81], [FAIL][82]) ([i915#1814] / [i915#2295] / [i915#2722])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-apl7/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-apl3/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-apl4/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-apl8/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-apl6/igt@runner@aborted.html
    - shard-glk:          ([FAIL][83], [FAIL][84]) ([i915#1814] / [i915#2295] / [i915#2722] / [i915#483] / [k.org#202321]) -> ([FAIL][85], [FAIL][86]) ([i915#1814] / [i915#2295] / [i915#2722] / [k.org#202321])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-glk1/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-glk7/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-glk6/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-glk1/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][87], [FAIL][88], [FAIL][89]) ([i915#1602] / [i915#2295] / [i915#2426] / [i915#2722] / [i915#409]) -> ([FAIL][90], [FAIL][91], [FAIL][92]) ([i915#1602] / [i915#1814] / [i915#2295] / [i915#2426] / [i915#2722])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-tglb6/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-tglb5/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-tglb8/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-tglb7/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-tglb5/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-tglb8/igt@runner@aborted.html
    - shard-skl:          ([FAIL][93], [FAIL][94]) ([i915#2295] / [i915#2722]) -> ([FAIL][95], [FAIL][96]) ([i915#2295] / [i915#2426] / [i915#2722])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-skl1/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-skl6/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-skl9/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-skl4/igt@runner@aborted.html

  

### Piglit changes ###

#### Issues hit ####

  * spec@glsl-1.30@execution@tex-miplevel-selection texturelod 1darray:
    - pig-snb-2600:       NOTRUN -> [FAIL][97] ([mesa#1812]) +7 similar issues
   [97]: None

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112041]: https://bugs.freedesktop.org/show_bug.cgi?id=112041
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2473]: https://gitlab.freedesktop.org/drm/intel/issues/2473
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2680]: https://gitlab.freedesktop.org/drm/intel/issues/2680
  [i915#2692]: https://gitlab.freedesktop.org/drm/intel/issues/2692
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321
  [mesa#1812]: https://gitlab.freedesktop.org/mesa/mesa/issues/1812


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_9486 -> Patchwork_19144

  CI-20190529: 20190529
  CI_DRM_9486: c834ebc78f2719e0b7f4f442b837daf5e29be100 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5901: 565d911f08df697fa211dbd1faefe2fd57066f71 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19144: a7044e521942e99794babf2e65c993158a04682c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/index.html

--===============1278592089955634906==
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
<tr><td><b>Series:</b></td><td>drm/i915/backlight: RFC cache backlight powe=
r state</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/84954/">https://patchwork.freedesktop.org/series/84954/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19144/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19144/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9486_full -&gt; Patchwork_19144_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19144_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19144_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19144_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@perf_pmu@enable-race@bcs0:<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-tglb5/igt@perf_pmu@enable-race@bcs0.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-=
tglb5/igt@perf_pmu@enable-race@bcs0.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>spec@ext_framebuffer_multisample@turn-on-off 4:<ul>
<li>pig-snb-2600:       NOTRUN -&gt; <a href=3D"None">FAIL</a> +30 similar =
issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9486_full and Patchwork_19=
144_full:</p>
<h3>New Piglit tests (20)</h3>
<ul>
<li>
<p>spec@arb_depth_buffer_float@depthstencil-render-miplevels 1024 ds=3Dz32f=
_s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [5.80] s</li>
</ul>
</li>
<li>
<p>spec@ext_packed_depth_stencil@depthstencil-render-miplevels 1024 d=3Ds=
=3Dz24_s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.46] s</li>
</ul>
</li>
<li>
<p>spec@ext_packed_depth_stencil@depthstencil-render-miplevels 1024 d=3Dz24=
_s8_s=3Dz24_s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.54] s</li>
</ul>
</li>
<li>
<p>spec@ext_packed_depth_stencil@depthstencil-render-miplevels 1024 ds=3Dz2=
4_s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.56] s</li>
</ul>
</li>
<li>
<p>spec@ext_packed_depth_stencil@depthstencil-render-miplevels 1024 s=3Dd=
=3Dz24_s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.46] s</li>
</ul>
</li>
<li>
<p>spec@ext_packed_depth_stencil@depthstencil-render-miplevels 1024 s=3Dz24=
_s8_d=3Dz24_s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.48] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection texture() 1d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [1.40] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection texture() 2darrayshadow:=
</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [1.51] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection texture() cubearrayshado=
w:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [1.99] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection texture(bias) 1darraysha=
dow:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [2.72] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection textureproj 1d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [1.34] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection textureproj 1d_projvec4:=
</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [1.35] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection textureproj 1dshadow:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [1.46] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection textureproj 2d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [1.35] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection textureproj 2dshadow:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [1.48] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection textureproj(bias) 1d_pro=
jvec4:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [2.53] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection textureproj(bias) 1dshad=
ow:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [2.56] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection textureproj(bias) 2d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [2.53] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection textureproj(bias) 2dshad=
ow:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [2.21] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection textureprojlod 1d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [2.63] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19144_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-queues-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-glk4/igt@gem_exec_whisper@basic-queues-all.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144=
/shard-glk7/igt@gem_exec_whisper@basic-queues-all.html">DMESG-WARN</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>=
)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19144/shard-tglb7/igt@i915_pm_dc@dc6-psr.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#=
454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9486/shard-tglb3/igt@i915_pm_rc6_residency@rc6-idle.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/sh=
ard-tglb2/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2692">i915#2692</a>)</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9486/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/sh=
ard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2680">i915#2680</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19144/shard-tglb7/igt@i915_pm_rpm@modeset-pc8-resid=
ency-stress.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109506">fdo#109506</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2411">i915#2411</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19144/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2521">i91=
5#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@3x-modeset-transitions-nonblocking:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19144/shard-tglb7/igt@kms_atomic_transition@3x-mode=
set-transitions-nonblocking.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D112041">fdo#112041</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-kbl7/igt@kms_atomic_transition@plane-toggle-modeset-tran=
sition.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19144/shard-kbl2/igt@kms_atomic_transition@plane-toggle-mode=
set-transition.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/165">i915#165</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/78">i915#78</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-25:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-skl6/igt@kms_color@pipe-b-ctm-0-25.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-s=
kl4/igt@kms_color@pipe-b-ctm-0-25.html">DMESG-WARN</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-green-to-red:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19144/shard-apl7/igt@kms_color_chamelium@pipe-d-ctm=
-green-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19144/shard-skl2/igt@kms_color_chamelium@pipe-inval=
id-degamma-lut-sizes.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19144/shard-apl7/igt@kms_content_protection@atomic-=
dpms.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19144/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54"=
>i915#54</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19144/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-=
512x512-onscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109279">fdo#109279</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-kbl7/igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19144/shard-kbl2/igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/78">i915#78</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19144/shard-tglb7/igt@kms_cursor_legacy@cursorb-vs-=
flipb-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111825">fdo#111825</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-dp:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19144/shard-tglb7/igt@kms_dp_dsc@basic-dsc-enable-d=
p.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109349">fdo#109349</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19144/shard-tglb2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2598">i915#25=
98</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible@a-ed=
p1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19144/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19144/shard-skl2/igt@kms_frontbuffer_tracking@fbc-2=
p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-sh=
rfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19144/shard-skl1/igt@kms_frontbuffer_tracking@psr=
-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/49">i915#49</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19144/shard-apl7/igt@kms_frontbuffer_tracking@psr-2=
p-primscrn-pri-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19144/shard-skl2/igt@kms_pipe_crc_basic@compare-crc=
-sanitycheck-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19144/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-m=
in.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19144/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19144/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-b-tiling-y:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-tglb1/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19144/shard-tglb5/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html">I=
NCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
473">i915#2473</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/s=
hard-iclb3/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +3 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19144/shard-tglb7/igt@nouveau_crc@pipe-b-ctx-flip-s=
kip-current-frame.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@nv_write_i915_gtt_mmap_read:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19144/shard-tglb7/igt@prime_nv_test@nv_write_i915_g=
tt_mmap_read.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109291">fdo#109291</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-glk8/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2389">i91=
5#2389</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19144/shard-glk9/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_schedule@u-fairslice@vecs0}:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-apl4/igt@gem_exec_schedule@u-fairslice@vecs0.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610"=
>i915#1610</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19144/shard-apl7/igt@gem_exec_schedule@u-fairslice@vecs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-iclb4/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-icl=
b7/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-max:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-skl3/igt@kms_color@pipe-b-ctm-max.html">DMESG-WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
144/shard-skl9/igt@kms_color@pipe-b-ctm-max.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x21-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i=
915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19144/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.html">P=
ASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2346">i915#2346</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/533">i915#533</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-skl10/igt@kms_cursor_legacy=
@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-h=
dmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19144/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank@ab=
-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/=
shard-skl7/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19144/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-=
7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-y:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-kbl2/igt@kms_plane_lowres@pipe-c-tiling-y.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/165">i91=
5#165</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180"=
>i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19144/shard-kbl7/igt@kms_plane_lowres@pipe-c-tiling-y.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-iclb5/igt@kms_psr@psr2_no_drrs.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/s=
hard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-skl1/igt@perf@blocking.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-skl6/ig=
t@perf@blocking.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@vcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-tglb6/igt@prime_vgem@sync@vcs0.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/s=
hard-tglb7/igt@prime_vgem@sync@vcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-iclb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-iclb3/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2722">i915#2722</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2724">i915#2724</a>) -&gt; (<a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-iclb1/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19144/shard-iclb7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2724">i915#2724=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915=
#483</a>)</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-apl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9486/shard-apl4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#=
2722</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19144/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-apl6/igt@runner@abor=
ted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2722">i915#2722</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-glk1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-glk7/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2722">i915#2722</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/483">i915#483</a> / <a href=3D"https://bugzilla.kerne=
l.org/show_bug.cgi?id=3D202321">k.org#202321</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-glk6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19144/shard-glk1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</=
a> / <a href=3D"https://bugzilla.kernel.org/show_bug.cgi?id=3D202321">k.org=
#202321</a>)</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-tglb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-tglb5/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9486/shard-tglb8/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/409">i915=
#409</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19144/shard-tglb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard-tglb5/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19144/shard-tglb8/igt@runner@aborted.html">FAIL</a>) (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915=
#2426</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722=
">i915#2722</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9486/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/shard-skl6/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2722">i915#2722</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19144/shard-skl9/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/shard=
-skl4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</p>
</li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Issues hit</h4>
<ul>
<li>spec@glsl-1.30@execution@tex-miplevel-selection texturelod 1darray:<ul>
<li>pig-snb-2600:       NOTRUN -&gt; <a href=3D"None">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/mesa/mesa/issues/1812">mesa#1812</a>) +7 sim=
ilar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 11)</h2>
<p>Additional (1): pig-snb-2600 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9486 -&gt; Patchwork_19144</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9486: c834ebc78f2719e0b7f4f442b837daf5e29be100 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5901: 565d911f08df697fa211dbd1faefe2fd57066f71 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19144: a7044e521942e99794babf2e65c993158a04682c @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1278592089955634906==--

--===============0724774885==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0724774885==--
