Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7114C10F6
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 12:03:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EF3110E76D;
	Wed, 23 Feb 2022 11:03:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 236DD10E76D;
 Wed, 23 Feb 2022 11:03:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1E0D3A00A0;
 Wed, 23 Feb 2022 11:03:09 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2499337440803844929=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Wed, 23 Feb 2022 11:03:09 -0000
Message-ID: <164561418908.25288.18083727216050480910@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220222141424.35165-1-jose.souza@intel.com>
In-Reply-To: <20220222141424.35165-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Simply_subplatform_detection_=28rev2=29?=
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

--===============2499337440803844929==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/tgl: Simply subplatform detection (rev2)
URL   : https://patchwork.freedesktop.org/series/100517/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11268_full -> Patchwork_22354_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22354_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22354_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22354_full:

### Piglit changes ###

#### Possible regressions ####

  * spec@glsl-4.20@execution@vs_in@vs-input-float_mat4x2-double_dvec3_array2-position:
    - pig-skl-6260u:      NOTRUN -> [FAIL][1] +415 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/pig-skl-6260u/spec@glsl-4.20@execution@vs_in@vs-input-float_mat4x2-double_dvec3_array2-position.html

  * spec@glsl-4.20@execution@vs_in@vs-input-int_ivec3_array3-double_dvec2_array2-position:
    - pig-skl-6260u:      NOTRUN -> [INCOMPLETE][2] +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/pig-skl-6260u/spec@glsl-4.20@execution@vs_in@vs-input-int_ivec3_array3-double_dvec2_array2-position.html

  
#### Warnings ####

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat2x4_array5-position-uint_uvec3:
    - pig-skl-6260u:      [INCOMPLETE][3] -> [FAIL][4] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/pig-skl-6260u/spec@glsl-4.20@execution@vs_in@vs-input-double_dmat2x4_array5-position-uint_uvec3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/pig-skl-6260u/spec@glsl-4.20@execution@vs_in@vs-input-double_dmat2x4_array5-position-uint_uvec3.html

  
