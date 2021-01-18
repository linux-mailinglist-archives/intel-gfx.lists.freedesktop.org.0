Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A052FA93D
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 19:50:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDE8D89BF0;
	Mon, 18 Jan 2021 18:49:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3558C89B60;
 Mon, 18 Jan 2021 18:49:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2CD30A0009;
 Mon, 18 Jan 2021 18:49:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "William Tseng" <william.tseng@intel.com>
Date: Mon, 18 Jan 2021 18:49:58 -0000
Message-ID: <161099579814.28165.4782921291555694137@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210118093429.27699-1-william.tseng@intel.com>
In-Reply-To: <20210118093429.27699-1-william.tseng@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgeDg2?=
 =?utf-8?q?/gpu=3A_add_JSL_stolen_memory_support?=
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
Content-Type: multipart/mixed; boundary="===============0607840112=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0607840112==
Content-Type: multipart/alternative;
 boundary="===============4869629610042225630=="

--===============4869629610042225630==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: x86/gpu: add JSL stolen memory support
URL   : https://patchwork.freedesktop.org/series/85983/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9634_full -> Patchwork_19389_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19389_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19389_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19389_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_atomic@plane-immutable-zpos:
    - shard-iclb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-iclb1/igt@kms_atomic@plane-immutable-zpos.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-iclb6/igt@kms_atomic@plane-immutable-zpos.html

  
