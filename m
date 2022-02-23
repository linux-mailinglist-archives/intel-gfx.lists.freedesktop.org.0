Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3142A4C13A2
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 14:12:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 947A910F347;
	Wed, 23 Feb 2022 13:12:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A230810F344;
 Wed, 23 Feb 2022 13:12:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9C74AA77A5;
 Wed, 23 Feb 2022 13:12:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5628521183734280666=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Balasubramani Vivekanandan" <balasubramani.vivekanandan@intel.com>
Date: Wed, 23 Feb 2022 13:12:14 -0000
Message-ID: <164562193459.25288.8373933552795766279@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220222145206.76118-1-balasubramani.vivekanandan@intel.com>
In-Reply-To: <20220222145206.76118-1-balasubramani.vivekanandan@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Use_the_memcpy=5Ffrom=5Fwc_function_from_drm?=
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

--===============5628521183734280666==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Use the memcpy_from_wc function from drm
URL   : https://patchwork.freedesktop.org/series/100581/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11268_full -> Patchwork_22356_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22356_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22356_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22356_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:
    - {shard-dg1}:        [DMESG-FAIL][1] ([i915#4892]) -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-dg1-12/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-dg1-19/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat3-position-double_dmat3_array2:
    - pig-skl-6260u:      NOTRUN -> [INCOMPLETE][3] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/pig-skl-6260u/spec@glsl-4.20@execution@vs_in@vs-input-double_dmat3-position-double_dmat3_array2.html

  
Known issues
------------

  Here are the changes found in Patchwork_22356_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@display-3x:
    - shard-iclb:         NOTRUN -> [SKIP][4] ([i915#1839])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@feature_discovery@display-3x.html

  * igt@gem_ctx_persistence@heartbeat-many:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#118]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-glk1/igt@gem_ctx_persistence@heartbeat-many.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-glk7/igt@gem_ctx_persistence@heartbeat-many.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#2842])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb3/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][9] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][10] -> [FAIL][11] ([i915#2842])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-iclb:         [PASS][12] -> [FAIL][13] ([i915#2842])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb6/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_params@no-blt:
    - shard-tglb:         NOTRUN -> [SKIP][14] ([fdo#109283])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@gem_exec_params@no-blt.html
    - shard-iclb:         NOTRUN -> [SKIP][15] ([fdo#109283])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb1/igt@gem_exec_params@no-blt.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-iclb:         [PASS][16] -> [INCOMPLETE][17] ([i915#1895])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb3/igt@gem_exec_whisper@basic-queues-forked-all.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb4/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_lmem_swapping@basic:
    - shard-iclb:         NOTRUN -> [SKIP][18] ([i915#4613])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb1/igt@gem_lmem_swapping@basic.html
    - shard-tglb:         NOTRUN -> [SKIP][19] ([i915#4613])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@gem_lmem_swapping@basic.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-tglb:         NOTRUN -> [SKIP][20] ([i915#4270])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-iclb:         NOTRUN -> [SKIP][21] ([i915#4270]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_render_copy@linear-to-vebox-yf-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][22] ([i915#768]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb3/igt@gem_render_copy@linear-to-vebox-yf-tiled.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-iclb:         NOTRUN -> [SKIP][23] ([i915#3297])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb1/igt@gem_userptr_blits@unsync-unmap.html
    - shard-tglb:         NOTRUN -> [SKIP][24] ([i915#3297])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-iclb:         NOTRUN -> [FAIL][25] ([i915#3318])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-iclb:         NOTRUN -> [SKIP][26] ([i915#2856])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][27] -> [FAIL][28] ([i915#454])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([i915#4281])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb4/igt@i915_pm_dc@dc9-dpms.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-tglb:         NOTRUN -> [SKIP][31] ([i915#1902])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@i915_pm_lpsp@screens-disabled.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][32] ([fdo#111614])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][33] ([i915#3689]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_ccs.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#109278] / [i915#3886]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][35] ([i915#3689] / [i915#3886]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_color@pipe-d-ctm-green-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#109278] / [i915#1149])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@kms_color@pipe-d-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-b-degamma:
    - shard-iclb:         NOTRUN -> [SKIP][37] ([fdo#109284] / [fdo#111827]) +4 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@kms_color_chamelium@pipe-b-degamma.html

  * igt@kms_color_chamelium@pipe-d-degamma:
    - shard-tglb:         NOTRUN -> [SKIP][38] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@kms_color_chamelium@pipe-d-degamma.html
    - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb3/igt@kms_color_chamelium@pipe-d-degamma.html

  * igt@kms_content_protection@content_type_change:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109300] / [fdo#111066]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@kms_content_protection@content_type_change.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109278] / [fdo#109279])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x170-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#109279] / [i915#3359])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-512x170-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x170-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109278]) +9 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@kms_cursor_crc@pipe-c-cursor-512x170-rapid-movement.html

  * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
    - shard-tglb:         NOTRUN -> [SKIP][44] ([fdo#109274] / [fdo#111825]) +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109274] / [fdo#109278]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html

  * igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
    - shard-iclb:         NOTRUN -> [SKIP][46] ([i915#3528])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_flip@2x-absolute-wf_vblank-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109274])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb1/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend@c-edp1:
    - shard-iclb:         [PASS][48] -> [DMESG-WARN][49] ([i915#2867])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb4/igt@kms_flip@flip-vs-suspend@c-edp1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb3/igt@kms_flip@flip-vs-suspend@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
    - shard-iclb:         NOTRUN -> [SKIP][50] ([i915#2587])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-glk:          [PASS][51] -> [FAIL][52] ([i915#4911])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-glk7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-tglb:         NOTRUN -> [SKIP][53] ([i915#2587])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:
    - shard-tglb:         NOTRUN -> [SKIP][54] ([fdo#109280] / [fdo#111825]) +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:
    - shard-iclb:         NOTRUN -> [SKIP][55] ([fdo#109280]) +7 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-tglb:         NOTRUN -> [SKIP][56] ([i915#1187])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@kms_hdr@static-toggle-suspend.html
    - shard-iclb:         NOTRUN -> [SKIP][57] ([i915#1187])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb1/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:
    - shard-tglb:         NOTRUN -> [SKIP][58] ([fdo#109289])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html
    - shard-iclb:         NOTRUN -> [SKIP][59] ([fdo#109289]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb3/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][60] ([fdo#111615])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@kms_plane_multiple@atomic-pipe-a-tiling-yf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-iclb:         NOTRUN -> [SKIP][61] ([fdo#111068] / [i915#658])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-iclb:         [PASS][62] -> [SKIP][63] ([fdo#109642] / [fdo#111068] / [i915#658])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb3/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_primary_render:
    - shard-iclb:         [PASS][64] -> [SKIP][65] ([fdo#109441])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb2/igt@kms_psr@psr2_primary_render.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb6/igt@kms_psr@psr2_primary_render.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         NOTRUN -> [SKIP][66] ([fdo#109441])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@nouveau_crc@pipe-b-source-outp-inactive:
    - shard-iclb:         NOTRUN -> [SKIP][67] ([i915#2530]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb3/igt@nouveau_crc@pipe-b-source-outp-inactive.html
    - shard-tglb:         NOTRUN -> [SKIP][68] ([i915#2530])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@nouveau_crc@pipe-b-source-outp-inactive.html

  * igt@prime_nv_pcopy@test3_3:
    - shard-iclb:         NOTRUN -> [SKIP][69] ([fdo#109291]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@prime_nv_pcopy@test3_3.html

  * igt@prime_nv_pcopy@test_semaphore:
    - shard-tglb:         NOTRUN -> [SKIP][70] ([fdo#109291])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@prime_nv_pcopy@test_semaphore.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][71] ([i915#658]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb5/igt@feature_discovery@psr2.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_eio@unwedge-stress:
    - {shard-rkl}:        [TIMEOUT][73] ([i915#3063]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@gem_eio@unwedge-stress.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-rkl-1/igt@gem_eio@unwedge-stress.html
    - {shard-tglu}:       [TIMEOUT][75] ([i915#3063] / [i915#3648]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-tglu-5/igt@gem_eio@unwedge-stress.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglu-2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][77] ([i915#2842]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][79] ([i915#2842]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - {shard-dg1}:        [DMESG-WARN][81] ([i915#4936]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@i915_pm_rps@reset:
    - {shard-rkl}:        [FAIL][83] ([i915#4016]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@i915_pm_rps@reset.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-rkl-1/igt@i915_pm_rps@reset.html

  * igt@i915_pm_rps@waitboost:
    - {shard-dg1}:        [FAIL][85] ([i915#3719]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-dg1-19/igt@i915_pm_rps@waitboost.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-dg1-16/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live@hangcheck:
    - {shard-dg1}:        [DMESG-FAIL][87] ([i915#4494] / [i915#4957]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-dg1-16/igt@i915_selftest@live@hangcheck.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-dg1-17/igt@i915_selftest@live@hangcheck.html

  * igt@kms_async_flips@invalid-async-flip:
    - {shard-rkl}:        ([SKIP][89], [SKIP][90]) ([i915#1845]) -> [PASS][91] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-4/igt@kms_async_flips@invalid-async-flip.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_async_flips@invalid-async-flip.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-rkl-6/igt@kms_async_flips@invalid-async-flip.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - {shard-tglu}:       [DMESG-WARN][92] ([i915#402]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-tglu-5/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglu-2/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180:
    - {shard-rkl}:        [SKIP][94] ([i915#1845]) -> [PASS][95] +3 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - shard-glk:          [DMESG-WARN][96] ([i915#118]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-glk9/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-glk6/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:
    - {shard-rkl}:        [SKIP][98] ([i915#1845] / [i915#4098]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-rkl-6/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html

  * igt@kms_color@pipe-b-ctm-blue-to-red:
    - {shard-rkl}:        [SKIP][100] ([i915#1149] / [i915#1849] / [i915#4070]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-rkl-6/igt@kms_color@pipe-b-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque:
    - {shard-rkl}:        [SKIP][102] ([fdo#112022] / [i915#4070]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding:
    - shard-glk:          [FAIL][104] ([i915#1888] / [i915#3444]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-glk8/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-glk1/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - {shard-rkl}:        [SKIP][106] ([fdo#111825] / [i915#4070]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-iclb:         [FAIL][108] ([i915#2346]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled:
    - {shard-rkl}:        [SKIP][110] ([fdo#111314]) -> [PASS][111] +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html

  * igt@kms_flip@2x-flip-vs-modeset-vs-hang@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [DMESG-WARN][112] ([i915#118] / [i915#1888]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-glk8/igt@kms_flip@2x-flip-vs-modeset-vs-hang@ab-hdmi-a1-hdmi-a2.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-glk1/igt@kms_flip@2x-flip-vs-modeset-vs-hang@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
    - shard-iclb:         [SKIP][114] ([i915#3701]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc:
    - {shard-rkl}:        [SKIP][116] ([i915#4098]) -> [PASS][117] +2 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff:
    - shard-glk:          [FAIL][118] ([i915#1888] / [i915#2546]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite:
    - {shard-rkl}:        ([SKIP][120], [SKIP][121]) ([i915#1849] / [i915#4098]) -> [PASS][122]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-b:
    - {shard-rkl}:        [SKIP][123] ([i915#1849]) -> [PASS][124] +5 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-b.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-rkl-6/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant:
    - {shard-rkl}:        [SKIP][125] ([i915#1849] / [i915#4070]) -> [PASS][126] +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant.html

  * igt@kms_prime@basic-crc@second-to-first:
    - {shard-tglu}:       [FAIL][127] ([i915#402]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-tglu-1/igt@kms_prime@basic-crc@second-to-first.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglu-2/igt@kms_prime@basic-crc@second-to-first.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][129] ([fdo#109441]) -> [PASS][130] +2 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb6/igt@kms_psr@psr2_sprite_blt.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [DMESG-WARN][131] ([i915#5076]) -> [SKIP][132] ([i915#4525]) +1 similar issue
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb2/igt@gem_exec_balancer@parallel.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb6/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [SKIP][133] ([i915#4525]) -> [DMESG-WARN][134] ([i915#5076]) +1 similar issue
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb5/igt@gem_exec_balancer@parallel-bb-first.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-iclb:         [SKIP][135] ([i915#2920]) -> [SKIP][136] ([fdo#111068] / [i915#658])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-iclb:         [SKIP][137] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [FAIL][138] ([i915#4148])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb5/igt@kms_psr2_su@page_flip-nv12.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html

  

### Piglit changes ###

#### Issues hit ####

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat2x4-position-uint_uvec2:
    - pig-skl-6260u:      NOTRUN -> [FAIL][139] ([i915#5167]) +710 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/pig-skl-6260u/spec@glsl-4.20@execut

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/index.html

--===============5628521183734280666==
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
<tr><td><b>Series:</b></td><td>drm/i915: Use the memcpy_from_wc function from drm</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100581/">https://patchwork.freedesktop.org/series/100581/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11268_full -&gt; Patchwork_22356_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22356_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22356_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22356_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-dg1-12/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html">DMESG-FAIL</a> ([i915#4892]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-dg1-19/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html">FAIL</a></li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>spec@glsl-4.20@execution@vs_in@vs-input-double_dmat3-position-double_dmat3_array2:<ul>
<li>pig-skl-6260u:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/pig-skl-6260u/spec@glsl-4.20@execution@vs_in@vs-input-double_dmat3-position-double_dmat3_array2.html">INCOMPLETE</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22356_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@display-3x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@feature_discovery@display-3x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-many:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-glk1/igt@gem_ctx_persistence@heartbeat-many.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-glk7/igt@gem_ctx_persistence@heartbeat-many.html">DMESG-WARN</a> ([i915#118]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb3/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb6/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-blt:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@gem_exec_params@no-blt.html">SKIP</a> ([fdo#109283])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb1/igt@gem_exec_params@no-blt.html">SKIP</a> ([fdo#109283])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb3/igt@gem_exec_whisper@basic-queues-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb4/igt@gem_exec_whisper@basic-queues-forked-all.html">INCOMPLETE</a> ([i915#1895])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb1/igt@gem_lmem_swapping@basic.html">SKIP</a> ([i915#4613])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@gem_lmem_swapping@basic.html">SKIP</a> ([i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@gem_pxp@regular-baseline-src-copy-readible.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@gem_pxp@reject-modify-context-protection-off-1.html">SKIP</a> ([i915#4270]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-yf-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb3/igt@gem_render_copy@linear-to-vebox-yf-tiled.html">SKIP</a> ([i915#768]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb1/igt@gem_userptr_blits@unsync-unmap.html">SKIP</a> ([i915#3297])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@gem_userptr_blits@unsync-unmap.html">SKIP</a> ([i915#3297])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@gen9_exec_parse@secure-batches.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb4/igt@i915_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@i915_pm_lpsp@screens-disabled.html">SKIP</a> ([i915#1902])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@kms_big_fb@linear-64bpp-rotate-90.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-green-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@kms_color@pipe-d-ctm-green-to-red.html">SKIP</a> ([fdo#109278] / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-degamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@kms_color_chamelium@pipe-b-degamma.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-degamma:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@kms_color_chamelium@pipe-d-degamma.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb3/igt@kms_color_chamelium@pipe-d-degamma.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content_type_change:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@kms_content_protection@content_type_change.html">SKIP</a> ([fdo#109300] / [fdo#111066]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x170-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-512x170-onscreen.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x170-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@kms_cursor_crc@pipe-c-cursor-512x170-rapid-movement.html">SKIP</a> ([fdo#109278]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> ([fdo#109274] / [fdo#111825]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> ([i915#3528])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb1/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-edp1:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb4/igt@kms_flip@flip-vs-suspend@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb3/igt@kms_flip@flip-vs-suspend@c-edp1.html">DMESG-WARN</a> ([i915#2867])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">SKIP</a> ([i915#2587])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-glk7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">FAIL</a> ([i915#4911])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#2587])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html">SKIP</a> ([fdo#109280] / [fdo#111825]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> ([fdo#109280]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> ([i915#1187])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb1/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> ([i915#1187])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html">SKIP</a> ([fdo#109289])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb3/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html">SKIP</a> ([fdo#109289]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-a-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@kms_plane_multiple@atomic-pipe-a-tiling-yf.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html">SKIP</a> ([fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb3/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> ([fdo#109642] / [fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb2/igt@kms_psr@psr2_primary_render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb6/igt@kms_psr@psr2_primary_render.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_onoff:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@kms_psr@psr2_sprite_plane_onoff.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-source-outp-inactive:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb3/igt@nouveau_crc@pipe-b-source-outp-inactive.html">SKIP</a> ([i915#2530]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@nouveau_crc@pipe-b-source-outp-inactive.html">SKIP</a> ([i915#2530])</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_3:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb8/igt@prime_nv_pcopy@test3_3.html">SKIP</a> ([fdo#109291]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test_semaphore:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb5/igt@prime_nv_pcopy@test_semaphore.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb5/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#3063]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-rkl-1/igt@gem_eio@unwedge-stress.html">PASS</a></p>
</li>
<li>
<p>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-tglu-5/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#3063] / [i915#3648]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglu-2/igt@gem_eio@unwedge-stress.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG-WARN</a> ([i915#4936]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@i915_pm_rps@reset.html">FAIL</a> ([i915#4016]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-rkl-1/igt@i915_pm_rps@reset.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@waitboost:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-dg1-19/igt@i915_pm_rps@waitboost.html">FAIL</a> ([i915#3719]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-dg1-16/igt@i915_pm_rps@waitboost.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-dg1-16/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> ([i915#4494] / [i915#4957]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-dg1-17/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-4/igt@kms_async_flips@invalid-async-flip.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_async_flips@invalid-async-flip.html">SKIP</a>) ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-rkl-6/igt@kms_async_flips@invalid-async-flip.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-tglu-5/igt@kms_big_fb@linear-32bpp-rotate-180.html">DMESG-WARN</a> ([i915#402]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglu-2/igt@kms_big_fb@linear-32bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-glk9/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html">DMESG-WARN</a> ([i915#118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-glk6/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-rkl-6/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-blue-to-red:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_color@pipe-b-ctm-blue-to-red.html">SKIP</a> ([i915#1149] / [i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-rkl-6/igt@kms_color@pipe-b-ctm-blue-to-red.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-glk8/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html">FAIL</a> ([i915#1888] / [i915#3444]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-glk1/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">SKIP</a> ([fdo#111825] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html">SKIP</a> ([fdo#111314]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset-vs-hang@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-glk8/igt@kms_flip@2x-flip-vs-modeset-vs-hang@ab-hdmi-a1-hdmi-a2.html">DMESG-WARN</a> ([i915#118] / [i915#1888]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-glk1/igt@kms_flip@2x-flip-vs-modeset-vs-hang@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html">SKIP</a> ([i915#3701]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff.html">FAIL</a> ([i915#1888] / [i915#2546]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a>) ([i915#1849] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-b:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-b.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-rkl-6/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-b.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant.html">SKIP</a> ([i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc@second-to-first:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-tglu-1/igt@kms_prime@basic-crc@second-to-first.html">FAIL</a> ([i915#402]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-tglu-2/igt@kms_prime@basic-crc@second-to-first.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb6/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb2/igt@gem_exec_balancer@parallel.html">DMESG-WARN</a> ([i915#5076]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb6/igt@gem_exec_balancer@parallel.html">SKIP</a> ([i915#4525]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb5/igt@gem_exec_balancer@parallel-bb-first.html">SKIP</a> ([i915#4525]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html">DMESG-WARN</a> ([i915#5076]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html">SKIP</a> ([i915#2920]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html">SKIP</a> ([fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/shard-iclb5/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> ([fdo#109642] / [fdo#111068] / [i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html">FAIL</a> ([i915#4148])</li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Issues hit</h4>
<ul>
<li>spec@glsl-4.20@execution@vs_in@vs-input-double_dmat2x4-position-uint_uvec2:<ul>
<li>pig-skl-6260u:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/pig-skl-6260u/spec@glsl-4.20@execut">FAIL</a> ([i915#5167]) +710 similar issues</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5628521183734280666==--
