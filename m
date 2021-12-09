Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0924F46EDF0
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 17:54:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5972A10E516;
	Thu,  9 Dec 2021 16:53:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CC77E10E116;
 Thu,  9 Dec 2021 07:03:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C0AB6AA3D8;
 Thu,  9 Dec 2021 07:03:12 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5578289326015581536=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 09 Dec 2021 07:03:12 -0000
Message-ID: <163903339274.5091.10043292954920102591@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211208213115.1919503-1-lucas.demarchi@intel.com>
In-Reply-To: <20211208213115.1919503-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dmc=3A_Update_DMC_to_v2=2E14_on_ADL-P?=
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

--===============5578289326015581536==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dmc: Update DMC to v2.14 on ADL-P
URL   : https://patchwork.freedesktop.org/series/97751/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10976_full -> Patchwork_21795_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_21795_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [PASS][1] -> [FAIL][2] ([i915#2410])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-tglb8/igt@gem_ctx_persistence@many-contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][3] -> [TIMEOUT][4] ([i915#3063] / [i915#3648])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-tglb3/igt@gem_eio@unwedge-stress.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tglb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#2842])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-glk4/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][7] -> [FAIL][8] ([i915#2842])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html
    - shard-apl:          [PASS][9] -> [SKIP][10] ([fdo#109271])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-apl8/igt@gem_exec_fair@basic-none-share@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [PASS][11] -> [FAIL][12] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-apl3/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][13] -> [SKIP][14] ([i915#2848])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-kbl7/igt@gem_exec_suspend@basic-s3.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-kbl7/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-glk:          [PASS][17] -> [DMESG-WARN][18] ([i915#118])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-glk3/igt@gem_exec_whisper@basic-contexts-forked.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-glk3/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-kbl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#4613]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-kbl6/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-tglb:         NOTRUN -> [SKIP][20] ([i915#4270]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tglb1/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-tglb:         NOTRUN -> [SKIP][21] ([i915#3297]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tglb1/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gen3_render_mixed_blits:
    - shard-tglb:         NOTRUN -> [SKIP][22] ([fdo#109289]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tglb1/igt@gen3_render_mixed_blits.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-tglb:         NOTRUN -> [SKIP][23] ([i915#2856]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tglb1/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-iclb:         NOTRUN -> [SKIP][24] ([i915#2856])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-iclb6/igt@gen9_exec_parse@bb-start-far.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-tglb:         [PASS][25] -> [FAIL][26] ([i915#2521])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-tglb6/igt@kms_async_flips@alternate-sync-async-flip.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tglb8/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglb:         [PASS][27] -> [FAIL][28] ([i915#3743])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-tglb6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tglb8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][29] ([fdo#111615]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tglb7/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html
    - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#110723])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-iclb6/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3886]) +4 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-kbl1/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#109278] / [i915#3886])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-iclb6/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
    - shard-tglb:         NOTRUN -> [SKIP][33] ([i915#3689] / [i915#3886])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tglb7/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][34] ([fdo#111615] / [i915#3689]) +2 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tglb7/igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][35] ([i915#3689]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tglb7/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs.html

  * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
    - shard-kbl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-kbl1/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html

  * igt@kms_color_chamelium@pipe-b-ctm-negative:
    - shard-tglb:         NOTRUN -> [SKIP][37] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tglb1/igt@kms_color_chamelium@pipe-b-ctm-negative.html

  * igt@kms_content_protection@srm:
    - shard-tglb:         NOTRUN -> [SKIP][38] ([fdo#111828])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tglb7/igt@kms_content_protection@srm.html
    - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109300] / [fdo#111066])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-iclb6/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding:
    - shard-kbl:          NOTRUN -> [SKIP][40] ([fdo#109271]) +69 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding.html
    - shard-tglb:         NOTRUN -> [SKIP][41] ([fdo#109279] / [i915#3359])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding.html
    - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109278] / [fdo#109279])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-max-size-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109278]) +9 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-max-size-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][44] ([i915#3359]) +4 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-32x32-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][45] ([i915#3319])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-32x32-onscreen.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
    - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109274] / [fdo#109278])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-iclb6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-tglb:         NOTRUN -> [SKIP][47] ([fdo#111825]) +15 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tglb7/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
    - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109274])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-iclb6/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([i915#79])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-apl:          [PASS][51] -> [DMESG-WARN][52] ([i915#180]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([i915#3701])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
    - shard-skl:          NOTRUN -> [SKIP][55] ([fdo#109271]) +3 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-skl8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:
    - shard-iclb:         NOTRUN -> [SKIP][56] ([fdo#109280]) +6 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][57] -> [FAIL][58] ([i915#1188]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-tglb:         NOTRUN -> [SKIP][59] ([i915#1839])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tglb7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
    - shard-iclb:         NOTRUN -> [SKIP][60] ([i915#1839])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-iclb6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-kbl:          NOTRUN -> [FAIL][61] ([fdo#108145] / [i915#265]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][62] ([fdo#111615] / [fdo#112054])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tglb1/igt@kms_plane_multiple@atomic-pipe-c-tiling-yf.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
    - shard-tglb:         NOTRUN -> [SKIP][63] ([i915#2920])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tglb1/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-kbl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#658])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-kbl1/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271]) +6 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-apl3/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_psr@psr2_dpms:
    - shard-tglb:         NOTRUN -> [FAIL][66] ([i915#132] / [i915#3467])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tglb7/igt@kms_psr@psr2_dpms.html
    - shard-iclb:         NOTRUN -> [SKIP][67] ([fdo#109441])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-iclb6/igt@kms_psr@psr2_dpms.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][68] -> [SKIP][69] ([fdo#109441]) +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-iclb8/igt@kms_psr@psr2_suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][70] ([i915#180])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@kms_writeback@writeback-check-output:
    - shard-iclb:         NOTRUN -> [SKIP][71] ([i915#2437])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-iclb6/igt@kms_writeback@writeback-check-output.html
    - shard-tglb:         NOTRUN -> [SKIP][72] ([i915#2437]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tglb7/igt@kms_writeback@writeback-check-output.html

  * igt@nouveau_crc@pipe-d-source-outp-complete:
    - shard-tglb:         NOTRUN -> [SKIP][73] ([i915#2530])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tglb1/igt@nouveau_crc@pipe-d-source-outp-complete.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][74] -> [FAIL][75] ([i915#1722])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-skl6/igt@perf@polling-small-buf.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-skl9/igt@perf@polling-small-buf.html

  * igt@perf_pmu@module-unload:
    - shard-apl:          [PASS][76] -> [INCOMPLETE][77] ([i915#1982] / [i915#262])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-apl1/igt@perf_pmu@module-unload.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-apl7/igt@perf_pmu@module-unload.html

  * igt@prime_nv_api@i915_nv_import_vs_close:
    - shard-tglb:         NOTRUN -> [SKIP][78] ([fdo#109291])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tglb1/igt@prime_nv_api@i915_nv_import_vs_close.html

  * igt@prime_vgem@coherency-gtt:
    - shard-tglb:         NOTRUN -> [SKIP][79] ([fdo#111656])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tglb1/igt@prime_vgem@coherency-gtt.html

  * igt@syncobj_wait@multi-wait-all-submitted:
    - shard-skl:          [PASS][80] -> [DMESG-WARN][81] ([i915#1982]) +2 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-skl6/igt@syncobj_wait@multi-wait-all-submitted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-skl6/igt@syncobj_wait@multi-wait-all-submitted.html

  * igt@sysfs_clients@sema-10:
    - shard-kbl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#2994]) +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-kbl6/igt@sysfs_clients@sema-10.html

  * igt@sysfs_clients@split-10:
    - shard-iclb:         NOTRUN -> [SKIP][83] ([i915#2994])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-iclb6/igt@sysfs_clients@split-10.html
    - shard-skl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#2994])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-skl8/igt@sysfs_clients@split-10.html
    - shard-tglb:         NOTRUN -> [SKIP][85] ([i915#2994]) +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tglb7/igt@sysfs_clients@split-10.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          [FAIL][86] ([i915#2842]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-glk4/igt@gem_exec_fair@basic-none@rcs0.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-kbl:          [FAIL][88] ([i915#2842]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-kbl1/igt@gem_exec_fair@basic-none@vecs0.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-kbl6/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-iclb:         [FAIL][90] ([i915#2842]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-iclb5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-iclb6/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_softpin@allocator-evict-all-engines:
    - shard-glk:          [FAIL][92] ([i915#4171]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-glk7/igt@gem_softpin@allocator-evict-all-engines.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-glk9/igt@gem_softpin@allocator-evict-all-engines.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [DMESG-WARN][94] ([i915#180]) -> [PASS][95] +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-kbl1/igt@i915_suspend@sysfs-reader.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-kbl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - shard-glk:          [DMESG-WARN][96] ([i915#118]) -> [PASS][97] +2 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-glk1/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-glk2/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][98] ([i915#2346]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - shard-skl:          [DMESG-WARN][100] ([i915#1982]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-skl7/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-skl4/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [INCOMPLETE][102] ([i915#180] / [i915#636]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-apl:          [DMESG-WARN][104] ([i915#180]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-apl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-apl3/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [FAIL][106] ([i915#2122]) -> [PASS][107] +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-iclb:         [SKIP][108] ([i915#3701]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-blt:
    - shard-tglb:         [INCOMPLETE][110] -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-blt.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][112] ([i915#1188]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][114] ([fdo#109441]) -> [PASS][115] +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [INCOMPLETE][116] ([i915#2828] / [i915#794]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-kbl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-kbl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][118] ([i915#1542]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-skl4/igt@perf@polling-parameterized.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-skl1/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-tglb:         [FAIL][120] ([i915#2842]) -> [SKIP][121] ([i915#2848])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-tglb1/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tglb8/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-glk:          [SKIP][122] ([fdo#109271]) -> [SKIP][123] ([fdo#109271] / [i915#1888])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-glk5/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-glk3/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][124] ([i915#1804] / [i915#2684]) -> [WARN][125] ([i915#2684]) +1 similar issue
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
    - shard-iclb:         [SKIP][126] ([i915#2920]) -> [SKIP][127] ([i915#658]) +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-iclb3/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][128] ([i915#658]) -> [SKIP][129] ([i915#2920]) +2 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137]) ([i915#180] / [i915#3002] / [i915#3363] / [i915#4312] / [i915#92]) -> ([FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#4312] / [i915#602])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-kbl1/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-kbl1/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-kbl6/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-kbl7/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-kbl7/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-kbl7/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-kbl3/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-kbl4/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-kbl1/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-kbl4/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-kbl6/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-kbl7/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-kbl4/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-kbl7/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-kbl7/igt@runner@aborted.html
    - shard-apl:          ([FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149]) ([i915#180] / [i915#2426] / [i915#3002] / [i915#3363] / [i915#4312]) -> ([FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154]) ([i915#180] / [i915#2722] / [i915#3002] / [i915#3363] / [i915#4312])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-apl6/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-apl1/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-apl2/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-apl8/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-apl1/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-apl7/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-apl3/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-apl3/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-apl7/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-apl2/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#1

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/index.html

--===============5578289326015581536==
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
<tr><td><b>Series:</b></td><td>drm/i915/dmc: Update DMC to v2.14 on ADL-P</=
td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/97751/">https://patchwork.freedesktop.org/series/97751/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21795/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21795/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10976_full -&gt; Patchwork_21795_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21795_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-tglb8/igt@gem_ctx_persistence@many-contexts.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_217=
95/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> ([i915#=
2410])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-tglb3/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-tg=
lb6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#3063] / [i915#3648]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_217=
95/shard-glk4/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#=
2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10976/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
795/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i9=
15#2842])</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10976/shard-apl8/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_217=
95/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP</a> ([fdo#=
109271])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/sh=
ard-apl3/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1795/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html">SKIP</a> ([i=
915#2848])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-kbl7/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-=
kbl7/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> ([i915#180]) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-glk3/igt@gem_exec_whisper@basic-contexts-forked.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21795/shard-glk3/igt@gem_exec_whisper@basic-contexts-forked.html">DMESG-WA=
RN</a> ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21795/shard-kbl6/igt@gem_lmem_swapping@heavy-random=
.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21795/shard-tglb1/igt@gem_pxp@create-regular-contex=
t-2.html">SKIP</a> ([i915#4270]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21795/shard-tglb1/igt@gem_userptr_blits@dmabuf-unsy=
nc.html">SKIP</a> ([i915#3297]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen3_render_mixed_blits:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21795/shard-tglb1/igt@gen3_render_mixed_blits.html"=
>SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21795/shard-tglb1/igt@gen9_exec_parse@allowed-all.h=
tml">SKIP</a> ([i915#2856]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21795/shard-iclb6/igt@gen9_exec_parse@bb-start-far.=
html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-tglb6/igt@kms_async_flips@alternate-sync-async-flip.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21795/shard-tglb8/igt@kms_async_flips@alternate-sync-async-flip.html">=
FAIL</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-tglb6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate=
-180-hflip-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21795/shard-tglb8/igt@kms_big_fb@x-tiled-max-=
hw-stride-32bpp-rotate-180-hflip-async-flip.html">FAIL</a> ([i915#3743])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-270:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21795/shard-tglb7/igt@kms_big_fb@yf-tiled-64bpp-rota=
te-270.html">SKIP</a> ([fdo#111615]) +2 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21795/shard-iclb6/igt@kms_big_fb@yf-tiled-64bpp-rota=
te-270.html">SKIP</a> ([fdo#110723])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21795/shard-kbl1/igt@kms_ccs@pipe-a-bad-aux-stride-=
y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21795/shard-iclb6/igt@kms_ccs@pipe-a-ccs-on-another-=
bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21795/shard-tglb7/igt@kms_ccs@pipe-a-ccs-on-another-=
bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21795/shard-tglb7/igt@kms_ccs@pipe-d-bad-aux-stride=
-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689]) +2 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21795/shard-tglb7/igt@kms_ccs@pipe-d-crc-sprite-pla=
nes-basic-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21795/shard-kbl1/igt@kms_chamelium@hdmi-hpd-with-en=
abled-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-negative:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21795/shard-tglb1/igt@kms_color_chamelium@pipe-b-ct=
m-negative.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21795/shard-tglb7/igt@kms_content_protection@srm.htm=
l">SKIP</a> ([fdo#111828])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21795/shard-iclb6/igt@kms_content_protection@srm.htm=
l">SKIP</a> ([fdo#109300] / [fdo#111066])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21795/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-51=
2x170-sliding.html">SKIP</a> ([fdo#109271]) +69 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21795/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-5=
12x170-sliding.html">SKIP</a> ([fdo#109279] / [i915#3359])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21795/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-5=
12x170-sliding.html">SKIP</a> ([fdo#109278] / [fdo#109279])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-max-size-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21795/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-=
max-size-sliding.html">SKIP</a> ([fdo#109278]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21795/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-=
max-size-offscreen.html">SKIP</a> ([i915#3359]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-32x32-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21795/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-=
32x32-onscreen.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:<=
/p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21795/shard-iclb6/igt@kms_cursor_legacy@cursorb-vs-=
flipb-atomic-transitions-varying-size.html">SKIP</a> ([fdo#109274] / [fdo#1=
09278])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21795/shard-tglb7/igt@kms_flip@2x-flip-vs-blocking-w=
f-vblank.html">SKIP</a> ([fdo#111825]) +15 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21795/shard-iclb6/igt@kms_flip@2x-flip-vs-blocking-w=
f-vblank.html">SKIP</a> ([fdo#109274])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21795/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interru=
ptible@a-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21795/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64=
bpp-ytile.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21795/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytil=
eccs-to-64bpp-ytile.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21795/shard-skl8/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-indfb-plflip-blt.html">SKIP</a> ([fdo#109271]) +3 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21795/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-spr-indfb-onoff.html">SKIP</a> ([fdo#109280]) +6 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-sk=
l9/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21795/shard-tglb7/igt@kms_multipipe_modeset@basic-ma=
x-pipe-crc-check.html">SKIP</a> ([i915#1839])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21795/shard-iclb6/igt@kms_multipipe_modeset@basic-ma=
x-pipe-crc-check.html">SKIP</a> ([i915#1839])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21795/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D108145">fdo#108145</a> / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-c-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21795/shard-tglb1/igt@kms_plane_multiple@atomic-pip=
e-c-tiling-yf.html">SKIP</a> ([fdo#111615] / [fdo#112054])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21795/shard-tglb1/igt@kms_psr2_sf@plane-move-sf-dmg=
-area-2.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21795/shard-kbl1/igt@kms_psr2_su@frontbuffer-xrgb88=
88.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21795/shard-apl3/igt@kms_psr@psr2_cursor_mmap_gtt.h=
tml">SKIP</a> ([fdo#109271]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21795/shard-tglb7/igt@kms_psr@psr2_dpms.html">FAIL</=
a> ([i915#132] / [i915#3467])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21795/shard-iclb6/igt@kms_psr@psr2_dpms.html">SKIP</=
a> ([fdo#109441])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-iclb2/igt@kms_psr@psr2_suspend.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-iclb=
8/igt@kms_psr@psr2_suspend.html">SKIP</a> ([fdo#109441]) +2 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21795/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuat=
ion-suspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21795/shard-iclb6/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> ([i915#2437])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21795/shard-tglb7/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> ([i915#2437]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-outp-complete:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21795/shard-tglb1/igt@nouveau_crc@pipe-d-source-out=
p-complete.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-skl6/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-skl=
9/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1722])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-apl1/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-apl=
7/igt@perf_pmu@module-unload.html">INCOMPLETE</a> ([i915#1982] / [i915#262]=
)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_import_vs_close:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21795/shard-tglb1/igt@prime_nv_api@i915_nv_import_v=
s_close.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21795/shard-tglb1/igt@prime_vgem@coherency-gtt.html=
">SKIP</a> ([fdo#111656])</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@multi-wait-all-submitted:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-skl6/igt@syncobj_wait@multi-wait-all-submitted.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21795/shard-skl6/igt@syncobj_wait@multi-wait-all-submitted.html">DMESG-WARN=
</a> ([i915#1982]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21795/shard-kbl6/igt@sysfs_clients@sema-10.html">SK=
IP</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21795/shard-iclb6/igt@sysfs_clients@split-10.html">S=
KIP</a> ([i915#2994])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21795/shard-skl8/igt@sysfs_clients@split-10.html">SK=
IP</a> ([fdo#109271] / [i915#2994])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21795/shard-tglb7/igt@sysfs_clients@split-10.html">S=
KIP</a> ([i915#2994]) +1 similar issue</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-glk4/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21795/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-kbl1/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21795/shard-kbl6/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-iclb5/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21795/shard-iclb6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict-all-engines:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-glk7/igt@gem_softpin@allocator-evict-all-engines.html">=
FAIL</a> ([i915#4171]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_21795/shard-glk9/igt@gem_softpin@allocator-evict-all-engine=
s.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-kbl1/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a>=
 ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21795/shard-kbl6/igt@i915_suspend@sysfs-reader.html">PASS</a> +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-glk1/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">DMESG-=
WARN</a> ([i915#118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21795/shard-glk2/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html"=
>PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_21795/shard-skl6/igt@kms_cursor_legacy@flip-vs-=
cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-skl7/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtile=
d.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21795/shard-skl4/igt@kms_draw_crc@draw-method=
-rgb565-mmap-gtt-xtiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a>=
 ([i915#180] / [i915#636]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21795/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-apl6/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WAR=
N</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21795/shard-apl3/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
b-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_21795/shard-skl4/igt@kms_flip@plain-flip-fb-re=
create-interruptible@b-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp=
-ytileccs.html">SKIP</a> ([i915#3701]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_21795/shard-iclb3/igt@kms_flip_scaled_crc@f=
lip-32bpp-ytile-to-32bpp-ytileccs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-p=
ri-shrfb-draw-blt.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_21795/shard-tglb1/igt@kms_frontbuffer_track=
ing@fbcpsr-1p-primscrn-pri-shrfb-draw-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i9=
15#1188]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_21795/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a>=
 ([fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_21795/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a=
> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-kbl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html=
">INCOMPLETE</a> ([i915#2828] / [i915#794]) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-kbl1/igt@kms_vblank@pipe-c=
-ts-continuation-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-skl4/igt@perf@polling-parameterized.html">FAIL</a> ([i9=
15#1542]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_21795/shard-skl1/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-tglb1/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21795/shard-tglb8/igt@gem_exec_fair@basic-none-vip@rcs0.html">SK=
IP</a> ([i915#2848])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-glk5/igt@gem_pxp@verify-pxp-key-change-after-suspend-re=
sume.html">SKIP</a> ([fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_21795/shard-glk3/igt@gem_pxp@verify-pxp-key-cha=
nge-after-suspend-resume.html">SKIP</a> ([fdo#109271] / [i915#1888])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> ([i915#1804] / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21795/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fenc=
e.html">WARN</a> ([i915#2684]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-3:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html">SK=
IP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21795/shard-iclb3/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.ht=
ml">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
4.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21795/shard-iclb2/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-4.html">SKIP</a> ([i915#2920]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-kbl1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10976/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-kbl7/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10976/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-kbl7/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0976/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-kbl4/igt@runner@aborted.html=
">FAIL</a>) ([i915#180] / [i915#3002] / [i915#3363] / [i915#4312] / [i915#9=
2]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
795/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-kbl4/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21795/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-kbl7/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21795/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-kbl7/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21795/shard-kbl7/igt@runner@aborted.html">FAIL</a>) ([i915#180] / [i=
915#1814] / [i915#3002] / [i915#3363] / [i915#4312] / [i915#602])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10976/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-apl1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10976/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10976/shard-apl8/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10976/shard-apl1/igt@runner@aborted.html">FAIL</a>) ([i915#180] / [i915#2=
426] / [i915#3002] / [i915#3363] / [i915#4312]) -&gt; (<a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-apl7/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21795/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-apl3/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_21795/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21795/shard-apl2/igt@runner=
@aborted.html">FAIL</a>) ([i915#180] / [i915#2722] / [i915#3002] / [i915#33=
63] / [i915#4312])</p>
</li>
</ul>
</li>
</ul>
<p>[fdo#1</p>

</body>
</html>

--===============5578289326015581536==--
