Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC40F4B1702
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 21:34:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83B5A10E958;
	Thu, 10 Feb 2022 20:34:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B924C10E958;
 Thu, 10 Feb 2022 20:34:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B6A3BA7DFB;
 Thu, 10 Feb 2022 20:34:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3031880745906079338=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 10 Feb 2022 20:34:49 -0000
Message-ID: <164452528970.24640.10532827995234407209@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1644489329.git.jani.nikula@intel.com>
In-Reply-To: <cover.1644489329.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/opregion=3A_fixes_and_cleanups=2C_RESEND_=28rev2=29?=
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

--===============3031880745906079338==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/opregion: fixes and cleanups, RESEND (rev2)
URL   : https://patchwork.freedesktop.org/series/99961/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11214_full -> Patchwork_22242_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22242_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22242_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22242_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-offscreen:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-256x256-offscreen.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-tglb8/igt@kms_cursor_crc@pipe-d-cursor-256x256-offscreen.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-skl7/igt@kms_fbcon_fbt@psr-suspend.html

  
Known issues
------------

  Here are the changes found in Patchwork_22242_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][4] -> [FAIL][5] ([i915#232])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-tglb7/igt@gem_eio@kms.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-tglb8/igt@gem_eio@kms.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][6] ([i915#4547])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-skl2/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#2842])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-iclb:         [PASS][11] -> [FAIL][12] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-iclb3/igt@gem_exec_fair@basic-pace@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-iclb8/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [PASS][13] -> [FAIL][14] ([i915#2842]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#2190])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-apl8/igt@gem_huc_copy@huc-copy.html
    - shard-kbl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#2190])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl4/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - shard-skl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#4613]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-skl10/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-kbl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#4613])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl3/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-apl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#4613]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-apl2/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_pread@exhaustion:
    - shard-tglb:         NOTRUN -> [WARN][20] ([i915#2658])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-tglb8/igt@gem_pread@exhaustion.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-skl:          NOTRUN -> [FAIL][21] ([i915#3318])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-skl1/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][22] -> [DMESG-WARN][23] ([i915#1436] / [i915#716])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-skl4/igt@gen9_exec_parse@allowed-single.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-skl4/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][24] ([i915#3743]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglb:         NOTRUN -> [SKIP][25] ([fdo#111615])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-tglb8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3777]) +2 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-apl2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3777]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3777]) +4 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-skl9/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#3886]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl4/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
    - shard-apl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#3886]) +3 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-apl8/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3886]) +7 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-skl2/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][32] ([fdo#109271]) +74 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl4/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-hpd-enable-disable-mode:
    - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-tglb8/igt@kms_chamelium@dp-hpd-enable-disable-mode.html

  * igt@kms_chamelium@hdmi-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl6/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +16 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-skl2/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-5:
    - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-apl8/igt@kms_color_chamelium@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180]) +4 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109278]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-iclb8/igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions:
    - shard-tglb:         NOTRUN -> [SKIP][40] ([fdo#109274] / [fdo#111825])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-tglb8/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#2346])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][43] -> [INCOMPLETE][44] ([i915#180])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#2122]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][47] ([i915#636])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-iclb:         [PASS][48] -> [SKIP][49] ([i915#3701])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:
    - shard-glk:          [PASS][50] -> [FAIL][51] ([i915#2546])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-glk4/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-glk7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt:
    - shard-tglb:         NOTRUN -> [SKIP][52] ([fdo#109280] / [fdo#111825]) +2 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
    - shard-skl:          NOTRUN -> [SKIP][53] ([fdo#109271]) +209 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-skl2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          NOTRUN -> [FAIL][54] ([i915#1188])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-skl7/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][55] -> [FAIL][56] ([i915#1188])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-tglb:         NOTRUN -> [SKIP][57] ([i915#1187])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-tglb8/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#533])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-apl2/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][59] ([i915#180])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#533]) +2 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-skl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - shard-apl:          [PASS][61] -> [DMESG-WARN][62] ([i915#180]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][63] ([fdo#108145] / [i915#265]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
    - shard-apl:          NOTRUN -> [FAIL][64] ([fdo#108145] / [i915#265])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][65] ([fdo#108145] / [i915#265]) +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][66] -> [FAIL][67] ([fdo#108145] / [i915#265])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][68] ([i915#265])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#2733])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-apl8/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html
    - shard-kbl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#2733])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl4/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#658])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-apl2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-skl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#658])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-skl9/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][73] -> [SKIP][74] ([fdo#109441]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#109441])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-iclb6/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][76] ([IGT#2])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-apl8/igt@kms_sysfs_edid_timing.html
    - shard-kbl:          NOTRUN -> [FAIL][77] ([IGT#2])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl4/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][78] -> [DMESG-WARN][79] ([i915#180] / [i915#295])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-wait-forked-hang:
    - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271]) +111 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-apl8/igt@kms_vblank@pipe-d-wait-forked-hang.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-skl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#2437])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-skl1/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:
    - shard-iclb:         NOTRUN -> [SKIP][82] ([i915#2530])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-iclb8/igt@nouveau_crc@ctx-flip-threshold-reset-after-capture.html

  * igt@nouveau_crc@pipe-a-source-outp-inactive:
    - shard-tglb:         NOTRUN -> [SKIP][83] ([i915#2530]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-tglb8/igt@nouveau_crc@pipe-a-source-outp-inactive.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-tglb:         NOTRUN -> [SKIP][84] ([fdo#109289])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-tglb8/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@prime_nv_api@i915_nv_import_twice:
    - shard-tglb:         NOTRUN -> [SKIP][85] ([fdo#109291])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-tglb5/igt@prime_nv_api@i915_nv_import_twice.html

  * igt@sysfs_clients@create:
    - shard-apl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#2994])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-apl8/igt@sysfs_clients@create.html
    - shard-kbl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#2994])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl4/igt@sysfs_clients@create.html

  * igt@sysfs_clients@fair-1:
    - shard-skl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#2994]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-skl9/igt@sysfs_clients@fair-1.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][89] ([i915#2842]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html
    - shard-tglb:         [FAIL][91] ([i915#2842]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-tglb5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][93] ([i915#2842]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][95] ([i915#2190]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-tglb8/igt@gem_huc_copy@huc-copy.html

  * igt@gem_workarounds@suspend-resume:
    - shard-skl:          [INCOMPLETE][97] ([i915#4939]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-skl3/igt@gem_workarounds@suspend-resume.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-skl10/igt@gem_workarounds@suspend-resume.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][99] ([i915#180]) -> [PASS][100] +3 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
    - shard-glk:          [DMESG-WARN][101] ([i915#118]) -> [PASS][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-glk3/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-glk5/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [INCOMPLETE][103] ([i915#180] / [i915#636]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [FAIL][105] ([i915#79]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:
    - shard-glk:          [FAIL][107] ([i915#79]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][109] ([i915#180]) -> [PASS][110] +2 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][111] ([i915#1188]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][113] ([fdo#109441]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [SKIP][115] ([i915#4525]) -> [DMESG-WARN][116] ([i915#5076])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-iclb3/igt@gem_exec_balancer@parallel-bb-first.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][117] ([i915#2684]) -> [WARN][118] ([i915#1804] / [i915#2684])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_color@pipe-d-ctm-negative:
    - shard-glk:          [SKIP][119] ([fdo#109271] / [i915#1888]) -> [SKIP][120] ([fdo#109271])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-glk4/igt@kms_color@pipe-d-ctm-negative.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-glk7/igt@kms_color@pipe-d-ctm-negative.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#4312] / [i915#602] / [i915#92]) -> ([FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#4312] / [i915#602])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl7/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl6/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl6/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl7/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl4/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl6/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl6/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl7/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl4/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl6/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl1/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl1/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl3/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl4/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl1/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl1/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl1/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl7/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl7/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl6/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl6/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl7/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl7/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl4/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl4/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl6/igt@runner@aborted.html
    - shard-apl:          ([FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312]) -> ([FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#4312])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-apl8/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-apl6/igt@runne

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/index.html

--===============3031880745906079338==
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
<tr><td><b>Series:</b></td><td>drm/i915/opregion: fixes and cleanups, RESEN=
D (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/99961/">https://patchwork.freedesktop.org/series/99961/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22242/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22242/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11214_full -&gt; Patchwork_22242_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22242_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_22242_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22242_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-offscreen:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-256x256-offscree=
n.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_22242/shard-tglb8/igt@kms_cursor_crc@pipe-d-cursor-256x256-offscr=
een.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-skl7/igt@kms_fbcon_fbt@psr-suspend.html=
">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22242_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-tglb7/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-tglb8/igt@gem=
_eio@kms.html">FAIL</a> ([i915#232])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-skl2/igt@gem_exec_capture@pi@rcs0.html"=
>INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11214/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
242/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i9=
15#2842])</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11214/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_222=
42/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915=
#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-iclb3/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/s=
hard-iclb8/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/sh=
ard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842]) +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22242/shard-apl8/igt@gem_huc_copy@huc-copy.html">SKI=
P</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22242/shard-kbl4/igt@gem_huc_copy@huc-copy.html">SKI=
P</a> ([fdo#109271] / [i915#2190])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-skl10/igt@gem_lmem_swapping@basic.html"=
>SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-kbl3/igt@gem_lmem_swapping@heavy-multi.=
html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-apl2/igt@gem_lmem_swapping@heavy-random=
.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-tglb8/igt@gem_pread@exhaustion.html">WA=
RN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-skl1/igt@gem_userptr_blits@vma-merge.ht=
ml">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-skl4/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/s=
hard-skl4/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#14=
36] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-tglb8/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-32bpp-rotate-0-async-flip.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-apl2/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-kbl4/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#37=
77]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:=
</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-skl9/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#=
3777]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22242/shard-kbl4/igt@kms_ccs@pipe-b-missing-ccs-buff=
er-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 s=
imilar issues</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22242/shard-apl8/igt@kms_ccs@pipe-b-missing-ccs-buff=
er-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 s=
imilar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-skl2/igt@kms_ccs@pipe-c-bad-rotation-90=
-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +7 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-kbl4/igt@kms_ccs@pipe-d-crc-primary-bas=
ic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271]) +74 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-tglb8/igt@kms_chamelium@dp-hpd-enable-d=
isable-mode.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</=
li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-kbl6/igt@kms_chamelium@hdmi-hpd-for-eac=
h-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-skl2/igt@kms_chamelium@vga-hpd-after-su=
spend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-apl8/igt@kms_color_chamelium@pipe-a-ctm=
-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2242/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</=
a> ([i915#180]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-iclb8/igt@kms_cursor_crc@pipe-d-cursor-=
256x256-rapid-movement.html">SKIP</a> ([fdo#109278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-tglb8/igt@kms_cursor_legacy@cursora-vs-=
flipb-atomic-transitions.html">SKIP</a> ([fdo#109274] / [fdo#111825])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22242/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic=
-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-=
apl6/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22242/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a>=
 ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1=
.html">INCOMPLETE</a> ([i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp=
-ytileccs-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22242/shard-iclb2/igt@kms_flip_scaled_crc@fli=
p-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#3701])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-glk4/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-=
wc.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22242/shard-glk7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mm=
ap-wc.html">FAIL</a> ([i915#2546])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-tglb8/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> ([fdo#109280] / [fdo#111825]=
) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-skl2/igt@kms_frontbuffer_tracking@fbcps=
r-2p-scndscrn-spr-indfb-onoff.html">SKIP</a> ([fdo#109271]) +209 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-skl7/igt@kms_hdr@bpc-switch.html">FAIL<=
/a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard=
-skl6/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-tglb8/igt@kms_hdr@static-toggle-suspend=
.html">SKIP</a> ([i915#1187])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-apl2/igt@kms_pipe_crc_basic@disable-crc=
-after-crtc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-kbl6/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-b.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-skl1/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +2 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend@p=
ipe-a-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_22242/shard-apl4/igt@kms_plane@plane-panning-bottom-ri=
ght-suspend@pipe-a-planes.html">DMESG-WARN</a> ([i915#180]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22242/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-co=
nstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issu=
e</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22242/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-co=
nstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22242/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">=
FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-c=
lipping-clamping:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22242/shard-apl8/igt@kms_plane_scaling@scaler-with-c=
lipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo#=
109271] / [i915#2733])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22242/shard-kbl4/igt@kms_plane_scaling@scaler-with-c=
lipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo#=
109271] / [i915#2733])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-apl2/igt@kms_psr2_sf@overlay-plane-upda=
te-continuous-sf.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-skl9/igt@kms_psr2_su@page_flip-nv12.htm=
l">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-i=
clb3/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> ([fdo#109441]) +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-iclb6/igt@kms_psr@psr2_sprite_blt.html"=
>SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22242/shard-apl8/igt@kms_sysfs_edid_timing.html">FAI=
L</a> ([IGT#2])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22242/shard-kbl4/igt@kms_sysfs_edid_timing.html">FAI=
L</a> ([IGT#2])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22242/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DM=
ESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-forked-hang:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-apl8/igt@kms_vblank@pipe-d-wait-forked-=
hang.html">SKIP</a> ([fdo#109271]) +111 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-skl1/igt@kms_writeback@writeback-pixel-=
formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-iclb8/igt@nouveau_crc@ctx-flip-threshol=
d-reset-after-capture.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-outp-inactive:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-tglb8/igt@nouveau_crc@pipe-a-source-out=
p-inactive.html">SKIP</a> ([i915#2530]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-tglb8/igt@perf@gen8-unprivileged-single=
-ctx-counters.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_import_twice:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-tglb5/igt@prime_nv_api@i915_nv_import_t=
wice.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22242/shard-apl8/igt@sysfs_clients@create.html">SKIP=
</a> ([fdo#109271] / [i915#2994])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22242/shard-kbl4/igt@sysfs_clients@create.html">SKIP=
</a> ([fdo#109271] / [i915#2994])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22242/shard-skl9/igt@sysfs_clients@fair-1.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11214/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22242/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html"=
>PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11214/shard-tglb5/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22242/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html"=
>PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22242/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2=
190]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2242/shard-tglb8/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-skl3/igt@gem_workarounds@suspend-resume.html">INCOMPLET=
E</a> ([i915#4939]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22242/shard-skl10/igt@gem_workarounds@suspend-resume.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html"=
>DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_22242/shard-apl2/igt@i915_suspend@fence-restore-tiled=
2untiled.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-glk3/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.=
html">DMESG-WARN</a> ([i915#118]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22242/shard-glk5/igt@kms_cursor_crc@pipe-a-curso=
r-256x85-offscreen.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a>=
 ([i915#180] / [i915#636]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_22242/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">F=
AIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22242/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html=
">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22242/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@b-hdmi=
-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html">DME=
SG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22242/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend=
.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#=
1188]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
22242/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a>=
 ([fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_22242/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a=
></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-iclb3/igt@gem_exec_balancer@parallel-bb-first.html">SKI=
P</a> ([i915#4525]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22242/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html=
">DMESG-WARN</a> ([i915#5076])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> ([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_22242/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</=
a> ([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-negative:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-glk4/igt@kms_color@pipe-d-ctm-negative.html">SKIP</a> (=
[fdo#109271] / [i915#1888]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_22242/shard-glk7/igt@kms_color@pipe-d-ctm-negative.htm=
l">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11214/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl7/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11214/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl6/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1214/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl7/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1121=
4/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl6/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/s=
hard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl1/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shar=
d-kbl3/igt@runner@aborted.html">FAIL</a>) ([fdo#109271] / [i915#180] / [i91=
5#1814] / [i915#3002] / [i915#4312] / [i915#602] / [i915#92]) -&gt; (<a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl4/ig=
t@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_22242/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl1=
/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22242/shard-kbl1/igt@runner@aborted.html">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shard-k=
bl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_22242/shard-kbl7/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/shar=
d-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22242/shard-kbl6/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22242/s=
hard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_22242/shard-kbl7/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2224=
2/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_22242/shard-kbl4/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2242/shard-kbl6/igt@runner@aborted.html">FAIL</a>) ([i915#1436] / [i915#180=
] / [i915#1814] / [i915#3002] / [i915#4312] / [i915#602])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-apl6/igt@runne">FAI=
L</a>, [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FA=
IL][154]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312]) -&gt; ([F=
AIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160],=
 [FAIL][161]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#4312])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3031880745906079338==--
