Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1C44BBA4B
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 14:49:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A409310E168;
	Fri, 18 Feb 2022 13:49:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 43F4A10E141;
 Fri, 18 Feb 2022 13:49:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3F165AA0EB;
 Fri, 18 Feb 2022 13:49:10 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1305946695810718546=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Fri, 18 Feb 2022 13:49:10 -0000
Message-ID: <164519215024.25459.2233476982033201362@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220215055154.15363-1-ramalingam.c@intel.com>
In-Reply-To: <20220215055154.15363-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_5th_Display_output_=28rev3=29?=
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

--===============1305946695810718546==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dg2: 5th Display output (rev3)
URL   : https://patchwork.freedesktop.org/series/100151/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11244_full -> Patchwork_22320_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_22320_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-apl:          NOTRUN -> [DMESG-WARN][1] ([i915#4991])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-apl3/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [PASS][2] -> [FAIL][3] ([i915#2410])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-tglb2/igt@gem_ctx_persistence@many-contexts.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-tglb8/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [PASS][4] -> [SKIP][5] ([i915#4525])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-iclb5/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-kbl:          [PASS][6] -> [FAIL][7] ([i915#2842])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl3/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          NOTRUN -> [FAIL][8] ([i915#2842])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][9] -> [FAIL][10] ([i915#2849])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_parallel@engines@basic:
    - shard-glk:          [PASS][11] -> [DMESG-WARN][12] ([i915#118]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-glk3/igt@gem_exec_parallel@engines@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-glk8/igt@gem_exec_parallel@engines@basic.html

  * igt@gem_exec_params@secure-non-root:
    - shard-iclb:         NOTRUN -> [SKIP][13] ([fdo#112283])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-iclb3/igt@gem_exec_params@secure-non-root.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-kbl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#4613])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl1/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-skl:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#4613]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-skl7/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-skl:          NOTRUN -> [WARN][16] ([i915#2658])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-skl8/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-skl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#3323])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-skl9/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-iclb:         NOTRUN -> [SKIP][18] ([i915#2856])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-iclb6/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_big_fb@linear-32bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][19] ([fdo#110725] / [fdo#111614])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-iclb6/igt@kms_big_fb@linear-32bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][20] ([i915#3743]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-skl8/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][21] ([fdo#111615])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-tglb5/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][22] ([fdo#110723])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-iclb6/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#3777])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-apl1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#3777]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-skl8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][25] ([fdo#109278] / [i915#3886]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-iclb6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3886]) +9 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-skl9/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3886]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-apl1/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-apl1/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@dp-frame-dump:
    - shard-skl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-skl8/igt@kms_chamelium@dp-frame-dump.html

  * igt@kms_chamelium@hdmi-cmp-planar-formats:
    - shard-kbl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl1/igt@kms_chamelium@hdmi-cmp-planar-formats.html

  * igt@kms_chamelium@vga-edid-read:
    - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-iclb3/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_color@pipe-d-ctm-0-5:
    - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271]) +161 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-skl9/igt@kms_color@pipe-d-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +4 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
    - shard-apl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][37] -> [INCOMPLETE][38] ([i915#300])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x10-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109278]) +6 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-iclb3/igt@kms_cursor_crc@pipe-c-cursor-32x10-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][40] ([i915#3359])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109278] / [fdo#109279])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-iclb3/igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding.html

  * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109274] / [fdo#109278])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-iclb3/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#2346])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109274])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-iclb3/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-glk:          [PASS][46] -> [FAIL][47] ([i915#4911])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-glk3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:
    - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109280]) +5 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:
    - shard-glk:          [PASS][49] -> [FAIL][50] ([i915#2546])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-glk3/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-glk8/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-kbl:          NOTRUN -> [SKIP][51] ([fdo#109271]) +21 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-tglb:         NOTRUN -> [SKIP][52] ([fdo#109280] / [fdo#111825])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-tglb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
    - shard-apl:          NOTRUN -> [SKIP][53] ([fdo#109271]) +40 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-apl1/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-iclb:         NOTRUN -> [SKIP][54] ([i915#1839])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-iclb3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-skl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#533])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-skl8/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-kbl:          NOTRUN -> [FAIL][56] ([fdo#108145] / [i915#265])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][57] -> [FAIL][58] ([fdo#108145] / [i915#265]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][59] ([fdo#108145] / [i915#265]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#658])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-skl7/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#658])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-apl1/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-kbl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#658])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][63] -> [SKIP][64] ([fdo#109441]) +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         NOTRUN -> [SKIP][65] ([fdo#109441])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-iclb6/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][66] -> [FAIL][67] ([i915#31])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-glk3/igt@kms_setmode@basic.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-glk8/igt@kms_setmode@basic.html

  * igt@kms_vrr@flip-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][68] ([fdo#109502])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-iclb6/igt@kms_vrr@flip-dpms.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#2437])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-apl3/igt@kms_writeback@writeback-fb-id.html

  * igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame:
    - shard-iclb:         NOTRUN -> [SKIP][70] ([fdo#109278] / [i915#2530])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-iclb3/igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame.html

  * igt@perf_pmu@module-unload:
    - shard-skl:          NOTRUN -> [FAIL][71] ([i915#5136])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-skl9/igt@perf_pmu@module-unload.html

  * igt@syncobj_timeline@invalid-transfer-non-existent-point:
    - shard-skl:          NOTRUN -> [DMESG-WARN][72] ([i915#5098])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-skl1/igt@syncobj_timeline@invalid-transfer-non-existent-point.html

  * igt@sysfs_clients@create:
    - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#2994]) +3 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-skl9/igt@sysfs_clients@create.html

  * igt@sysfs_clients@split-10:
    - shard-iclb:         NOTRUN -> [SKIP][74] ([i915#2994])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-iclb6/igt@sysfs_clients@split-10.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][75] ([i915#658]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-iclb8/igt@feature_discovery@psr2.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_exec_capture@pi@bcs0:
    - shard-iclb:         [INCOMPLETE][77] ([i915#3371]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-iclb6/igt@gem_exec_capture@pi@bcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-iclb6/igt@gem_exec_capture@pi@bcs0.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          [INCOMPLETE][79] ([i915#4547]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-skl1/igt@gem_exec_capture@pi@rcs0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-skl4/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][81] ([i915#2846]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-glk4/igt@gem_exec_fair@basic-deadline.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-glk2/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][83] ([i915#2842]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_whisper@basic-normal-all:
    - shard-glk:          [DMESG-WARN][85] ([i915#118]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-glk3/igt@gem_exec_whisper@basic-normal-all.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-glk8/igt@gem_exec_whisper@basic-normal-all.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][87] ([i915#454]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-180:
    - shard-glk:          [FAIL][89] ([i915#5138]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-glk5/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-glk8/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen:
    - shard-glk:          [DMESG-FAIL][91] ([i915#118] / [i915#1888]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-glk1/igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-glk3/igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic:
    - shard-iclb:         [FAIL][93] -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-iclb5/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][95] ([i915#79]) -> [PASS][96] +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-apl:          [DMESG-WARN][97] ([i915#180]) -> [PASS][98] +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-kbl:          [DMESG-WARN][99] ([i915#180]) -> [PASS][100] +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl7/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-glk:          [FAIL][101] ([i915#4911]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-glk6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][103] ([i915#1188]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-skl7/igt@kms_hdr@bpc-switch.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-skl4/igt@kms_hdr@bpc-switch.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][105] ([fdo#109441]) -> [PASS][106] +2 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-iclb3/igt@kms_psr@psr2_cursor_render.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-a-ts-continuation-modeset-hang:
    - shard-glk:          [TIMEOUT][107] ([i915#5140]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-glk1/igt@kms_vblank@pipe-a-ts-continuation-modeset-hang.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-glk3/igt@kms_vblank@pipe-a-ts-continuation-modeset-hang.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-iclb:         [DMESG-WARN][109] ([i915#5076]) -> [SKIP][110] ([i915#4525])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-iclb3/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [SKIP][111] ([i915#4525]) -> [DMESG-WARN][112] ([i915#5076])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-iclb7/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-iclb4/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [SKIP][113] ([i915#4525]) -> [DMESG-FAIL][114] ([i915#5076])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-iclb8/igt@gem_exec_balancer@parallel-ordering.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         [FAIL][115] ([i915#2852]) -> [FAIL][116] ([i915#2842])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-iclb5/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#3002] / [i915#4312]) -> ([FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#3002] / [i915#4312] / [i915#602])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl1/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl1/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl4/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl3/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl1/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl1/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl3/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl4/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl7/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl7/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl7/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl7/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl7/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl7/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl7/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl7/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl6/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl7/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl7/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl3/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl6/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl4/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl7/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl6/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl6/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl6/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl7/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl1/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl1/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl1/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl1/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl1/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl1/igt@runner@aborted.html
    - shard-apl:          ([FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155]) ([i915#180] / [i915#2426] / [i915#3002] / [i915#4312]) -> ([FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161]) ([i915#1814] / [i915#2426] / [i915#3002] / [i915#4312])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-apl8/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-apl1/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-apl4/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-apl8/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-apl2/igt@runner@aborted.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-apl2/igt@runner@aborted.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-apl4/igt@runner@aborted.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-apl8/igt@ru

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/index.html

--===============1305946695810718546==
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
<tr><td><b>Series:</b></td><td>drm/i915/dg2: 5th Display output (rev3)</td>=
</tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/100151/">https://patchwork.freedesktop.org/series/100151/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22320/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22320/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11244_full -&gt; Patchwork_22320_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22320_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-apl3/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-tglb2/igt@gem_ctx_persistence@many-contexts.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_223=
20/shard-tglb8/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> ([i915#=
2410])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2320/shard-iclb5/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> ([i=
915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2232=
0/shard-kbl3/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> ([i915#28=
42])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@=
rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_223=
20/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#=
2849])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@basic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-glk3/igt@gem_exec_parallel@engines@basic.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/=
shard-glk8/igt@gem_exec_parallel@engines@basic.html">DMESG-WARN</a> ([i915#=
118]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-iclb3/igt@gem_exec_params@secure-non-ro=
ot.html">SKIP</a> ([fdo#112283])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-kbl1/igt@gem_lmem_swapping@heavy-verify=
-multi.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-skl7/igt@gem_lmem_swapping@heavy-verify=
-random.html">SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-skl8/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-skl9/igt@gem_userptr_blits@dmabuf-sync.=
html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-iclb6/igt@gen9_exec_parse@allowed-all.h=
tml">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-iclb6/igt@kms_big_fb@linear-32bpp-rotat=
e-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-skl8/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-tglb5/igt@kms_big_fb@yf-tiled-16bpp-rot=
ate-270.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-iclb6/igt@kms_big_fb@yf-tiled-8bpp-rota=
te-90.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-apl1/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:=
</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-skl8/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#=
3777]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-iclb6/igt@kms_ccs@pipe-a-bad-aux-stride=
-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886]) +2 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-skl9/igt@kms_ccs@pipe-a-crc-primary-rot=
ation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886=
]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-apl1/igt@kms_ccs@pipe-c-bad-rotation-90=
-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-apl1/igt@kms_chamelium@dp-crc-multiple.=
html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-frame-dump:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-skl8/igt@kms_chamelium@dp-frame-dump.ht=
ml">SKIP</a> ([fdo#109271] / [fdo#111827]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-cmp-planar-formats:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-kbl1/igt@kms_chamelium@hdmi-cmp-planar-=
formats.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-iclb3/igt@kms_chamelium@vga-edid-read.h=
tml">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-skl9/igt@kms_color@pipe-d-ctm-0-5.html"=
>SKIP</a> ([fdo#109271]) +161 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11244/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
320/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</a=
> ([i915#180]) +4 similar issues</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11244/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
320/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</a=
> ([i915#180])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2320/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">INCOMPLETE</=
a> ([i915#300])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x10-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-iclb3/igt@kms_cursor_crc@pipe-c-cursor-=
32x10-offscreen.html">SKIP</a> ([fdo#109278]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-=
32x10-onscreen.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-iclb3/igt@kms_cursor_crc@pipe-c-cursor-=
512x512-sliding.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-iclb3/igt@kms_cursor_legacy@2x-nonblock=
ing-modeset-vs-cursor-atomic.html">SKIP</a> ([fdo#109274] / [fdo#109278])</=
li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22320/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-=
transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-iclb3/igt@kms_flip@2x-flip-vs-dpms-off-=
vs-modeset.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-glk3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64b=
pp-ytile-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22320/shard-glk8/igt@kms_flip_scaled_crc@flip-32=
bpp-ytileccs-to-64bpp-ytile-upscaling.html">FAIL</a> ([i915#4911])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-cur-indfb-draw-render.html">SKIP</a> ([fdo#109280]) +5 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-glk3/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22320/shard-glk8/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.ht=
ml">FAIL</a> ([i915#2546])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-kbl1/igt@kms_frontbuffer_tracking@psr-1=
p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#109271]) +21 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-tglb5/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#109280] / [fdo#111=
825])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-apl1/igt@kms_frontbuffer_tracking@psr-r=
gb565-draw-render.html">SKIP</a> ([fdo#109271]) +40 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-iclb3/igt@kms_multipipe_modeset@basic-m=
ax-pipe-crc-check.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-skl8/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mi=
n.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_22320/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-=
min.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-skl7/igt@kms_psr2_sf@cursor-plane-updat=
e-sf.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-apl1/igt@kms_psr2_sf@overlay-plane-upda=
te-continuous-sf.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-kbl1/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/s=
hard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> ([fdo#109441]) =
+2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_render:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-iclb6/igt@kms_psr@psr2_sprite_render.ht=
ml">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-glk3/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-glk8/igt=
@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-iclb6/igt@kms_vrr@flip-dpms.html">SKIP<=
/a> ([fdo#109502])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-apl3/igt@kms_writeback@writeback-fb-id.=
html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-iclb3/igt@nouveau_crc@pipe-d-ctx-flip-s=
kip-current-frame.html">SKIP</a> ([fdo#109278] / [i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-skl9/igt@perf_pmu@module-unload.html">F=
AIL</a> ([i915#5136])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-transfer-non-existent-point:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-skl1/igt@syncobj_timeline@invalid-trans=
fer-non-existent-point.html">DMESG-WARN</a> ([i915#5098])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-skl9/igt@sysfs_clients@create.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22320/shard-iclb6/igt@sysfs_clients@split-10.html">=
SKIP</a> ([i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-iclb8/igt@feature_discovery@psr2.html">SKIP</a> ([i915#=
658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2320/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@bcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-iclb6/igt@gem_exec_capture@pi@bcs0.html">INCOMPLETE</a>=
 ([i915#3371]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22320/shard-iclb6/igt@gem_exec_capture@pi@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-skl1/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> =
([i915#4547]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22320/shard-skl4/igt@gem_exec_capture@pi@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-glk4/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([=
i915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22320/shard-glk2/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22320/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-normal-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-glk3/igt@gem_exec_whisper@basic-normal-all.html">DMESG-=
WARN</a> ([i915#118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22320/shard-glk8/igt@gem_exec_whisper@basic-normal-all.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2232=
0/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-glk5/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html">FAIL<=
/a> ([i915#5138]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22320/shard-glk8/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-glk1/igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen=
.html">DMESG-FAIL</a> ([i915#118] / [i915#1888]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-glk3/igt@kms_cursor_c=
rc@pipe-a-cursor-128x128-offscreen.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html"=
>FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22320/shard-iclb5/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptib=
le@bc-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-glk4/igt@kms_flip@2x-=
flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html">PASS</a> +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_22320/shard-apl1/igt@kms_flip@flip-vs-suspend-int=
erruptible@a-dp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-kbl7/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WAR=
N</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22320/shard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS<=
/a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-=
ytileccs-upscaling.html">FAIL</a> ([i915#4911]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-glk6/igt@kms_flip_scal=
ed_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-skl7/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320=
/shard-skl4/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-iclb3/igt@kms_psr@psr2_cursor_render.html">SKIP</a> ([f=
do#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22320/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-modeset-hang:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-glk1/igt@kms_vblank@pipe-a-ts-continuation-modeset-hang=
.html">TIMEOUT</a> ([i915#5140]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_22320/shard-glk3/igt@kms_vblank@pipe-a-ts-continu=
ation-modeset-hang.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html">DME=
SG-WARN</a> ([i915#5076]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22320/shard-iclb3/igt@gem_exec_balancer@parallel-context=
s.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-iclb7/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">SKIP</a> ([i915#4525]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22320/shard-iclb4/igt@gem_exec_balancer@parallel-keep-in-=
fence.html">DMESG-WARN</a> ([i915#5076])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-iclb8/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> ([i915#4525]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22320/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html=
">DMESG-FAIL</a> ([i915#5076])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL=
</a> ([i915#2852]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22320/shard-iclb5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">=
FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11244/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl3/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11244/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl1/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1244/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl4/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1124=
4/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl7/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/s=
hard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl7/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shar=
d-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11244/shard-kbl7/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-k=
bl7/igt@runner@aborted.html">FAIL</a>) ([i915#1436] / [i915#180] / [i915#18=
14] / [i915#2426] / [i915#3002] / [i915#4312]) -&gt; (<a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl7/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22320/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl7/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22320/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl3/igt@runner@=
aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22320/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl4/igt@runn=
er@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22320/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl6/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22320/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kbl6/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_22320/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard-kb=
l1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_22320/shard-kbl1/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard=
-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22320/shard-kbl1/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/sh=
ard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_22320/shard-kbl1/igt@runner@aborted.html">FA=
IL</a>) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#3002]=
 / [i915#4312] / [i915#602])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11244/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-apl1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11244/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-apl8/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11244/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-apl2/igt@runner@aborted.h=
tml">FAIL</a>) ([i915#180] / [i915#2426] / [i915#3002] / [i915#4312]) -&gt;=
 (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22320/shard=
-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22320/shard-apl8/igt@ru">FAIL</a>, [FAIL][158],=
 [FAIL][159], [FAIL][160], [FAIL][161]) ([i915#1814] / [i915#2426] / [i915#=
3002] / [i915#4312])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============1305946695810718546==--
