Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4A34BEFC3
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 04:01:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3175810E588;
	Tue, 22 Feb 2022 03:01:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8527B10E585;
 Tue, 22 Feb 2022 03:01:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 80843A0118;
 Tue, 22 Feb 2022 03:01:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6634903777436659760=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Tue, 22 Feb 2022 03:01:11 -0000
Message-ID: <164549887148.23044.17072865761300653685@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220221191031.267690-1-jose.souza@intel.com>
In-Reply-To: <20220221191031.267690-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Simply_subplatform_detection?=
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

--===============6634903777436659760==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/tgl: Simply subplatform detection
URL   : https://patchwork.freedesktop.org/series/100517/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11264_full -> Patchwork_22345_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_22345_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_capture@pi@bcs0:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2] ([i915#3371])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-iclb8/igt@gem_exec_capture@pi@bcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb6/igt@gem_exec_capture@pi@bcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][3] -> [FAIL][4] ([i915#2842])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#2842])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-iclb:         [PASS][7] -> [FAIL][8] ([i915#2842])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb8/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_whisper@basic-forked:
    - shard-glk:          [PASS][9] -> [DMESG-WARN][10] ([i915#118]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-glk2/igt@gem_exec_whisper@basic-forked.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-glk2/igt@gem_exec_whisper@basic-forked.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-kbl:          NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#4613]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-kbl7/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-skl:          NOTRUN -> [SKIP][12] ([fdo#109271] / [i915#4613])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-skl4/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-apl:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#4613])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-apl1/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-skl:          NOTRUN -> [WARN][14] ([i915#2658])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-skl4/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-iclb:         NOTRUN -> [SKIP][15] ([i915#4270])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb3/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][16] ([i915#768]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb5/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-kbl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#3323])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-kbl7/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@i915_selftest@mock@hugepages:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][18] ([i915#5123])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-kbl4/igt@i915_selftest@mock@hugepages.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-kbl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#3777])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-kbl7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-apl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#3777]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-apl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][23] ([fdo#110723])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb5/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-skl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#3777])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-apl:          NOTRUN -> [SKIP][25] ([fdo#109271]) +113 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-apl4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3886]) +4 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-apl4/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][27] ([fdo#109278] / [i915#3886]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb5/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3886]) +3 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-kbl7/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#3886]) +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-skl4/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-kbl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-kbl4/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb5/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-5:
    - shard-apl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-apl7/igt@kms_color_chamelium@pipe-a-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-c-ctm-negative:
    - shard-skl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-skl4/igt@kms_color_chamelium@pipe-c-ctm-negative.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
    - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271]) +48 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-32x32-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#109278]) +5 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-32x32-rapid-movement.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([i915#2346] / [i915#533])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-skl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#533])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-skl4/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#533]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-apl7/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip@2x-plain-flip-fb-recreate:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109274])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb5/igt@kms_flip@2x-plain-flip-fb-recreate.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          NOTRUN -> [DMESG-WARN][41] ([i915#180])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-apl2/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109280]) +3 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:
    - shard-kbl:          NOTRUN -> [SKIP][43] ([fdo#109271]) +80 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][44] -> [DMESG-WARN][45] ([i915#180]) +4 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][46] -> [FAIL][47] ([i915#1188])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-skl7/igt@kms_hdr@bpc-switch.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-skl10/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-kbl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#533])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-kbl6/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][49] ([fdo#108145] / [i915#265]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][50] -> [FAIL][51] ([fdo#108145] / [i915#265]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][52] ([fdo#108145] / [i915#265]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-iclb:         NOTRUN -> [SKIP][53] ([i915#3536]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb7/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-skl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#2733])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-skl4/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-iclb:         NOTRUN -> [SKIP][55] ([fdo#111068] / [i915#658])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-skl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#658])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-skl4/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-kbl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#658])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-kbl6/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][58] -> [SKIP][59] ([fdo#109441]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb8/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][60] -> [FAIL][61] ([i915#31])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-glk5/igt@kms_setmode@basic.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-glk4/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][62] -> [DMESG-WARN][63] ([i915#180] / [i915#295])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-skl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#2437])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-skl4/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:
    - shard-iclb:         NOTRUN -> [SKIP][65] ([i915#2530]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb3/igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame.html

  * igt@perf_pmu@module-unload:
    - shard-iclb:         NOTRUN -> [FAIL][66] ([i915#5136])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb5/igt@perf_pmu@module-unload.html

  * igt@prime_nv_pcopy@test1_macro:
    - shard-tglb:         NOTRUN -> [SKIP][67] ([fdo#109291])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-tglb5/igt@prime_nv_pcopy@test1_macro.html
    - shard-iclb:         NOTRUN -> [SKIP][68] ([fdo#109291])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb7/igt@prime_nv_pcopy@test1_macro.html

  * igt@sysfs_clients@create:
    - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#2994]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-apl2/igt@sysfs_clients@create.html

  
#### Possible fixes ####

  * igt@gem_exec_capture@pi@vcs0:
    - {shard-tglu}:       [INCOMPLETE][70] ([i915#3371]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-tglu-3/igt@gem_exec_capture@pi@vcs0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-tglu-8/igt@gem_exec_capture@pi@vcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][72] ([i915#2842]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-kbl:          [FAIL][74] ([i915#2842]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-kbl3/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][76] ([i915#2842]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - {shard-rkl}:        [FAIL][78] ([i915#2842]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-kbl:          [DMESG-WARN][80] ([i915#180]) -> [PASS][81] +2 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-kbl1/igt@gem_exec_suspend@basic-s3@smem.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-kbl6/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_pm_dc@dc5-psr:
    - {shard-rkl}:        [SKIP][82] ([i915#658]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-1/igt@i915_pm_dc@dc5-psr.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - {shard-dg1}:        [SKIP][84] ([i915#1397]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-dg1-12/igt@i915_pm_rpm@dpms-non-lpsp.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-dg1-18/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@kms_big_fb@linear-16bpp-rotate-180:
    - {shard-tglu}:       [DMESG-WARN][86] ([i915#402]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-tglu-4/igt@kms_big_fb@linear-16bpp-rotate-180.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-tglu-2/igt@kms_big_fb@linear-16bpp-rotate-180.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-glk:          [DMESG-WARN][88] ([i915#118]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-glk5/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - {shard-rkl}:        ([PASS][90], [SKIP][91]) ([i915#1845]) -> [PASS][92]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-6/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-4/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_color@pipe-b-ctm-max:
    - {shard-rkl}:        [SKIP][93] ([i915#1149] / [i915#1849] / [i915#4070]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-1/igt@kms_color@pipe-b-ctm-max.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_color@pipe-b-ctm-max.html

  * igt@kms_cursor_crc@pipe-b-cursor-dpms:
    - {shard-rkl}:        [SKIP][95] ([fdo#112022] / [i915#4070]) -> [PASS][96] +3 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-dpms.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-dpms.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge:
    - {shard-rkl}:        [SKIP][97] ([i915#1849] / [i915#4070]) -> [PASS][98] +3 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-1/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - {shard-rkl}:        [SKIP][99] ([fdo#111825] / [i915#4070]) -> [PASS][100] +2 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-1/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-untiled:
    - {shard-rkl}:        [SKIP][101] ([fdo#111314]) -> [PASS][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-1/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-ytiled:
    - {shard-rkl}:        ([SKIP][103], [SKIP][104]) ([fdo#111314] / [i915#4098]) -> [PASS][105]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-ytiled.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-ytiled.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-ytiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - {shard-rkl}:        [SKIP][106] ([i915#1849]) -> [PASS][107] +17 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-1/igt@kms_fbcon_fbt@fbc-suspend.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [FAIL][108] ([i915#79]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-glk:          [FAIL][110] ([i915#4911]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-glk7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
    - {shard-rkl}:        [INCOMPLETE][112] ([i915#3701]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:
    - {shard-rkl}:        ([SKIP][114], [PASS][115]) ([i915#4098]) -> [PASS][116]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html

  * igt@kms_invalid_mode@zero-vdisplay:
    - {shard-rkl}:        [SKIP][117] ([i915#4278]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-1/igt@kms_invalid_mode@zero-vdisplay.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_invalid_mode@zero-vdisplay.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - {shard-rkl}:        ([SKIP][119], [SKIP][120]) ([i915#1849] / [i915#4098]) -> [PASS][121] +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - shard-apl:          [DMESG-WARN][122] ([i915#180]) -> [PASS][123] +3 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - {shard-rkl}:        ([SKIP][124], [SKIP][125]) ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][126]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-64:
    - {shard-rkl}:        [SKIP][127] ([i915#1845]) -> [PASS][128] +15 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-1/igt@kms_plane_cursor@pipe-a-overlay-size-64.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_plane_cursor@pipe-a-overlay-size-64.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][129] ([fdo#109441]) -> [PASS][130] +3 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-iclb4/igt@kms_psr@psr2_primary_page_flip.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_psr@sprite_plane_move:
    - {shard-rkl}:        [SKIP][131] ([i915#1072]) -> [PASS][132] +2 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-1/igt@kms_psr@sprite_plane_move.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_psr@sprite_plane_move.html

  * igt@kms_vblank@pipe-b-wait-forked-busy:
    - {shard-rkl}:        ([SKIP][133], [SKIP][134]) ([i915#1845]) -> [PASS][135] +2 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-1/igt@kms_vblank@pipe-b-wait-forked-busy.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-4/igt@kms_vblank@pipe-b-wait-forked-busy.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_vblank@pipe-b-wait-forked-busy.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [SKIP][136] ([i915#4525]) -> [DMESG-WARN][137] ([i915#5076])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-iclb7/igt@gem_exec_balancer@parallel.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb1/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [DMESG-WARN][138] ([i915#5076]) -> [SKIP][139] ([i915#4525])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb8/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [DMESG-FAIL][140] ([i915#5076]) -> [SKIP][141] ([i915#4525])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-iclb4/igt@gem_exec_balancer@parallel-ordering.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb5/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][142] ([i915#2842]) -> [FAIL][143] ([i915#2849])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-iclb:         [SKIP][144] ([fdo#111068] / [i915#658]) -> [S

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/index.html

--===============6634903777436659760==
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
<tr><td><b>Series:</b></td><td>drm/i915/tgl: Simply subplatform detection</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100517/">https://patchwork.freedesktop.org/series/100517/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11264_full -&gt; Patchwork_22345_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22345_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_capture@pi@bcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-iclb8/igt@gem_exec_capture@pi@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb6/igt@gem_exec_capture@pi@bcs0.html">INCOMPLETE</a> ([i915#3371])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb8/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-glk2/igt@gem_exec_whisper@basic-forked.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-glk2/igt@gem_exec_whisper@basic-forked.html">DMESG-WARN</a> ([i915#118]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-kbl7/igt@gem_lmem_swapping@heavy-verify-random.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-skl4/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-apl1/igt@gem_lmem_swapping@smem-oom.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-skl4/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb3/igt@gem_pxp@reject-modify-context-protection-off-1.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb5/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html">SKIP</a> ([i915#768]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-kbl7/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@hugepages:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-kbl4/igt@i915_selftest@mock@hugepages.html">INCOMPLETE</a> ([i915#5123])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-kbl7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-apl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb5/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-apl4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html">SKIP</a> ([fdo#109271]) +113 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-apl4/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb5/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-kbl7/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-skl4/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-kbl4/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb5/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-apl7/igt@kms_color_chamelium@pipe-a-ctm-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-negative:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-skl4/igt@kms_color_chamelium@pipe-c-ctm-negative.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html">SKIP</a> ([fdo#109271]) +48 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-32x32-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-32x32-rapid-movement.html">SKIP</a> ([fdo#109278]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-skl4/igt@kms_cursor_legacy@pipe-d-single-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-apl7/igt@kms_cursor_legacy@pipe-d-torture-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb5/igt@kms_flip@2x-plain-flip-fb-recreate.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-apl2/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#109280]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +80 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</a> ([i915#180]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-skl7/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-skl10/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-kbl6/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb7/igt@kms_plane_lowres@pipe-a-tiling-x.html">SKIP</a> ([i915#3536]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-skl4/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html">SKIP</a> ([fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-skl4/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-kbl6/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb8/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-glk5/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-glk4/igt@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DMESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-skl4/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb3/igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame.html">SKIP</a> ([i915#2530]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb5/igt@perf_pmu@module-unload.html">FAIL</a> ([i915#5136])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test1_macro:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-tglb5/igt@prime_nv_pcopy@test1_macro.html">SKIP</a> ([fdo#109291])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb7/igt@prime_nv_pcopy@test1_macro.html">SKIP</a> ([fdo#109291])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-apl2/igt@sysfs_clients@create.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_capture@pi@vcs0:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-tglu-3/igt@gem_exec_capture@pi@vcs0.html">INCOMPLETE</a> ([i915#3371]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-tglu-8/igt@gem_exec_capture@pi@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-kbl3/igt@gem_exec_fair@basic-none@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></p>
</li>
<li>
<p>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-kbl1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-kbl6/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-psr:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-1/igt@i915_pm_dc@dc5-psr.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@i915_pm_dc@dc5-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-dg1-12/igt@i915_pm_rpm@dpms-non-lpsp.html">SKIP</a> ([i915#1397]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-dg1-18/igt@i915_pm_rpm@dpms-non-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-180:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-tglu-4/igt@kms_big_fb@linear-16bpp-rotate-180.html">DMESG-WARN</a> ([i915#402]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-tglu-2/igt@kms_big_fb@linear-16bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-180.html">DMESG-WARN</a> ([i915#118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-glk5/igt@kms_big_fb@linear-32bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-6/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-4/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a>) ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-max:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-1/igt@kms_color@pipe-b-ctm-max.html">SKIP</a> ([i915#1149] / [i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_color@pipe-b-ctm-max.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-dpms:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-dpms.html">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-dpms.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-1/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.html">SKIP</a> ([i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-1/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">SKIP</a> ([fdo#111825] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-blt-untiled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-1/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html">SKIP</a> ([fdo#111314]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-pwrite-ytiled:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-ytiled.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-ytiled.html">SKIP</a>) ([fdo#111314] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-ytiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-1/igt@kms_fbcon_fbt@fbc-suspend.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">FAIL</a> ([i915#4911]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-glk7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">PASS</a></p>
</li>
<li>
<p>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">INCOMPLETE</a> ([i915#3701]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html">PASS</a>) ([i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-vdisplay:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-1/igt@kms_invalid_mode@zero-vdisplay.html">SKIP</a> ([i915#4278]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_invalid_mode@zero-vdisplay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">SKIP</a>) ([i915#1849] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">SKIP</a>) ([i915#1849] / [i915#4070] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-overlay-size-64:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-1/igt@kms_plane_cursor@pipe-a-overlay-size-64.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_plane_cursor@pipe-a-overlay-size-64.html">PASS</a> +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-iclb4/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_move:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-1/igt@kms_psr@sprite_plane_move.html">SKIP</a> ([i915#1072]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_psr@sprite_plane_move.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-wait-forked-busy:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-1/igt@kms_vblank@pipe-b-wait-forked-busy.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-rkl-4/igt@kms_vblank@pipe-b-wait-forked-busy.html">SKIP</a>) ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-rkl-6/igt@kms_vblank@pipe-b-wait-forked-busy.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-iclb7/igt@gem_exec_balancer@parallel.html">SKIP</a> ([i915#4525]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb1/igt@gem_exec_balancer@parallel.html">DMESG-WARN</a> ([i915#5076])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html">DMESG-WARN</a> ([i915#5076]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb8/igt@gem_exec_balancer@parallel-bb-first.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-iclb4/igt@gem_exec_balancer@parallel-ordering.html">DMESG-FAIL</a> ([i915#5076]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb5/igt@gem_exec_balancer@parallel-ordering.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22345/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2849])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         [SKIP][144] ([fdo#111068] / [i915#658]) -&gt; [S</li>
</ul>
</li>
</ul>

</body>
</html>

--===============6634903777436659760==--