Known issues
------------

  Here are the changes found in Patchwork_19389_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed:
    - shard-hsw:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1099]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-hsw2/igt@gem_ctx_persistence@engines-mixed.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-tglb:         NOTRUN -> [SKIP][4] ([i915#280])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb7/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][5] -> [SKIP][6] ([i915#2190])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-tglb5/igt@gem_huc_copy@huc-copy.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_render_copy@y-tiled-to-vebox-linear:
    - shard-hsw:          NOTRUN -> [SKIP][7] ([fdo#109271]) +208 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-hsw2/igt@gem_render_copy@y-tiled-to-vebox-linear.html

  * igt@gem_softpin@evict-snoop:
    - shard-tglb:         NOTRUN -> [SKIP][8] ([fdo#109312])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb7/igt@gem_softpin@evict-snoop.html

  * igt@gem_userptr_blits@mmap-offset-invalidate-idle@gtt:
    - shard-tglb:         NOTRUN -> [SKIP][9] ([i915#1317]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb7/igt@gem_userptr_blits@mmap-offset-invalidate-idle@gtt.html

  * igt@gem_userptr_blits@process-exit-mmap-busy@uc:
    - shard-tglb:         NOTRUN -> [SKIP][10] ([i915#1699]) +3 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb8/igt@gem_userptr_blits@process-exit-mmap-busy@uc.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-hsw:          NOTRUN -> [FAIL][11] ([i915#2724])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-hsw8/igt@gem_userptr_blits@vma-merge.html
    - shard-skl:          NOTRUN -> [INCOMPLETE][12] ([i915#2502] / [i915#2667])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl2/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-tglb:         NOTRUN -> [SKIP][13] ([fdo#112306])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb8/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         NOTRUN -> [FAIL][14] ([i915#454])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb7/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#2521])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][17] ([fdo#111614])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb7/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][18] ([fdo#111615]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb8/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-tglb:         NOTRUN -> [SKIP][19] ([i915#2705])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb7/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_ccs@pipe-c-crc-primary-basic:
    - shard-skl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [fdo#111304])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl5/igt@kms_ccs@pipe-c-crc-primary-basic.html

  * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
    - shard-hsw:          NOTRUN -> [SKIP][21] ([fdo#109271] / [fdo#111827]) +17 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-hsw5/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html

  * igt@kms_color@pipe-c-ctm-blue-to-red:
    - shard-skl:          [PASS][22] -> [DMESG-WARN][23] ([i915#1982])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl9/igt@kms_color@pipe-c-ctm-blue-to-red.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl1/igt@kms_color@pipe-c-ctm-blue-to-red.html

  * igt@kms_color@pipe-d-degamma:
    - shard-tglb:         NOTRUN -> [FAIL][24] ([i915#1149])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb7/igt@kms_color@pipe-d-degamma.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl9/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:
    - shard-tglb:         NOTRUN -> [SKIP][26] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb8/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html

  * igt@kms_content_protection@srm:
    - shard-tglb:         NOTRUN -> [SKIP][27] ([fdo#111828])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb8/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#54]) +8 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-random:
    - shard-tglb:         NOTRUN -> [SKIP][30] ([fdo#109279]) +3 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-512x170-random.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge:
    - shard-iclb:         [PASS][31] -> [DMESG-FAIL][32] ([i915#1226])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-iclb1/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-iclb6/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#2346]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#533])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl2/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip@bo-too-big@a-hdmi-a1:
    - shard-glk:          [PASS][36] -> [DMESG-WARN][37] ([i915#118] / [i915#95])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-glk8/igt@kms_flip@bo-too-big@a-hdmi-a1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-glk5/igt@kms_flip@bo-too-big@a-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a2:
    - shard-glk:          [PASS][38] -> [FAIL][39] ([i915#2122])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-glk6/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a2.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-glk7/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-tglb:         NOTRUN -> [SKIP][40] ([i915#2587])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-tglb:         NOTRUN -> [SKIP][41] ([fdo#109285])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb8/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt:
    - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#111825]) +16 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
    - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271]) +65 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          NOTRUN -> [FAIL][44] ([i915#1188])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a:
    - shard-glk:          [PASS][45] -> [FAIL][46] ([i915#53])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-glk8/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-glk5/igt@kms_pipe_crc_basic@read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [PASS][47] -> [INCOMPLETE][48] ([i915#648])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-skl:          NOTRUN -> [FAIL][49] ([fdo#108145] / [i915#265])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][50] -> [SKIP][51] ([fdo#109441]) +2 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@nouveau_crc@pipe-b-ctx-flip-detection:
    - shard-tglb:         NOTRUN -> [SKIP][52] ([i915#2530]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb8/igt@nouveau_crc@pipe-b-ctx-flip-detection.html

  * igt@prime_nv_test@i915_nv_sharing:
    - shard-tglb:         NOTRUN -> [SKIP][53] ([fdo#109291])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb7/igt@prime_nv_test@i915_nv_sharing.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-tglb:         NOTRUN -> [SKIP][54] ([fdo#109295])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb8/igt@prime_vgem@fence-flip-hang.html

  
#### Possible fixes ####

  * igt@gem_exec_capture@pi@vecs0:
    - shard-skl:          [INCOMPLETE][55] ([i915#198] / [i915#2624]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl7/igt@gem_exec_capture@pi@vecs0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl6/igt@gem_exec_capture@pi@vecs0.html

  * {igt@gem_exec_fair@basic-none-share@rcs0}:
    - shard-iclb:         [FAIL][57] ([i915#2842]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html

  * {igt@gem_exec_fair@basic-none@vcs0}:
    - shard-apl:          [FAIL][59] ([i915#2842]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-apl3/igt@gem_exec_fair@basic-none@vcs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html

  * {igt@gem_exec_fair@basic-pace@vcs1}:
    - shard-kbl:          [FAIL][61] ([i915#2842]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-apl:          [FAIL][63] ([i915#2389]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-apl2/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-apl3/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * {igt@gem_exec_schedule@u-fairslice-all}:
    - shard-tglb:         [DMESG-WARN][65] ([i915#2803]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-tglb7/igt@gem_exec_schedule@u-fairslice-all.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb7/igt@gem_exec_schedule@u-fairslice-all.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - shard-hsw:          [INCOMPLETE][67] -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-hsw4/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-hsw7/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-hsw:          [FAIL][69] ([i915#1860]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-hsw6/igt@i915_pm_rc6_residency@rc6-idle.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-hsw4/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [INCOMPLETE][71] ([i915#151]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl9/igt@i915_pm_rpm@system-suspend-modeset.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl9/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:
    - shard-skl:          [FAIL][73] ([i915#54]) -> [PASS][74] +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][75] ([i915#2346] / [i915#533]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][77] ([i915#2122]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ac-hdmi-a1-hdmi-a2.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-glk1/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][79] ([i915#79]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [FAIL][81] ([i915#2122]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][83] ([i915#123] / [i915#1982]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl3/igt@kms_frontbuffer_tracking@psr-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl5/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][85] ([i915#1188]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][87] ([fdo#108145] / [i915#265]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][89] ([fdo#109642] / [fdo#111068]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-iclb3/igt@kms_psr2_su@frontbuffer.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][91] ([fdo#109441]) -> [PASS][92] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-iclb5/igt@kms_psr@psr2_cursor_render.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-a-query-busy:
    - shard-tglb:         [INCOMPLETE][93] -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-tglb6/igt@kms_vblank@pipe-a-query-busy.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb8/igt@kms_vblank@pipe-a-query-busy.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-many-active@vcs0:
    - shard-iclb:         [FAIL][95] -> [FAIL][96] ([i915#2389]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-iclb3/igt@gem_exec_reloc@basic-many-active@vcs0.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-iclb6/igt@gem_exec_reloc@basic-many-active@vcs0.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][97] ([i915#658]) -> [SKIP][98] ([i915#588])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-iclb5/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][99] ([i915#2681] / [i915#2684]) -> [WARN][100] ([i915#1804] / [i915#2684]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][101] ([fdo#109349]) -> [DMESG-WARN][102] ([i915#1226])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][103] ([i915#2295] / [i915#2505]) -> [FAIL][104] ([i915#2295])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-kbl6/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-kbl1/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][105], [FAIL][106]) ([i915#2295] / [i915#2426] / [i915#2667] / [i915#2803]) -> [FAIL][107] ([i915#2295] / [i915#2667])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-tglb1/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-tglb7/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb2/igt@runner@aborted.html
    - shard-skl:          ([FAIL][108], [FAIL][109]) ([i915#2029] / [i915#2426]) -> ([FAIL][110], [FAIL][111]) ([i915#2295] / [i915#2426])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl2/igt@runner@aborted.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl3/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl2/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl5/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111304]: https://bugs.freedesktop.org/show_bug.cgi?id=111304
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#111828]: https://bugs.freedesktop.org/show_bug.cgi?id=111828
  [fdo#112306]: https://bugs.freedesktop.org/show_bug.cgi?id=112306
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1317]: https://gitlab.freedesktop.org/drm/intel/issues/1317
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1699]: https://gitlab.freedesktop.org/drm/intel/issues/1699
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1860]: https://gitlab.freedesktop.org/drm/intel/issues/1860
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2624]: https://gitlab.freedesktop.org/drm/intel/issues/2624
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2667]: https://gitlab.freedesktop.org/drm/intel/issues/2667
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#2733]: https://gitlab.freedesktop.org/drm/intel/issues/2733
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2803]: https://gitlab.freedesktop.org/drm/intel/issues/2803
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2852]: https://gitlab.freedesktop.org/drm/intel/issues/2852
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9634 -> Patchwork_19389

  CI-20190529: 20190529
  CI_DRM_9634: fdd78774cc57989c13b9a28516dfe8004dcf6342 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5960: ace82fcd5f3623f8dde7c220a825873dc53dfae4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19389: f21504bb6df9b7cad207207a0d6a8c145970ac9d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/index.html

--===============4869629610042225630==
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
<tr><td><b>Series:</b></td><td>x86/gpu: add JSL stolen memory support</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85983/">https://patchwork.freedesktop.org/series/85983/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9634_full -&gt; Patchwork_19389_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19389_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19389_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19389_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_atomic@plane-immutable-zpos:<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-iclb1/igt@kms_atomic@plane-immutable-zpos.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-iclb6/igt@kms_atomic@plane-immutable-zpos.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19389_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@engines-mixed:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-hsw2/igt@gem_ctx_persistence@engines-mixed.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1099">i915#1099</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb7/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-tglb5/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-linear:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-hsw2/igt@gem_render_copy@y-tiled-to-vebox-linear.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +208 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb7/igt@gem_softpin@evict-snoop.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109312">fdo#109312</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@mmap-offset-invalidate-idle@gtt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb7/igt@gem_userptr_blits@mmap-offset-invalidate-idle@gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1317">i915#1317</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap-busy@uc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb8/igt@gem_userptr_blits@process-exit-mmap-busy@uc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1699">i915#1699</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-hsw8/igt@gem_userptr_blits@vma-merge.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2724">i915#2724</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl2/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2502">i915#2502</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2667">i915#2667</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb8/igt@gen9_exec_parse@cmd-crossing-page.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=112306">fdo#112306</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb7/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb7/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb8/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb7/igt@kms_big_joiner@invalid-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl5/igt@kms_ccs@pipe-c-crc-primary-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111304">fdo#111304</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-hsw5/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-blue-to-red:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl9/igt@kms_color@pipe-c-ctm-blue-to-red.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl1/igt@kms_color@pipe-c-ctm-blue-to-red.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-degamma:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb7/igt@kms_color@pipe-d-degamma.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1149">i915#1149</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl9/igt@kms_color_chamelium@pipe-b-ctm-max.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb8/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb8/igt@kms_content_protection@srm.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111828">fdo#111828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-512x170-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109279">fdo#109279</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-iclb1/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-iclb6/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1226">i915#1226</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl2/igt@kms_cursor_legacy@pipe-d-torture-bo.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@bo-too-big@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-glk8/igt@kms_flip@bo-too-big@a-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-glk5/igt@kms_flip@bo-too-big@a-hdmi-a1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-glk6/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-glk7/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb8/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +65 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-a:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-glk8/igt@kms_pipe_crc_basic@read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-glk5/igt@kms_pipe_crc_basic@read-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/648">i915#648</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-detection:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb8/igt@nouveau_crc@pipe-b-ctx-flip-detection.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2530">i915#2530</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@i915_nv_sharing:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb7/igt@prime_nv_test@i915_nv_sharing.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb8/igt@prime_vgem@fence-flip-hang.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_capture@pi@vecs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl7/igt@gem_exec_capture@pi@vecs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2624">i915#2624</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl6/igt@gem_exec_capture@pi@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-none-share@rcs0}:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-none@vcs0}:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-apl3/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace@vcs1}:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-apl2/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-apl3/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_schedule@u-fairslice-all}:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-tglb7/igt@gem_exec_schedule@u-fairslice-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2803">i915#2803</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb7/igt@gem_exec_schedule@u-fairslice-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-snoop:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-hsw4/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-hsw7/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-hsw6/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1860">i915#1860</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-hsw4/igt@i915_pm_rc6_residency@rc6-idle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl9/igt@i915_pm_rpm@system-suspend-modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/151">i915#151</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl9/igt@i915_pm_rpm@system-suspend-modeset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ac-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-glk1/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ac-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl3/igt@kms_frontbuffer_tracking@psr-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/123">i915#123</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl5/igt@kms_frontbuffer_tracking@psr-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-iclb3/igt@kms_psr2_su@frontbuffer.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109642">fdo#109642</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-iclb5/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-query-busy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-tglb6/igt@kms_vblank@pipe-a-query-busy.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb8/igt@kms_vblank@pipe-a-query-busy.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-iclb3/igt@gem_exec_reloc@basic-many-active@vcs0.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-iclb6/igt@gem_exec_reloc@basic-many-active@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-iclb5/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109349">fdo#109349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1226">i915#1226</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-kbl6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-kbl1/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>shard-tglb:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-tglb1/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-tglb7/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2667">i915#2667</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2803">i915#2803</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-tglb2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2667">i915#2667</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9634/shard-skl3/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19389/shard-skl5/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9634 -&gt; Patchwork_19389</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9634: fdd78774cc57989c13b9a28516dfe8004dcf6342 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5960: ace82fcd5f3623f8dde7c220a825873dc53dfae4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19389: f21504bb6df9b7cad207207a0d6a8c145970ac9d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============4869629610042225630==--

--===============0607840112==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0607840112==--
