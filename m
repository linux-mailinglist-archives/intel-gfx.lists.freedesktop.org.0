Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C851F4BECE6
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Feb 2022 23:06:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E27A410E489;
	Mon, 21 Feb 2022 22:06:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8FE7810E489;
 Mon, 21 Feb 2022 22:06:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8B6E9AA0ED;
 Mon, 21 Feb 2022 22:06:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0880074196910990101=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Mon, 21 Feb 2022 22:06:34 -0000
Message-ID: <164548119455.21413.6513209067773339961@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220221110356.5532-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220221110356.5532-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_Move_framestart=5Fdelay?=
 =?utf-8?q?_to_crtc=5Fstate?=
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

--===============0880074196910990101==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/4] drm/i915: Move framestart_delay to crtc_state
URL   : https://patchwork.freedesktop.org/series/100484/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11263_full -> Patchwork_22341_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22341_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22341_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22341_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_suspend@debugfs-reader:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-skl2/igt@i915_suspend@debugfs-reader.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl3/igt@i915_suspend@debugfs-reader.html

  
Known issues
------------

  Here are the changes found in Patchwork_22341_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-tglb:         [PASS][3] -> [TIMEOUT][4] ([i915#3063])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-tglb7/igt@gem_eio@in-flight-contexts-immediate.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-tglb6/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_exec_capture@pi@vecs0:
    - shard-iclb:         NOTRUN -> [INCOMPLETE][5] ([i915#3371])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-iclb8/igt@gem_exec_capture@pi@vecs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][6] -> [FAIL][7] ([i915#2842]) +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][8] -> [FAIL][9] ([i915#2842])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-apl:          [PASS][10] -> [FAIL][11] ([i915#2842])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-apl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-apl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][12] ([i915#2842])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-kbl:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#4613]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-kbl6/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-skl:          NOTRUN -> [WARN][14] ([i915#2658])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl2/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-iclb:         NOTRUN -> [SKIP][15] ([i915#4270])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-iclb7/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-tglb:         NOTRUN -> [SKIP][16] ([i915#4270])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-tglb7/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][17] ([i915#768])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-iclb8/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html

  * igt@gem_softpin@allocator-evict-all-engines:
    - shard-glk:          [PASS][18] -> [FAIL][19] ([i915#4171])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-glk2/igt@gem_softpin@allocator-evict-all-engines.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-glk1/igt@gem_softpin@allocator-evict-all-engines.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][20] -> [DMESG-WARN][21] ([i915#1436] / [i915#716])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-apl4/igt@gen9_exec_parse@allowed-all.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-apl7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_module_load@reload:
    - shard-skl:          [PASS][22] -> [DMESG-WARN][23] ([i915#1982]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-skl4/igt@i915_module_load@reload.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl8/igt@i915_module_load@reload.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#3777])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-apl6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglb:         [PASS][25] -> [FAIL][26] ([i915#3743])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-tglb7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-tglb6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3777])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-kbl6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-tglb:         NOTRUN -> [SKIP][28] ([fdo#111615])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-tglb7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#3886])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-apl6/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#3886]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-kbl6/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3886]) +4 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl7/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][32] ([i915#3689])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-tglb7/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-frame-dump:
    - shard-skl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl4/igt@kms_chamelium@dp-frame-dump.html

  * igt@kms_chamelium@vga-hpd-enable-disable-mode:
    - shard-kbl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-kbl6/igt@kms_chamelium@vga-hpd-enable-disable-mode.html

  * igt@kms_color_chamelium@pipe-b-ctm-blue-to-red:
    - shard-apl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-apl6/igt@kms_color_chamelium@pipe-b-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-25:
    - shard-tglb:         NOTRUN -> [SKIP][36] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-tglb7/igt@kms_color_chamelium@pipe-c-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-b-cursor-max-size-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][37] ([i915#3359]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-max-size-rapid-movement.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][38] -> [DMESG-WARN][39] ([i915#180]) +3 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x21-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109278]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-iclb7/igt@kms_cursor_crc@pipe-d-cursor-64x21-rapid-movement.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#533]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl2/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#109274] / [fdo#111825]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-tglb7/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#2122])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:
    - shard-kbl:          NOTRUN -> [SKIP][45] ([fdo#109271]) +49 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-pwrite:
    - shard-tglb:         NOTRUN -> [SKIP][46] ([fdo#109280] / [fdo#111825]) +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:
    - shard-skl:          NOTRUN -> [SKIP][47] ([fdo#109271]) +72 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][48] -> [DMESG-WARN][49] ([i915#180]) +4 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html
    - shard-skl:          NOTRUN -> [FAIL][50] ([i915#1188])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_invalid_mode@clock-too-high:
    - shard-tglb:         NOTRUN -> [SKIP][51] ([i915#4278])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-tglb7/igt@kms_invalid_mode@clock-too-high.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-kbl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#533])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-kbl3/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][53] ([i915#265])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][54] ([fdo#108145] / [i915#265]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][55] ([fdo#108145] / [i915#265]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-iclb:         NOTRUN -> [SKIP][56] ([i915#3536])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-iclb8/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#658]) +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl4/igt@kms_psr2_su@page_flip-xrgb8888.html
    - shard-kbl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#658])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-kbl3/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][59] -> [SKIP][60] ([fdo#109441]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-iclb7/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-tglb:         NOTRUN -> [FAIL][61] ([i915#132] / [i915#3467])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-tglb7/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][62] -> [DMESG-WARN][63] ([i915#180] / [i915#295])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#533])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-apl6/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#2437])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl2/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
    - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271]) +31 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-apl6/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html

  * igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:
    - shard-iclb:         NOTRUN -> [SKIP][67] ([i915#2530])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-iclb7/igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][68] -> [FAIL][69] ([i915#1542])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-skl3/igt@perf@polling-parameterized.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl8/igt@perf@polling-parameterized.html

  * igt@prime_nv_pcopy@test1_macro:
    - shard-tglb:         NOTRUN -> [SKIP][70] ([fdo#109291]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-tglb5/igt@prime_nv_pcopy@test1_macro.html
    - shard-iclb:         NOTRUN -> [SKIP][71] ([fdo#109291])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-iclb8/igt@prime_nv_pcopy@test1_macro.html

  * igt@syncobj_timeline@invalid-transfer-non-existent-point:
    - shard-skl:          NOTRUN -> [DMESG-WARN][72] ([i915#5098])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl7/igt@syncobj_timeline@invalid-transfer-non-existent-point.html

  * igt@sysfs_clients@busy:
    - shard-tglb:         NOTRUN -> [SKIP][73] ([i915#2994])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-tglb7/igt@sysfs_clients@busy.html

  * igt@sysfs_clients@sema-50:
    - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#2994])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-apl6/igt@sysfs_clients@sema-50.html

  * igt@sysfs_heartbeat_interval@mixed@rcs0:
    - shard-skl:          NOTRUN -> [FAIL][75] ([i915#1731])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl2/igt@sysfs_heartbeat_interval@mixed@rcs0.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][76] ([i915#658]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-iclb3/igt@feature_discovery@psr2.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-apl:          [DMESG-WARN][78] ([i915#180]) -> [PASS][79] +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-apl3/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-apl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_eio@suspend:
    - {shard-rkl}:        ([FAIL][80], [PASS][81]) ([i915#5115]) -> [PASS][82]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-4/igt@gem_eio@suspend.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-2/igt@gem_eio@suspend.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-rkl-6/igt@gem_eio@suspend.html

  * igt@gem_exec_capture@pi@bcs0:
    - shard-iclb:         [INCOMPLETE][83] ([i915#3371]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-iclb2/igt@gem_exec_capture@pi@bcs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-iclb8/igt@gem_exec_capture@pi@bcs0.html

  * igt@gem_exec_capture@pi@vcs1:
    - shard-tglb:         [INCOMPLETE][85] ([i915#3371]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-tglb1/igt@gem_exec_capture@pi@vcs1.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-tglb7/igt@gem_exec_capture@pi@vcs1.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-kbl:          [FAIL][87] ([i915#2842]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-kbl6/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_gttfill@all:
    - shard-glk:          [DMESG-WARN][89] ([i915#118]) -> [PASS][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-glk7/igt@gem_exec_gttfill@all.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-glk4/igt@gem_exec_gttfill@all.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-kbl:          [DMESG-WARN][91] ([i915#180]) -> [PASS][92] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-kbl6/igt@gem_exec_suspend@basic-s3@smem.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-kbl3/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][93] ([i915#1436] / [i915#716]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-skl8/igt@gen9_exec_parse@allowed-single.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl4/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [SKIP][95] ([i915#4281]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-iclb8/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - {shard-dg1}:        [SKIP][97] ([i915#1397]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-dg1-15/igt@i915_pm_rpm@dpms-non-lpsp.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-dg1-18/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@kms_async_flips@crc:
    - {shard-rkl}:        ([SKIP][99], [SKIP][100]) ([i915#1845]) -> [PASS][101] +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-2/igt@kms_async_flips@crc.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-4/igt@kms_async_flips@crc.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-rkl-6/igt@kms_async_flips@crc.html

  * igt@kms_color@pipe-b-legacy-gamma-reset:
    - {shard-rkl}:        [SKIP][102] ([i915#1849] / [i915#4070]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-2/igt@kms_color@pipe-b-legacy-gamma-reset.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-rkl-6/igt@kms_color@pipe-b-legacy-gamma-reset.html

  * igt@kms_concurrent@pipe-b:
    - {shard-rkl}:        [SKIP][104] ([i915#1845] / [i915#4070]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-2/igt@kms_concurrent@pipe-b.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-rkl-6/igt@kms_concurrent@pipe-b.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-random:
    - {shard-rkl}:        ([SKIP][106], [SKIP][107]) ([fdo#112022] / [i915#4070]) -> [PASS][108]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - {shard-rkl}:        [SKIP][109] ([fdo#112022] / [i915#4070]) -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-2/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge:
    - shard-skl:          [DMESG-WARN][111] ([i915#1982]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-skl4/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl9/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge:
    - {shard-dg1}:        [DMESG-WARN][113] ([i915#4892]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-dg1-15/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-dg1-18/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - {shard-rkl}:        [SKIP][115] ([fdo#111825]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-4/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-skl:          [FAIL][117] ([i915#2346]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_draw_crc@fill-fb:
    - {shard-rkl}:        [SKIP][119] ([fdo#111314]) -> [PASS][120] +3 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-2/igt@kms_draw_crc@fill-fb.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-rkl-6/igt@kms_draw_crc@fill-fb.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][121] ([i915#79]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-skl:          [INCOMPLETE][123] ([i915#4839]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-skl3/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl7/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-iclb:         [SKIP][125] ([i915#3701]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - {shard-rkl}:        [SKIP][127] ([i915#1849]) -> [PASS][128] +5 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:
    - {shard-rkl}:        [SKIP][129] ([i915#4098]) -> [PASS][130] +6 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
    - {shard-rkl}:        ([SKIP][131], [SKIP][132]) ([i915#1849] / [i915#4098]) -> [PASS][133]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html

  * igt@kms_invalid_mode@bad-hsync-start:
    - {shard-rkl}:        [SKIP][134] ([i915#4278]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-2/igt@kms_invalid_mode@bad-hsync-start.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-rkl-6/igt@kms_invalid_mode@bad-hsync-start.html

  * igt@kms_psr@cursor_mmap_gtt:
    - {shard-rkl}:        [SKIP][136] ([i915#1072]) -> [PASS][137] +1 similar issue
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-2/igt@kms_psr@cursor_mmap_gtt.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-rkl-6/igt@kms_psr@cursor_mmap_gtt.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][138] ([fdo#109441]) -> [PASS][139] +3 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_rotation_crc@sprite-rotation-270:
    - {shard-rkl}:        [SKIP][140] ([i915#1845]) -> [PASS][141] +11 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-2/igt@kms_rotation_crc@sprite-rotation-270.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-rkl-6/igt@kms_rotation_crc@sprite-rotation-270.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [SKIP][142] ([i915#4525]) -> [DMESG-FAIL][143] ([i915#5076])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html
   [143]: https://intel-gfx-ci.01

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/index.html

--===============0880074196910990101==
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
<tr><td><b>Series:</b></td><td>series starting with [1/4] drm/i915: Move framestart_delay to crtc_state</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100484/">https://patchwork.freedesktop.org/series/100484/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11263_full -&gt; Patchwork_22341_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22341_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22341_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22341_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_suspend@debugfs-reader:<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-skl2/igt@i915_suspend@debugfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl3/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22341_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-tglb7/igt@gem_eio@in-flight-contexts-immediate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-tglb6/igt@gem_eio@in-flight-contexts-immediate.html">TIMEOUT</a> ([i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vecs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-iclb8/igt@gem_exec_capture@pi@vecs0.html">INCOMPLETE</a> ([i915#3371])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-apl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-apl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-kbl6/igt@gem_lmem_swapping@smem-oom.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl2/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-iclb7/igt@gem_pxp@reject-modify-context-protection-off-1.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-tglb7/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-iclb8/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict-all-engines:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-glk2/igt@gem_softpin@allocator-evict-all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-glk1/igt@gem_softpin@allocator-evict-all-engines.html">FAIL</a> ([i915#4171])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-apl4/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-apl7/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-skl4/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl8/igt@i915_module_load@reload.html">DMESG-WARN</a> ([i915#1982]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-apl6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-tglb7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-tglb6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-kbl6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-tglb7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-apl6/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-kbl6/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl7/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-tglb7/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-frame-dump:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl4/igt@kms_chamelium@dp-frame-dump.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-enable-disable-mode:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-kbl6/igt@kms_chamelium@vga-hpd-enable-disable-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-blue-to-red:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-apl6/igt@kms_color_chamelium@pipe-b-ctm-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-25:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-tglb7/igt@kms_color_chamelium@pipe-c-ctm-0-25.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-max-size-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-max-size-rapid-movement.html">SKIP</a> ([i915#3359]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x21-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-iclb7/igt@kms_cursor_crc@pipe-d-cursor-64x21-rapid-movement.html">SKIP</a> ([fdo#109278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl2/igt@kms_cursor_legacy@pipe-d-single-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-tglb7/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html">SKIP</a> ([fdo#109274] / [fdo#111825]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +49 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([fdo#109280] / [fdo#111825]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html">SKIP</a> ([fdo#109271]) +72 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> ([i915#180]) +4 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@clock-too-high:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-tglb7/igt@kms_invalid_mode@clock-too-high.html">SKIP</a> ([i915#4278])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-kbl3/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-iclb8/igt@kms_plane_lowres@pipe-a-tiling-x.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl4/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-kbl3/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-iclb7/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-tglb7/igt@kms_psr@psr2_cursor_render.html">FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DMESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-apl6/igt@kms_vblank@pipe-d-wait-idle.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl2/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-apl6/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html">SKIP</a> ([fdo#109271]) +31 similar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-iclb7/igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-skl3/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl8/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test1_macro:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-tglb5/igt@prime_nv_pcopy@test1_macro.html">SKIP</a> ([fdo#109291]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-iclb8/igt@prime_nv_pcopy@test1_macro.html">SKIP</a> ([fdo#109291])</p>
</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-transfer-non-existent-point:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl7/igt@syncobj_timeline@invalid-transfer-non-existent-point.html">DMESG-WARN</a> ([i915#5098])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-tglb7/igt@sysfs_clients@busy.html">SKIP</a> ([i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-apl6/igt@sysfs_clients@sema-50.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@rcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl2/igt@sysfs_heartbeat_interval@mixed@rcs0.html">FAIL</a> ([i915#1731])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-iclb3/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-apl3/igt@gem_ctx_isolation@preservation-s3@rcs0.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-apl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@suspend:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-4/igt@gem_eio@suspend.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-2/igt@gem_eio@suspend.html">PASS</a>) ([i915#5115]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-rkl-6/igt@gem_eio@suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@bcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-iclb2/igt@gem_exec_capture@pi@bcs0.html">INCOMPLETE</a> ([i915#3371]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-iclb8/igt@gem_exec_capture@pi@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vcs1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-tglb1/igt@gem_exec_capture@pi@vcs1.html">INCOMPLETE</a> ([i915#3371]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-tglb7/igt@gem_exec_capture@pi@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-kbl6/igt@gem_exec_fair@basic-none@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-glk7/igt@gem_exec_gttfill@all.html">DMESG-WARN</a> ([i915#118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-glk4/igt@gem_exec_gttfill@all.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-kbl6/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-kbl3/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-skl8/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1436] / [i915#716]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl4/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-iclb8/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-dg1-15/igt@i915_pm_rpm@dpms-non-lpsp.html">SKIP</a> ([i915#1397]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-dg1-18/igt@i915_pm_rpm@dpms-non-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-2/igt@kms_async_flips@crc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-4/igt@kms_async_flips@crc.html">SKIP</a>) ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-rkl-6/igt@kms_async_flips@crc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-legacy-gamma-reset:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-2/igt@kms_color@pipe-b-legacy-gamma-reset.html">SKIP</a> ([i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-rkl-6/igt@kms_color@pipe-b-legacy-gamma-reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_concurrent@pipe-b:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-2/igt@kms_concurrent@pipe-b.html">SKIP</a> ([i915#1845] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-rkl-6/igt@kms_concurrent@pipe-b.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-random:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html">SKIP</a>) ([fdo#112022] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-random:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-2/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-skl4/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl9/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-dg1-15/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html">DMESG-WARN</a> ([i915#4892]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-dg1-18/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-4/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">SKIP</a> ([fdo#111825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@fill-fb:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-2/igt@kms_draw_crc@fill-fb.html">SKIP</a> ([fdo#111314]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-rkl-6/igt@kms_draw_crc@fill-fb.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-skl3/igt@kms_flip@flip-vs-suspend@b-edp1.html">INCOMPLETE</a> ([i915#4839]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-skl7/igt@kms_flip@flip-vs-suspend@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#3701]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html">SKIP</a> ([i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html">SKIP</a>) ([i915#1849] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-start:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-2/igt@kms_invalid_mode@bad-hsync-start.html">SKIP</a> ([i915#4278]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-rkl-6/igt@kms_invalid_mode@bad-hsync-start.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_mmap_gtt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-2/igt@kms_psr@cursor_mmap_gtt.html">SKIP</a> ([i915#1072]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-rkl-6/igt@kms_psr@cursor_mmap_gtt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-270:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-rkl-2/igt@kms_rotation_crc@sprite-rotation-270.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/shard-rkl-6/igt@kms_rotation_crc@sprite-rotation-270.html">PASS</a> +11 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_exec_balancer@parallel-ordering:<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html">SKIP</a> ([i915#4525]) -&gt; <a href="https://intel-gfx-ci.01">DMESG-FAIL</a> ([i915#5076])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============0880074196910990101==--
