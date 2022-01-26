Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A5049C6FC
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 11:00:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27FC410E35E;
	Wed, 26 Jan 2022 10:00:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CFB4D10E56D;
 Wed, 26 Jan 2022 10:00:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CAE07A882E;
 Wed, 26 Jan 2022 10:00:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2114608522818707781=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 26 Jan 2022 10:00:34 -0000
Message-ID: <164319123478.25402.900969841818176805@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220124192638.26262-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220124192638.26262-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/5=5D_drm/i915=3A_Skip_dsc_readout_if_the?=
 =?utf-8?q?_transcoder_is_disabled_=28rev3=29?=
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

--===============2114608522818707781==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/5] drm/i915: Skip dsc readout if the transcoder is disabled (rev3)
URL   : https://patchwork.freedesktop.org/series/99276/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11137_full -> Patchwork_22107_full
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

  Here are the changes found in Patchwork_22107_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([i915#4525])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-iclb4/igt@gem_exec_balancer@parallel-balancer.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-iclb6/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#2842])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][5] ([i915#2842])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][6] -> [FAIL][7] ([i915#2849])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][8] ([i915#180])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-kbl7/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][9] -> [SKIP][10] ([i915#2190])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-tglb3/igt@gem_huc_copy@huc-copy.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@random:
    - shard-apl:          NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#4613]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-apl1/igt@gem_lmem_swapping@random.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-tglb:         NOTRUN -> [SKIP][12] ([i915#4270])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_render_copy@linear-to-vebox-y-tiled:
    - shard-apl:          NOTRUN -> [SKIP][13] ([fdo#109271]) +57 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-apl2/igt@gem_render_copy@linear-to-vebox-y-tiled.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-tglb:         NOTRUN -> [SKIP][14] ([fdo#110542])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@input-checking:
    - shard-apl:          NOTRUN -> [DMESG-WARN][15] ([i915#4990])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-apl1/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@readonly-unsync:
    - shard-tglb:         NOTRUN -> [SKIP][16] ([i915#3297])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@gem_userptr_blits@readonly-unsync.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [FAIL][17] ([i915#3318])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-apl2/igt@gem_userptr_blits@vma-merge.html
    - shard-kbl:          NOTRUN -> [FAIL][18] ([i915#3318])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-kbl4/igt@gem_userptr_blits@vma-merge.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-apl2/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-tglb:         NOTRUN -> [SKIP][21] ([i915#2527] / [i915#2856])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@gen9_exec_parse@batch-zero-length.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][22] -> [FAIL][23] ([i915#454])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [PASS][24] -> [DMESG-WARN][25] ([i915#180]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-kbl1/igt@i915_suspend@fence-restore-untiled.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-kbl7/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-tglb:         NOTRUN -> [SKIP][26] ([i915#3826])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
    - shard-tglb:         NOTRUN -> [SKIP][27] ([fdo#111615])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3886])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-kbl1/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#3886]) +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-apl7/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][30] ([i915#3689] / [i915#3886])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][31] ([i915#3689])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_ccs.html

  * igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][32] ([fdo#111615] / [i915#3689])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-5:
    - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-apl1/igt@kms_color_chamelium@pipe-a-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-d-ctm-max:
    - shard-kbl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-kbl6/igt@kms_color_chamelium@pipe-d-ctm-max.html

  * igt@kms_color_chamelium@pipe-d-degamma:
    - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-skl5/igt@kms_color_chamelium@pipe-d-degamma.html
    - shard-tglb:         NOTRUN -> [SKIP][36] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@kms_color_chamelium@pipe-d-degamma.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          NOTRUN -> [TIMEOUT][37] ([i915#1319])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-kbl6/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][38] ([i915#3319])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-max-size-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][39] ([i915#3359])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-max-size-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][40] ([fdo#109279] / [i915#3359]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen.html

  * igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge:
    - shard-kbl:          NOTRUN -> [SKIP][41] ([fdo#109271]) +50 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-kbl6/igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][42] -> [FAIL][43] ([i915#2346])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][44] ([fdo#109274] / [fdo#111825]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#2122])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([i915#3701])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-glk:          [PASS][49] -> [FAIL][50] ([i915#2546])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-glk7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-glk9/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-tglb:         NOTRUN -> [SKIP][51] ([fdo#109280] / [fdo#111825]) +5 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:
    - shard-iclb:         [PASS][52] -> [FAIL][53] ([i915#1888] / [i915#2546])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-iclb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-iclb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][54] -> [FAIL][55] ([i915#1188])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-skl8/igt@kms_hdr@bpc-switch.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-skl3/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-skl:          NOTRUN -> [SKIP][56] ([fdo#109271]) +19 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-skl5/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-apl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#533])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-apl2/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
    - shard-kbl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#533])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-kbl4/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][59] ([fdo#108145] / [i915#265]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_plane_lowres@pipe-c-tiling-x:
    - shard-tglb:         NOTRUN -> [SKIP][60] ([i915#3536])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@kms_plane_lowres@pipe-c-tiling-x.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-tglb:         NOTRUN -> [FAIL][61] ([i915#132] / [i915#3467])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@kms_psr@psr2_primary_page_flip.html

  * igt@nouveau_crc@pipe-c-ctx-flip-detection:
    - shard-tglb:         NOTRUN -> [SKIP][62] ([i915#2530])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@nouveau_crc@pipe-c-ctx-flip-detection.html

  * igt@sysfs_clients@fair-3:
    - shard-kbl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#2994])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-kbl7/igt@sysfs_clients@fair-3.html
    - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#2994])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-apl1/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@pidname:
    - shard-tglb:         NOTRUN -> [SKIP][65] ([i915#2994])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@sysfs_clients@pidname.html

  
#### Possible fixes ####

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [FAIL][66] ([i915#232]) -> [PASS][67] +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-tglb2/igt@gem_eio@unwedge-stress.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-tglb7/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [FAIL][68] ([i915#2842]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-kbl:          [FAIL][70] ([i915#2842]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-kbl6/igt@gem_exec_fair@basic-none@vcs1.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-kbl7/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][72] ([i915#2842]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_madvise@dontneed-before-exec:
    - shard-skl:          [DMESG-WARN][74] ([i915#1982]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-skl1/igt@gem_madvise@dontneed-before-exec.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-skl8/igt@gem_madvise@dontneed-before-exec.html

  * igt@gem_softpin@allocator-evict-all-engines:
    - shard-glk:          [FAIL][76] ([i915#4171]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-glk7/igt@gem_softpin@allocator-evict-all-engines.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-glk9/igt@gem_softpin@allocator-evict-all-engines.html

  * igt@i915_pm_rpm@reg-read-ioctl:
    - shard-tglb:         [INCOMPLETE][78] ([i915#1373] / [i915#2411]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-tglb6/igt@i915_pm_rpm@reg-read-ioctl.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@i915_pm_rpm@reg-read-ioctl.html

  * igt@i915_pm_sseu@full-enable:
    - shard-skl:          [FAIL][80] -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-skl1/igt@i915_pm_sseu@full-enable.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-skl2/igt@i915_pm_sseu@full-enable.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][82] ([i915#79]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][84] ([i915#2122]) -> [PASS][85] +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [FAIL][86] ([i915#79]) -> [PASS][87] +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][88] ([i915#180]) -> [PASS][89] +4 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [DMESG-WARN][90] ([i915#180]) -> [PASS][91] +5 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][92] ([i915#1188]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][94] ([fdo#108145] / [i915#265]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][96] ([fdo#109441]) -> [PASS][97] +2 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-iclb6/igt@kms_psr@psr2_no_drrs.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][98] ([i915#1804] / [i915#2684]) -> [WARN][99] ([i915#2684]) +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-skl:          [SKIP][100] ([fdo#109271] / [i915#3886]) -> [SKIP][101] ([fdo#109271] / [i915#1888] / [i915#3886])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-skl6/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-skl9/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [INCOMPLETE][102] ([i915#180] / [i915#636]) -> [INCOMPLETE][103] ([i915#636])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-kbl:          [DMESG-WARN][104] ([i915#180]) -> [INCOMPLETE][105] ([i915#3614])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-cpu:
    - shard-skl:          [SKIP][106] ([fdo#109271] / [i915#1888]) -> [SKIP][107] ([fdo#109271])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-skl6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-skl2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-skl:          [SKIP][108] ([fdo#109271] / [i915#533]) -> [SKIP][109] ([fdo#109271] / [i915#1888] / [i915#533])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-skl6/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-skl9/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-iclb:         [SKIP][110] ([i915#2920]) -> [SKIP][111] ([fdo#111068] / [i915#658])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-iclb1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][112] ([fdo#111068] / [i915#658]) -> [SKIP][113] ([i915#2920])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-iclb:         [FAIL][114] ([i915#4148]) -> [SKIP][115] ([fdo#109642] / [fdo#111068] / [i915#658])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-iclb4/igt@kms_psr2_su@page_flip-p010.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#4312] / [i915#602] / [i915#92]) -> ([FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#4312] / [i915#602])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-kbl7/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-kbl7/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-kbl7/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-kbl7/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-kbl7/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-kbl7/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-kbl7/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-kbl7/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-kbl1/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-kbl7/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-kbl7/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-kbl7/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-kbl7/igt@runner@aborted.html
    - shard-apl:          ([FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#4312]) -> ([FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-apl2/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-apl3/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-apl3/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-apl3/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-apl1/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-apl1/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-apl6/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-apl2/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-apl8/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-apl6/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-apl1/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-apl2/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-apl6/igt@runner@aborted.html
    - shard-skl:          ([FAIL][142], [FAIL][143], [FAIL][144]) ([i915#3002] / [i915#4312]) -> ([FAIL][145], [FAIL][146], [FAIL][147]) ([i915#1814] / [i915#2029] / [i915#3002] / [i915#4312])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-skl10/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-skl1/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-skl6/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-skl1/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-skl3/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-skl10/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1373]: https://gitlab.freedesktop.org/drm/intel/issues/1373
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedeskto

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/index.html

--===============2114608522818707781==
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
<tr><td><b>Series:</b></td><td>series starting with [1/5] drm/i915: Skip ds=
c readout if the transcoder is disabled (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/99276/">https://patchwork.freedesktop.org/series/99276/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22107/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22107/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11137_full -&gt; Patchwork_22107_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22107_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-iclb4/igt@gem_exec_balancer@parallel-balancer.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2107/shard-iclb6/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> ([i=
915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
107/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i91=
5#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1=
.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_221=
07/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#=
2849])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-kbl7/igt@gem_exec_suspend@basic-s3@smem=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-tglb3/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-tgl=
b6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-apl1/igt@gem_lmem_swapping@random.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@gem_pxp@protected-raw-src-cop=
y-not-readible.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-y-tiled:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-apl2/igt@gem_render_copy@linear-to-vebo=
x-y-tiled.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a>) +57 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@gem_userptr_blits@coherency-s=
ync.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D110542">fdo#110542</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-apl1/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#4990])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-unsync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@gem_userptr_blits@readonly-un=
sync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22107/shard-apl2/igt@gem_userptr_blits@vma-merge.htm=
l">FAIL</a> ([i915#3318])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22107/shard-kbl4/igt@gem_userptr_blits@vma-merge.htm=
l">FAIL</a> ([i915#3318])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-apl6/igt@gem_workarounds@suspend-resume-context.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22107/shard-apl2/igt@gem_workarounds@suspend-resume-context.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i91=
5#180</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@gen9_exec_parse@batch-zero-le=
ngth.html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-iclb5/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-iclb6/=
igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-kbl1/igt@i915_suspend@fence-restore-untiled.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_221=
07/shard-kbl7/igt@i915_suspend@fence-restore-untiled.html">DMESG-WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a=
>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@kms_addfb_basic@invalid-smem-=
bo-on-discrete.html">SKIP</a> ([i915#3826])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@kms_big_fb@yf-tiled-32bpp-rot=
ate-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-kbl1/igt@kms_ccs@pipe-a-bad-pixel-forma=
t-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-apl7/igt@kms_ccs@pipe-b-crc-primary-rot=
ation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886]) +3 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@kms_ccs@pipe-b-missing-ccs-bu=
ffer-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@kms_ccs@pipe-c-random-ccs-dat=
a-y_tiled_ccs.html">SKIP</a> ([i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@kms_ccs@pipe-d-crc-primary-ba=
sic-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111615">fdo#111615</a> / [i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-apl1/igt@kms_color_chamelium@pipe-a-ctm=
-0-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-kbl6/igt@kms_color_chamelium@pipe-d-ctm=
-max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-degamma:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22107/shard-skl5/igt@kms_color_chamelium@pipe-d-dega=
mma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22107/shard-tglb5/igt@kms_color_chamelium@pipe-d-deg=
amma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-kbl6/igt@kms_content_protection@srm.htm=
l">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-=
32x32-onscreen.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-max-size-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-=
max-size-rapid-movement.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-=
512x512-offscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109279">fdo#109279</a> / [i915#3359]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-kbl6/igt@kms_cursor_edge_walk@pipe-d-64=
x64-left-edge.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a>) +50 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22107/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomi=
c-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@kms_flip@2x-flip-vs-absolute-=
wf_vblank-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22107/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a>=
 ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp=
-ytileccs-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22107/shard-iclb2/igt@kms_flip_scaled_crc@fli=
p-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#3701])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-glk7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-rende=
r.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_22107/shard-glk9/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-ren=
der.html">FAIL</a> ([i915#2546])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"h=
ttps://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +5 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-iclb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-=
shrfb-draw-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22107/shard-iclb8/igt@kms_frontbuffer_tracking@psr-1=
p-primscrn-pri-shrfb-draw-blt.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1888">i915#1888</a> / [i915#2546])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-skl8/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-skl3/ig=
t@kms_hdr@bpc-switch.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-skl5/igt@kms_hdr@static-toggle-dpms.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a>) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22107/shard-apl2/igt@kms_pipe_crc_basic@read-crc-pip=
e-d-frame-sequence.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22107/shard-kbl4/igt@kms_pipe_crc_basic@read-crc-pip=
e-d-frame-sequence.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D108145">fdo#108145</a> / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-x:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@kms_plane_lowres@pipe-c-tilin=
g-x.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@kms_psr@psr2_primary_page_fli=
p.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/132">i915#132</a> / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-ctx-flip-detection:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@nouveau_crc@pipe-c-ctx-flip-d=
etection.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22107/shard-kbl7/igt@sysfs_clients@fair-3.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo=
#109271</a> / [i915#2994])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22107/shard-apl1/igt@sysfs_clients@fair-3.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo=
#109271</a> / [i915#2994])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-tglb5/igt@sysfs_clients@pidname.html">S=
KIP</a> ([i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-tglb2/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#=
232]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2107/shard-tglb7/igt@gem_eio@unwedge-stress.html">PASS</a> +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22107/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-kbl6/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22107/shard-kbl7/igt@gem_exec_fair@basic-none@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22107/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-exec:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-skl1/igt@gem_madvise@dontneed-before-exec.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i=
915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22107/shard-skl8/igt@gem_madvise@dontneed-before-exec.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict-all-engines:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-glk7/igt@gem_softpin@allocator-evict-all-engines.html">=
FAIL</a> ([i915#4171]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22107/shard-glk9/igt@gem_softpin@allocator-evict-all-engine=
s.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@reg-read-ioctl:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-tglb6/igt@i915_pm_rpm@reg-read-ioctl.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1373">i915#1=
373</a> / [i915#2411]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22107/shard-tglb5/igt@i915_pm_rpm@reg-read-ioctl.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-skl1/igt@i915_pm_sseu@full-enable.html">FAIL</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-s=
kl2/igt@i915_pm_sseu@full-enable.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptib=
le@ab-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-glk2/igt@kms_flip@2x-=
flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-=
hdmi-a2.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22107/shard-glk4/igt@kms_flip@2x-flip-vs-expi=
red-vblank@ab-hdmi-a1-hdmi-a2.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible=
@b-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22107/shard-skl10/igt@kms_flip@flip-vs-expired-=
vblank-interruptible@b-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22107/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptibl=
e@a-dp1.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22107/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptibl=
e@c-dp1.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107=
/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mi=
n.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D108145">fdo#108145</a> / [i915#265]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22107/shard-skl7/igt@kms_plane_alpha_blend=
@pipe-a-constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-iclb6/igt@kms_psr@psr2_no_drrs.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/s=
hard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#18=
04</a> / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22107/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html">=
WARN</a> ([i915#2684]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-skl6/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12=
_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / [i915#3886]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-skl9/igt@kms_ccs@pipe-b-c=
cs-on-another-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a> / [i915#3=
886])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180<=
/a> / [i915#636]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22107/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE<=
/a> ([i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22107/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptibl=
e@b-dp1.html">INCOMPLETE</a> ([i915#3614])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-skl6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pr=
i-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-skl2/igt@kms_frontb=
uffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-skl6/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / [i915#533]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22107/shard-skl9/igt@kms_pipe_crc_basic@hang-read-cr=
c-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1888">i915#1888</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22107/shard-iclb1/igt@kms_psr2_sf@overlay-primary-u=
pdate-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111068">fdo#111068</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11068">fdo#111068</a> / [i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22107/shard-iclb2/igt@kms_psr2_sf@primary-plan=
e-update-sf-dmg-area.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html">FAIL</a> ([i=
915#4148]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22107/shard-iclb4/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> =
/ <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111=
068</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-kbl7/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11137/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-kbl7/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11137/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-kbl7/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1137/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-kbl7/igt@runner@aborted.html=
">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180=
">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1814">i915#1814</a> / [i915#3002] / [i915#4312] / [i915#602] / [i915#92]) =
-&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/=
shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22107/shard-kbl7/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_221=
07/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-kbl7/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
22107/shard-kbl7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / [i915#3002] =
/ [i915#4312] / [i915#602])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-apl3/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11137/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-apl3/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11137/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-apl1/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1137/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-apl2/igt@runner@aborted.html=
">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1814">i915#1814</a> / [i915#3002] / [i915#4312]) -&gt; (<a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-apl8/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22107/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-apl1/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22107/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-apl6/=
igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/180">i915#180</a> / [i915#3002] / [i915#4312])<=
/p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11137/shard-skl10/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/shard-skl1/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11137/shard-skl6/igt@runner@aborted.html">FAIL</a>) ([i915#3002] / [i=
915#4312]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22107/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/shard-skl3/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22107/shard-skl10/igt@runner@aborted.html">FAIL</a>) (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=
=3D"https://gitlab.freedeskto">i915#2029</a> / [i915#3002] / [i915#4312])</=
p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============2114608522818707781==--