Known issues
------------

  Here are the changes found in Patchwork_22354_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@display-3x:
    - shard-iclb:         NOTRUN -> [SKIP][5] ([i915#1839])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb8/igt@feature_discovery@display-3x.html

  * igt@gem_exec_capture@pi@vcs0:
    - shard-iclb:         NOTRUN -> [INCOMPLETE][6] ([i915#3371])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb8/igt@gem_exec_capture@pi@vcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#2842])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb5/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][9] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][10] -> [FAIL][11] ([i915#2842])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-iclb:         [PASS][12] -> [FAIL][13] ([i915#2842])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb6/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_params@no-blt:
    - shard-tglb:         NOTRUN -> [SKIP][14] ([fdo#109283])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb2/igt@gem_exec_params@no-blt.html
    - shard-iclb:         NOTRUN -> [SKIP][15] ([fdo#109283])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb5/igt@gem_exec_params@no-blt.html

  * igt@gem_lmem_swapping@basic:
    - shard-iclb:         NOTRUN -> [SKIP][16] ([i915#4613])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb5/igt@gem_lmem_swapping@basic.html
    - shard-tglb:         NOTRUN -> [SKIP][17] ([i915#4613])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb2/igt@gem_lmem_swapping@basic.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-tglb:         NOTRUN -> [SKIP][18] ([i915#4270])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb2/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-iclb:         NOTRUN -> [SKIP][19] ([i915#4270]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb8/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_render_copy@linear-to-vebox-yf-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][20] ([i915#768]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb1/igt@gem_render_copy@linear-to-vebox-yf-tiled.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-iclb:         NOTRUN -> [SKIP][21] ([i915#3297])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb5/igt@gem_userptr_blits@unsync-unmap.html
    - shard-tglb:         NOTRUN -> [SKIP][22] ([i915#3297])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb2/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-iclb:         NOTRUN -> [SKIP][23] ([i915#2856]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb5/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-tglb:         NOTRUN -> [SKIP][24] ([i915#1902])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb6/igt@i915_pm_lpsp@screens-disabled.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-glk:          [PASS][25] -> [DMESG-WARN][26] ([i915#118])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-glk5/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][27] ([fdo#111614])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb6/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][28] ([i915#3689]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb2/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_ccs.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][29] ([fdo#109278] / [i915#3886]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb8/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][30] ([i915#3689] / [i915#3886]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb6/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_color_chamelium@pipe-c-gamma:
    - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb5/igt@kms_color_chamelium@pipe-c-gamma.html

  * igt@kms_color_chamelium@pipe-d-degamma:
    - shard-tglb:         NOTRUN -> [SKIP][32] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb6/igt@kms_color_chamelium@pipe-d-degamma.html
    - shard-iclb:         NOTRUN -> [SKIP][33] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb1/igt@kms_color_chamelium@pipe-d-degamma.html

  * igt@kms_content_protection@content_type_change:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#109300] / [fdo#111066]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb8/igt@kms_content_protection@content_type_change.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen:
    - shard-glk:          [PASS][35] -> [FAIL][36] ([i915#3444])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-glk5/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-glk6/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x170-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][37] ([fdo#109279] / [i915#3359])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-512x170-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x170-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][38] ([fdo#109278]) +8 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb8/igt@kms_cursor_crc@pipe-c-cursor-512x170-rapid-movement.html

  * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
    - shard-tglb:         NOTRUN -> [SKIP][39] ([fdo#109274] / [fdo#111825]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb6/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109274] / [fdo#109278])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb8/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-tglb:         [PASS][41] -> [FAIL][42] ([i915#2346] / [i915#533])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
    - shard-iclb:         NOTRUN -> [SKIP][43] ([i915#3528])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb8/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_flip@2x-absolute-wf_vblank-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][44] ([fdo#109274])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb5/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][45] -> [FAIL][46] ([i915#79]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
    - shard-iclb:         NOTRUN -> [SKIP][47] ([i915#2587])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-glk:          [PASS][48] -> [FAIL][49] ([i915#4911])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-glk7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-tglb:         NOTRUN -> [SKIP][50] ([i915#2587])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109285])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb5/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:
    - shard-tglb:         NOTRUN -> [SKIP][52] ([fdo#109280] / [fdo#111825]) +2 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-plflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109280]) +7 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-plflip-blt.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-tglb:         NOTRUN -> [SKIP][54] ([i915#1187])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb2/igt@kms_hdr@static-toggle-suspend.html
    - shard-iclb:         NOTRUN -> [SKIP][55] ([i915#1187])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb5/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:
    - shard-tglb:         NOTRUN -> [SKIP][56] ([fdo#109289])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb6/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html
    - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109289]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb1/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][58] ([fdo#111615])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb2/igt@kms_plane_multiple@atomic-pipe-a-tiling-yf.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-iclb:         [PASS][59] -> [SKIP][60] ([fdo#109642] / [fdo#111068] / [i915#658])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb1/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_primary_render:
    - shard-iclb:         [PASS][61] -> [SKIP][62] ([fdo#109441])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb2/igt@kms_psr@psr2_primary_render.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb6/igt@kms_psr@psr2_primary_render.html

  * igt@kms_vrr@flip-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109502])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb5/igt@kms_vrr@flip-suspend.html

  * igt@nouveau_crc@pipe-b-source-outp-inactive:
    - shard-iclb:         NOTRUN -> [SKIP][64] ([i915#2530]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb1/igt@nouveau_crc@pipe-b-source-outp-inactive.html
    - shard-tglb:         NOTRUN -> [SKIP][65] ([i915#2530])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb6/igt@nouveau_crc@pipe-b-source-outp-inactive.html

  * igt@prime_nv_pcopy@test3_3:
    - shard-iclb:         NOTRUN -> [SKIP][66] ([fdo#109291]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb8/igt@prime_nv_pcopy@test3_3.html

  * igt@prime_nv_pcopy@test_semaphore:
    - shard-tglb:         NOTRUN -> [SKIP][67] ([fdo#109291])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb2/igt@prime_nv_pcopy@test_semaphore.html

  
#### Possible fixes ####

  * igt@drm_read@short-buffer-nonblock:
    - {shard-rkl}:        [SKIP][68] ([i915#4098]) -> [PASS][69] +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@drm_read@short-buffer-nonblock.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@drm_read@short-buffer-nonblock.html

  * igt@fbdev@info:
    - {shard-rkl}:        [SKIP][70] ([i915#2582]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@fbdev@info.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@fbdev@info.html

  * igt@gem_ctx_persistence@many-contexts:
    - {shard-rkl}:        ([FAIL][72], [PASS][73]) ([i915#2410]) -> [PASS][74]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-4/igt@gem_ctx_persistence@many-contexts.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@unwedge-stress:
    - {shard-rkl}:        [TIMEOUT][75] ([i915#3063]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@gem_eio@unwedge-stress.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][77] ([i915#2842]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - {shard-dg1}:        [DMESG-WARN][79] ([i915#4936]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@i915_pm_rpm@cursor-dpms:
    - {shard-rkl}:        ([SKIP][81], [SKIP][82]) ([i915#1849]) -> [PASS][83]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@i915_pm_rpm@cursor-dpms.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-4/igt@i915_pm_rpm@cursor-dpms.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@i915_pm_rpm@cursor-dpms.html

  * igt@i915_pm_rpm@fences-dpms:
    - {shard-rkl}:        ([PASS][84], [SKIP][85]) ([i915#1849]) -> [PASS][86]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-6/igt@i915_pm_rpm@fences-dpms.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-4/igt@i915_pm_rpm@fences-dpms.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@i915_pm_rpm@fences-dpms.html

  * igt@i915_pm_rpm@pm-tiling:
    - {shard-rkl}:        [SKIP][87] ([fdo#109308]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@i915_pm_rpm@pm-tiling.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@i915_pm_rpm@pm-tiling.html

  * igt@i915_pm_rps@reset:
    - {shard-rkl}:        [FAIL][89] ([i915#4016]) -> [PASS][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@i915_pm_rps@reset.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@i915_pm_rps@reset.html

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0:
    - {shard-rkl}:        ([PASS][91], [SKIP][92]) ([i915#1845]) -> [PASS][93] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-4/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-180:
    - {shard-rkl}:        ([SKIP][94], [SKIP][95]) ([i915#1845]) -> [PASS][96] +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-4/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0:
    - {shard-rkl}:        [SKIP][97] ([i915#1845]) -> [PASS][98] +16 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
    - {shard-dg1}:        [DMESG-WARN][99] ([i915#4892]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-dg1-12/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-dg1-15/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - shard-glk:          [DMESG-WARN][101] ([i915#118]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-glk9/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-glk4/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - {shard-rkl}:        [SKIP][103] ([i915#1845] / [i915#4098]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - {shard-rkl}:        [SKIP][105] ([i915#1149] / [i915#1849] / [i915#4070]) -> [PASS][106] +2 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_color@pipe-a-ctm-0-75.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_color@pipe-b-ctm-0-5:
    - {shard-rkl}:        ([SKIP][107], [SKIP][108]) ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][109]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-4/igt@kms_color@pipe-b-ctm-0-5.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_color@pipe-b-ctm-0-5.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_color@pipe-b-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:
    - {shard-rkl}:        [SKIP][110] ([fdo#112022] / [i915#4070]) -> [PASS][111] +3 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-random:
    - {shard-rkl}:        [SKIP][112] ([fdo#112022]) -> [PASS][113] +2 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-4/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding:
    - shard-glk:          [FAIL][114] ([i915#1888] / [i915#3444]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-glk8/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-glk1/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html

  * igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge:
    - {shard-rkl}:        [SKIP][116] ([i915#1849] / [i915#4070]) -> [PASS][117] +2 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - {shard-rkl}:        [SKIP][118] ([fdo#111825] / [i915#4070]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - {shard-rkl}:        [SKIP][120] ([fdo#111825]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-iclb:         [FAIL][122] ([i915#2346]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled:
    - {shard-rkl}:        [SKIP][124] ([fdo#111314]) -> [PASS][125] +2 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled:
    - {shard-rkl}:        ([SKIP][126], [SKIP][127]) ([fdo#111314] / [i915#4098]) -> [PASS][128]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html

  * igt@kms_flip@2x-flip-vs-modeset-vs-hang@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [DMESG-WARN][129] ([i915#118] / [i915#1888]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-glk8/igt@kms_flip@2x-flip-vs-modeset-vs-hang@ab-hdmi-a1-hdmi-a2.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-glk1/igt@kms_flip@2x-flip-vs-modeset-vs-hang@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
    - shard-iclb:         [SKIP][131] ([i915#3701]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:
    - {shard-rkl}:        [SKIP][133] ([i915#1849]) -> [PASS][134] +8 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - {shard-rkl}:        ([SKIP][135], [SKIP][136]) ([i915#1849] / [i915#4098]) -> [PASS][137] +5 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:
    - {shard-rkl}:        ([PASS][138], [SKIP][139]) ([i915#4098]) -> [PASS][140]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html

  * igt@kms_invalid_mode@bad-htotal:
    - {shard-rkl}:        ([SKIP][141], [SKIP][142]) ([i915#4278]) -> [PASS][143]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_i

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/index.html

--===============2499337440803844929==
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
<tr><td><b>Series:</b></td><td>drm/i915/tgl: Simply subplatform detection (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100517/">https://patchwork.freedesktop.org/series/100517/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11268_full -&gt; Patchwork_22354_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22354_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22354_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22354_full:</p>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>spec@glsl-4.20@execution@vs_in@vs-input-float_mat4x2-double_dvec3_array2-position:</p>
<ul>
<li>pig-skl-6260u:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/pig-skl-6260u/spec@glsl-4.20@execution@vs_in@vs-input-float_mat4x2-double_dvec3_array2-position.html">FAIL</a> +415 similar issues</li>
</ul>
</li>
<li>
<p>spec@glsl-4.20@execution@vs_in@vs-input-int_ivec3_array3-double_dvec2_array2-position:</p>
<ul>
<li>pig-skl-6260u:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/pig-skl-6260u/spec@glsl-4.20@execution@vs_in@vs-input-int_ivec3_array3-double_dvec2_array2-position.html">INCOMPLETE</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>spec@glsl-4.20@execution@vs_in@vs-input-double_dmat2x4_array5-position-uint_uvec3:<ul>
<li>pig-skl-6260u:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/pig-skl-6260u/spec@glsl-4.20@execution@vs_in@vs-input-double_dmat2x4_array5-position-uint_uvec3.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/pig-skl-6260u/spec@glsl-4.20@execution@vs_in@vs-input-double_dmat2x4_array5-position-uint_uvec3.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22354_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@display-3x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb8/igt@feature_discovery@display-3x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb8/igt@gem_exec_capture@pi@vcs0.html">INCOMPLETE</a> ([i915#3371])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb5/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb6/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-blt:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb2/igt@gem_exec_params@no-blt.html">SKIP</a> ([fdo#109283])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb5/igt@gem_exec_params@no-blt.html">SKIP</a> ([fdo#109283])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb5/igt@gem_lmem_swapping@basic.html">SKIP</a> ([i915#4613])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb2/igt@gem_lmem_swapping@basic.html">SKIP</a> ([i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb2/igt@gem_pxp@regular-baseline-src-copy-readible.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb8/igt@gem_pxp@reject-modify-context-protection-off-1.html">SKIP</a> ([i915#4270]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-yf-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb1/igt@gem_render_copy@linear-to-vebox-yf-tiled.html">SKIP</a> ([i915#768]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb5/igt@gem_userptr_blits@unsync-unmap.html">SKIP</a> ([i915#3297])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb2/igt@gem_userptr_blits@unsync-unmap.html">SKIP</a> ([i915#3297])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb5/igt@gen9_exec_parse@valid-registers.html">SKIP</a> ([i915#2856]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb6/igt@i915_pm_lpsp@screens-disabled.html">SKIP</a> ([i915#1902])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-glk5/igt@kms_big_fb@linear-32bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-0.html">DMESG-WARN</a> ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb6/igt@kms_big_fb@linear-64bpp-rotate-90.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb2/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb8/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb6/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-gamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb5/igt@kms_color_chamelium@pipe-c-gamma.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-degamma:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb6/igt@kms_color_chamelium@pipe-d-degamma.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb1/igt@kms_color_chamelium@pipe-d-degamma.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content_type_change:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb8/igt@kms_content_protection@content_type_change.html">SKIP</a> ([fdo#109300] / [fdo#111066]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-glk5/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-glk6/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html">FAIL</a> ([i915#3444])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x170-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-512x170-onscreen.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x170-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb8/igt@kms_cursor_crc@pipe-c-cursor-512x170-rapid-movement.html">SKIP</a> ([fdo#109278]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb6/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> ([fdo#109274] / [fdo#111825]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb8/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html">SKIP</a> ([fdo#109274] / [fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb8/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> ([i915#3528])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb5/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">SKIP</a> ([i915#2587])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-glk7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">FAIL</a> ([i915#4911])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#2587])</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb5/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html">SKIP</a> ([fdo#109280] / [fdo#111825]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-plflip-blt.html">SKIP</a> ([fdo#109280]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb2/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> ([i915#1187])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb5/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> ([i915#1187])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb6/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html">SKIP</a> ([fdo#109289])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb1/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html">SKIP</a> ([fdo#109289]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-a-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb2/igt@kms_plane_multiple@atomic-pipe-a-tiling-yf.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb1/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> ([fdo#109642] / [fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb2/igt@kms_psr@psr2_primary_render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb6/igt@kms_psr@psr2_primary_render.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb5/igt@kms_vrr@flip-suspend.html">SKIP</a> ([fdo#109502])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-source-outp-inactive:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb1/igt@nouveau_crc@pipe-b-source-outp-inactive.html">SKIP</a> ([i915#2530]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb6/igt@nouveau_crc@pipe-b-source-outp-inactive.html">SKIP</a> ([i915#2530])</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_3:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb8/igt@prime_nv_pcopy@test3_3.html">SKIP</a> ([fdo#109291]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test_semaphore:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb2/igt@prime_nv_pcopy@test_semaphore.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_read@short-buffer-nonblock:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@drm_read@short-buffer-nonblock.html">SKIP</a> ([i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@drm_read@short-buffer-nonblock.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@fbdev@info.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@fbdev@info.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-4/igt@gem_ctx_persistence@many-contexts.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html">PASS</a>) ([i915#2410]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#3063]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG-WARN</a> ([i915#4936]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor-dpms:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@i915_pm_rpm@cursor-dpms.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-4/igt@i915_pm_rpm@cursor-dpms.html">SKIP</a>) ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@i915_pm_rpm@cursor-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@fences-dpms:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-6/igt@i915_pm_rpm@fences-dpms.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-4/igt@i915_pm_rpm@fences-dpms.html">SKIP</a>) ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@i915_pm_rpm@fences-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@pm-tiling:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@i915_pm_rpm@pm-tiling.html">SKIP</a> ([fdo#109308]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@i915_pm_rpm@pm-tiling.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@i915_pm_rps@reset.html">FAIL</a> ([i915#4016]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@i915_pm_rps@reset.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-4/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0.html">SKIP</a>) ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-180:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-4/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html">SKIP</a>) ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0.html">PASS</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-dg1-12/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">DMESG-WARN</a> ([i915#4892]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-dg1-15/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-glk9/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html">DMESG-WARN</a> ([i915#118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-glk4/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-75:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_color@pipe-a-ctm-0-75.html">SKIP</a> ([i915#1149] / [i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-75.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-5:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-4/igt@kms_color@pipe-b-ctm-0-5.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_color@pipe-b-ctm-0-5.html">SKIP</a>) ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_color@pipe-b-ctm-0-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x21-random:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-4/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.html">SKIP</a> ([fdo#112022]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-glk8/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html">FAIL</a> ([i915#1888] / [i915#3444]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-glk1/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge.html">SKIP</a> ([i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">SKIP</a> ([fdo#111825] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">SKIP</a> ([fdo#111825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html">SKIP</a> ([fdo#111314]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html">SKIP</a>) ([fdo#111314] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset-vs-hang@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-glk8/igt@kms_flip@2x-flip-vs-modeset-vs-hang@ab-hdmi-a1-hdmi-a2.html">DMESG-WARN</a> ([i915#118] / [i915#1888]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-glk1/igt@kms_flip@2x-flip-vs-modeset-vs-hang@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html">SKIP</a> ([i915#3701]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html">PASS</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a>) ([i915#1849] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html">SKIP</a>) ([i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22354/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-htotal:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_i">SKIP</a>, [SKIP][142]) ([i915#4278]) -&gt; [PASS][143]</li>
</ul>
</li>
</ul>

</body>
</html>

--===============2499337440803844929==--
