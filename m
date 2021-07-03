Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 611493BA674
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Jul 2021 02:40:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E6BF6E139;
	Sat,  3 Jul 2021 00:40:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A51476E0A0;
 Sat,  3 Jul 2021 00:40:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9484EA47DF;
 Sat,  3 Jul 2021 00:40:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Sat, 03 Jul 2021 00:40:30 -0000
Message-ID: <162527283058.21717.10398273594018093282@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210702201708.2075793-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210702201708.2075793-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Improve_debug_Kconfig_texts_a_bit?=
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
Content-Type: multipart/mixed; boundary="===============0002209817=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0002209817==
Content-Type: multipart/alternative;
 boundary="===============1399445601816720649=="

--===============1399445601816720649==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Improve debug Kconfig texts a bit
URL   : https://patchwork.freedesktop.org/series/92161/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10304_full -> Patchwork_20522_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20522_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20522_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20522_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-glk6/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-glk7/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html

  
Known issues
------------

  Here are the changes found in Patchwork_20522_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#2842]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-glk2/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#2842]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-kbl4/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-kbl7/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][7] ([i915#2842])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          NOTRUN -> [FAIL][8] ([i915#2842] / [i915#3468])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][9] -> [SKIP][10] ([fdo#109271])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-tglb5/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_huc_copy@huc-copy:
    - shard-skl:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#2190])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-skl1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][14] ([i915#2658])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-apl3/igt@gem_pread@exhaustion.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-apl:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#3323])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-apl2/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-skl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#3323])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-skl1/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][17] -> [FAIL][18] ([i915#454])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [PASS][19] -> [INCOMPLETE][20] ([i915#2782])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-snb7/igt@i915_selftest@live@hangcheck.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-snb5/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-apl:          NOTRUN -> [SKIP][21] ([fdo#109271]) +287 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-apl3/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][22] ([fdo#110725] / [fdo#111614])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-iclb5/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][23] ([i915#3722])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-glk:          [PASS][24] -> [DMESG-WARN][25] ([i915#118] / [i915#95]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-glk3/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-glk3/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][26] ([fdo#109271]) +37 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-glk9/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_rc_ccs:
    - shard-skl:          NOTRUN -> [FAIL][27] ([i915#3678]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-skl7/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_rc_ccs.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-skl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-skl1/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          NOTRUN -> [DMESG-WARN][29] ([i915#1982])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-skl1/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-75:
    - shard-kbl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-kbl6/igt@kms_color_chamelium@pipe-a-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +22 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-apl3/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-b-degamma:
    - shard-glk:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-glk9/igt@kms_color_chamelium@pipe-b-degamma.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          NOTRUN -> [TIMEOUT][33] ([i915#1319])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-apl3/igt@kms_content_protection@atomic.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
    - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271]) +161 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          NOTRUN -> [FAIL][35] ([i915#2346])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          NOTRUN -> [FAIL][36] ([i915#2346] / [i915#533])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions:
    - shard-snb:          [PASS][37] -> [SKIP][38] ([fdo#109271])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-snb6/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-snb5/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
    - shard-skl:          [PASS][39] -> [DMESG-WARN][40] ([i915#1982]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-skl2/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-skl7/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-apl:          [PASS][41] -> [DMESG-WARN][42] ([i915#180])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          NOTRUN -> [FAIL][43] ([i915#2122])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-apl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#2672]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109280])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][46] -> [DMESG-WARN][47] ([i915#180]) +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt:
    - shard-kbl:          NOTRUN -> [SKIP][48] ([fdo#109271]) +40 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-kbl6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-iclb:         [PASS][49] -> [FAIL][50] ([i915#2546] / [i915#49])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-iclb4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-iclb3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][51] -> [FAIL][52] ([i915#1188]) +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-skl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#533])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-skl1/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][54] ([i915#265])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][55] ([fdo#108145] / [i915#265]) +5 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
    - shard-kbl:          NOTRUN -> [FAIL][56] ([fdo#108145] / [i915#265])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-kbl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
    - shard-skl:          NOTRUN -> [FAIL][57] ([fdo#108145] / [i915#265])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#658]) +4 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-apl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html
    - shard-kbl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#658])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-kbl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html
    - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#658])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-skl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][61] -> [SKIP][62] ([fdo#109441]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-skl:          NOTRUN -> [WARN][63] ([i915#2100])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-skl7/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#533]) +2 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-apl2/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#2437]) +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-apl2/igt@kms_writeback@writeback-check-output.html
    - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#2437])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-skl1/igt@kms_writeback@writeback-check-output.html

  * igt@perf@polling-parameterized:
    - shard-iclb:         [PASS][67] -> [FAIL][68] ([i915#1542])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-iclb1/igt@perf@polling-parameterized.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-iclb2/igt@perf@polling-parameterized.html

  * igt@perf_pmu@rc6-suspend:
    - shard-apl:          NOTRUN -> [DMESG-WARN][69] ([i915#180]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-apl2/igt@perf_pmu@rc6-suspend.html

  * igt@sysfs_clients@fair-3:
    - shard-glk:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#2994])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-glk9/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@fair-7:
    - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#2994]) +4 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-apl1/igt@sysfs_clients@fair-7.html

  * igt@sysfs_clients@sema-25:
    - shard-kbl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#2994])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-kbl7/igt@sysfs_clients@sema-25.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [FAIL][73] ([i915#2410]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-tglb6/igt@gem_ctx_persistence@many-contexts.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-tglb2/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [INCOMPLETE][75] ([i915#198]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-skl5/igt@gem_eio@in-flight-suspend.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-skl1/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-apl:          [SKIP][77] ([fdo#109271]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-apl1/igt@gem_exec_fair@basic-none-share@rcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-apl8/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          [FAIL][79] ([i915#2842]) -> [PASS][80] +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-kbl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-tglb:         [FAIL][81] ([i915#2842]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-tglb5/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_mmap_gtt@big-copy-odd:
    - shard-skl:          [FAIL][83] ([i915#307]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-skl9/igt@gem_mmap_gtt@big-copy-odd.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-skl6/igt@gem_mmap_gtt@big-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-iclb:         [FAIL][85] ([i915#2428]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][87] ([i915#1436] / [i915#716]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-skl6/igt@gen9_exec_parse@allowed-single.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-skl1/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-ytiled:
    - shard-skl:          [FAIL][89] -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-skl1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-ytiled.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-skl3/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1:
    - shard-glk:          [FAIL][91] ([i915#79]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [DMESG-WARN][93] ([i915#180]) -> [PASS][94] +3 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-apl:          [DMESG-WARN][95] ([i915#180]) -> [PASS][96] +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-apl1/igt@kms_hdr@bpc-switch-suspend.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-apl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a:
    - shard-skl:          [DMESG-WARN][97] ([i915#1982]) -> [PASS][98] +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-skl6/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-skl1/igt@kms_pipe_crc_basic@read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][99] ([fdo#108145] / [i915#265]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][101] ([fdo#109441]) -> [PASS][102] +4 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglb:         [FAIL][103] ([i915#2842]) -> [FAIL][104] ([i915#2876])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-tglb2/igt@gem_exec_fair@basic-pace@rcs0.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-tglb5/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          [INCOMPLETE][105] ([i915#198]) -> [FAIL][106] ([i915#454])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-skl8/igt@i915_pm_dc@dc6-dpms.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-skl7/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][107] ([i915#1226]) -> [SKIP][108] ([fdo#109349])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-iclb:         [SKIP][109] ([i915#2920]) -> [SKIP][110] ([i915#658]) +4 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-iclb6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
    - shard-iclb:         [SKIP][111] ([i915#658]) -> [SKIP][112] ([i915#2920])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-iclb6/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117], [FAIL][118]) ([i915#180] / [i915#3002] / [i915#3363]) -> ([FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-kbl4/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-kbl4/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-kbl4/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-kbl4/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-kbl3/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-kbl1/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-kbl3/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-kbl4/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-kbl4/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-kbl3/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-kbl3/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-kbl3/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][125], [FAIL][126], [FAIL][127]) ([i915#1814] / [i915#3002]) -> ([FAIL][128], [FAIL][129]) ([i915#3002])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-iclb7/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-iclb2/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-iclb5/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-iclb6/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-iclb1/igt@runner@aborted.html
    - shard-apl:          ([FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#3363]) -> ([FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139]) ([i915#1610] / [i915#180] / [i915#2292] / [i915#3002] / [i915#3363])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-apl1/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-apl3/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-apl6/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-apl6/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-apl8/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-apl3/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-apl2/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-apl1/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-apl2/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-apl6/igt@runner@aborted.html
    - shard-skl:          ([FAIL][140], [FAIL][141], [FAIL][142]) ([i915#1436] / [i915#3002] / [i915#3363]) -> ([FAIL][143], [FAIL][144]) ([i915#3002] / [i915#3363])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-skl2/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-skl6/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-skl4/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-skl6/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-skl9/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2100]: https://gitlab.freedesktop.org/drm/intel/issues/2100
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2292]: https://gitlab.freedesktop.org/drm/intel/issues/2292
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2428]: https://gitlab.freedesktop.org/drm/intel/issues/2428
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#278

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/index.html

--===============1399445601816720649==
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
<tr><td><b>Series:</b></td><td>drm/i915: Improve debug Kconfig texts a bit<=
/td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/92161/">https://patchwork.freedesktop.org/series/92161/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20522/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20522/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10304_full -&gt; Patchwork_20522_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20522_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_20522_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
20522_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled:<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-glk6/igt@kms_draw_crc@draw-method-xrgb8888-render-ytile=
d.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_20522/shard-glk7/igt@kms_draw_crc@draw-method-xrgb8888-render-yti=
led.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20522_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_205=
22/shard-glk2/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#=
2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-kbl4/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2052=
2/shard-kbl7/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> ([i915#28=
42]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1=
.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-apl2/igt@gem_exec_fair@basic-none@vecs0=
.html">FAIL</a> ([i915#2842] / [i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/sh=
ard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">SKIP</a> (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/s=
hard-tglb5/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-skl1/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-apl3/igt@gem_pread@exhaustion.html">WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i91=
5#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20522/shard-apl2/igt@gem_userptr_blits@dmabuf-sync.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / [i915#3323])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20522/shard-skl1/igt@gem_userptr_blits@dmabuf-sync.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / [i915#3323])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-iclb2/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-iclb6/=
igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-snb7/igt@i915_selftest@live@hangcheck.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/sha=
rd-snb5/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#2782])=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-apl3/igt@kms_big_fb@linear-16bpp-rotate=
-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +287 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-iclb5/igt@kms_big_fb@x-tiled-16bpp-rota=
te-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D110725">fdo#110725</a> / <a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3722])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-glk3/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2052=
2/shard-glk3/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">DMESG-WARN</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> =
/ [i915#95]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-glk9/igt@kms_ccs@pipe-b-crc-sprite-plan=
es-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +37 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-skl7/igt@kms_ccs@pipe-d-crc-primary-bas=
ic-y_tiled_gen12_rc_ccs.html">FAIL</a> ([i915#3678]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-skl1/igt@kms_chamelium@dp-crc-multiple.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111827">fdo#111827</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-75:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-skl1/igt@kms_color@pipe-b-ctm-0-75.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-kbl6/igt@kms_color_chamelium@pipe-a-ctm=
-0-75.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-apl3/igt@kms_color_chamelium@pipe-a-ctm=
-limited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111827">fdo#111827</a>) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-degamma:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-glk9/igt@kms_color_chamelium@pipe-b-deg=
amma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-apl3/igt@kms_content_protection@atomic.=
html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-3=
2x32-onscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a>) +161 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-skl3/igt@kms_cursor_legacy@flip-vs-curs=
or-atomic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-skl1/igt@kms_cursor_legacy@flip-vs-curs=
or-atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/2346">i915#2346</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-snb6/igt@kms_cursor_legacy@short-flip-before-cursor-ato=
mic-transitions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-snb5/igt@kms_cursor_legacy@short-flip-b=
efore-cursor-atomic-transitions.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-skl2/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20522/shard-skl7/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html">=
DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20522/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-skl3/igt@kms_flip@plain-flip-fb-recreat=
e-interruptible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0522/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#18=
0</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-kbl6/igt@kms_frontbuffer_tracking@fbcps=
r-2p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +40 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-iclb4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-=
shrfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_20522/shard-iclb3/igt@kms_frontbuffer_tracking@=
psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2546">i915#2546</a> / [i915#49])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-sk=
l7/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/1188">i915#1188</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-skl1/igt@kms_pipe_crc_basic@nonblocking=
-crc-pipe-d-frame-sequence.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20522/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-co=
nstant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/265">i915#265</a>) +5 similar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20522/shard-kbl6/igt@kms_plane_alpha_blend@pipe-b-co=
nstant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/265">i915#265</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20522/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-co=
nstant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/265">i915#265</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20522/shard-apl7/igt@kms_psr2_sf@overlay-plane-updat=
e-sf-dmg-area-4.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +4 similar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20522/shard-kbl6/igt@kms_psr2_sf@overlay-plane-updat=
e-sf-dmg-area-4.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20522/shard-skl3/igt@kms_psr2_sf@overlay-plane-updat=
e-sf-dmg-area-4.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/sh=
ard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 simila=
r issue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-skl7/igt@kms_setmode@clone-exclusive-cr=
tc.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2100">i915#2100</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-apl2/igt@kms_vblank@pipe-d-wait-idle.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / [i915#533]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20522/shard-apl2/igt@kms_writeback@writeback-check-o=
utput.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2437">i915#2437</a>) +2 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20522/shard-skl1/igt@kms_writeback@writeback-check-o=
utput.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2437">i915#2437</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-iclb1/igt@perf@polling-parameterized.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shar=
d-iclb2/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-apl2/igt@perf_pmu@rc6-suspend.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180=
">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-glk9/igt@sysfs_clients@fair-3.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-apl1/igt@sysfs_clients@fair-7.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / [i915#2994]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20522/shard-kbl7/igt@sysfs_clients@sema-25.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-tglb6/igt@gem_ctx_persistence@many-contexts.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2410">i915#=
2410</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_20522/shard-tglb2/igt@gem_ctx_persistence@many-contexts.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-skl5/igt@gem_eio@in-flight-suspend.html">INCOMPLETE</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
522/shard-skl1/igt@gem_eio@in-flight-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-apl1/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo=
#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20522/shard-apl8/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-kbl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20522/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html">PA=
SS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20522/shard-tglb5/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-odd:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-skl9/igt@gem_mmap_gtt@big-copy-odd.html">FAIL</a> ([i91=
5#307]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20522/shard-skl6/igt@gem_mmap_gtt@big-copy-odd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2428">i915#24=
28</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20522/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-skl6/igt@gen9_exec_parse@allowed-single.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i91=
5#1436</a> / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_20522/shard-skl1/igt@gen9_exec_parse@allowed-single.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-ytiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-skl1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-yti=
led.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20522/shard-skl3/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu=
-ytiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html=
">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_20522/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@c-hdmi=
-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_20522/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> +3 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-apl1/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0522/shard-apl7/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-a:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-skl6/igt@kms_pipe_crc_basic@read-crc-pipe-a.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982"=
>i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20522/shard-skl1/igt@kms_pipe_crc_basic@read-crc-pipe-a.html">PASS=
</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1081=
45">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20522/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage=
-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109=
441</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_20522/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> +4 si=
milar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-tglb2/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20522/shard-tglb5/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (=
[i915#2876])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-skl8/igt@i915_pm_dc@dc6-dpms.html">INCOMPLETE</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/sh=
ard-skl7/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1226">i=
915#1226</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20522/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109349">fdo#109=
349</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a-3.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20522/shard-iclb6/igt@kms_psr2_sf@overlay-primary=
-update-sf-dmg-area-3.html">SKIP</a> ([i915#658]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-iclb6/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html">SK=
IP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20522/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.htm=
l">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-kbl4/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10304/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-kbl4/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10304/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-kbl1/igt@runner@aborted.h=
tml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
180">i915#180</a> / [i915#3002] / [i915#3363]) -&gt; (<a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-kbl3/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20522/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-kbl4/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20522/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-kbl3/igt@runner@=
aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20522/shard-kbl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814=
</a> / [i915#3002] / [i915#3363])</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-iclb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-iclb2/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10304/shard-iclb5/igt@runner@aborted.html">FAIL</a>) (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / [i915#30=
02]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0522/shard-iclb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-iclb1/igt@runner@aborted=
.html">FAIL</a>) ([i915#3002])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-apl3/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10304/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-apl6/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10304/shard-apl8/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / [i915#3002=
] / [i915#3363]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20522/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-apl2/igt@runn=
er@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_20522/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-apl2/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_20522/shard-apl6/igt@runner@aborted.html">FAIL</a>) (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2292">i91=
5#2292</a> / [i915#3002] / [i915#3363])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10304/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/shard-skl6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10304/shard-skl4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / [i915#3002]=
 / [i915#3363]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_20522/shard-skl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20522/shard-skl9/igt@runne=
r@aborted.html">FAIL</a>) ([i915#3002] / [i915#3363])</p>
</li>
</ul>
</li>
</ul>
<p>[i915#278</p>

</body>
</html>

--===============1399445601816720649==--

--===============0002209817==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0002209817==--
