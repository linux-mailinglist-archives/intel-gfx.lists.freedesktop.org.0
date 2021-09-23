Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0086B416222
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 17:33:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 251216ED8A;
	Thu, 23 Sep 2021 15:33:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D34B96ED85;
 Thu, 23 Sep 2021 15:33:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C8AB4AADD2;
 Thu, 23 Sep 2021 15:33:39 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3560014908173216778=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 15:33:39 -0000
Message-ID: <163241121978.31051.4850857289259495958@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210923131737.11520-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20210923131737.11520-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Tile_F_plane_format_support_=28rev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============3560014908173216778==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Tile F plane format support (rev2)
URL   : https://patchwork.freedesktop.org/series/94983/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10630_full -> Patchwork_21145_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_21145_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-tglb:         NOTRUN -> [DMESG-WARN][1] ([i915#3002])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb3/igt@gem_create@create-massive.html

  * igt@gem_ctx_shared@q-in-order:
    - shard-snb:          NOTRUN -> [SKIP][2] ([fdo#109271]) +80 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-snb5/igt@gem_ctx_shared@q-in-order.html

  * igt@gem_eio@in-flight-1us:
    - shard-skl:          [PASS][3] -> [TIMEOUT][4] ([i915#3063])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-skl3/igt@gem_eio@in-flight-1us.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-skl10/igt@gem_eio@in-flight-1us.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-tglb:         [PASS][5] -> [FAIL][6] ([i915#2842]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-tglb3/igt@gem_exec_fair@basic-pace@vecs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb1/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#2842]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_params@no-blt:
    - shard-tglb:         NOTRUN -> [SKIP][9] ([fdo#109283])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@gem_exec_params@no-blt.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][10] ([i915#2658])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-apl3/igt@gem_pread@exhaustion.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
    - shard-iclb:         NOTRUN -> [SKIP][11] ([i915#768])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-iclb5/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html

  * igt@gem_userptr_blits@input-checking:
    - shard-apl:          NOTRUN -> [DMESG-WARN][12] ([i915#3002])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-apl8/igt@gem_userptr_blits@input-checking.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-iclb:         NOTRUN -> [SKIP][13] ([i915#2856])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-iclb5/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][14] -> [DMESG-WARN][15] ([i915#1436] / [i915#716])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-skl6/igt@gen9_exec_parse@allowed-single.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-skl7/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-tglb:         NOTRUN -> [SKIP][16] ([i915#2856])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb6/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#2411] / [i915#456]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-tglb8/igt@i915_pm_rpm@system-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb7/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_selftest@live@gt_lrc:
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][19] ([i915#2373])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_pm:
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][20] ([i915#1759] / [i915#2291])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@i915_selftest@live@gt_pm.html

  * igt@i915_suspend@debugfs-reader:
    - shard-apl:          NOTRUN -> [DMESG-WARN][21] ([i915#180]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-apl1/igt@i915_suspend@debugfs-reader.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-tglb:         [PASS][22] -> [INCOMPLETE][23] ([i915#456])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-tglb6/igt@i915_suspend@fence-restore-untiled.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb7/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-iclb:         NOTRUN -> [SKIP][24] ([i915#1769])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-iclb5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][25] ([fdo#111614])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3777])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-kbl7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][27] ([fdo#110725] / [fdo#111614])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-iclb5/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3777]) +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-apl1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][29] ([i915#3689] / [i915#3886])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb6/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#3886])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-kbl7/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html
    - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#109278] / [i915#3886])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-iclb5/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#109278])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-iclb5/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3886]) +9 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-apl1/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3886]) +3 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-skl5/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][35] ([i915#3689]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs.html

  * igt@kms_chamelium@hdmi-edid-read:
    - shard-tglb:         NOTRUN -> [SKIP][36] ([fdo#109284] / [fdo#111827]) +6 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_chamelium@vga-edid-read:
    - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-skl5/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-snb:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-snb5/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-b-gamma:
    - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109284] / [fdo#111827])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-iclb5/igt@kms_color_chamelium@pipe-b-gamma.html
    - shard-kbl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-kbl7/igt@kms_color_chamelium@pipe-b-gamma.html

  * igt@kms_color_chamelium@pipe-c-ctm-max:
    - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +18 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-apl1/igt@kms_color_chamelium@pipe-c-ctm-max.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          NOTRUN -> [TIMEOUT][42] ([i915#1319])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-apl1/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglb:         NOTRUN -> [SKIP][43] ([i915#3116])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][44] ([i915#3319])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-max-size-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][45] ([i915#3359]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-max-size-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][46] ([fdo#109279] / [i915#3359]) +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-tglb:         NOTRUN -> [SKIP][47] ([i915#4103])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([i915#2346] / [i915#533])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglb:         NOTRUN -> [SKIP][50] ([i915#3528])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][51] -> [FAIL][52] ([i915#79])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][53] -> [FAIL][54] ([i915#79]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][55] -> [DMESG-WARN][56] ([i915#180]) +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
    - shard-skl:          [PASS][57] -> [FAIL][58] ([i915#2122])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html

  * igt@kms_flip_tiling@flip-to-yf-tiled:
    - shard-tglb:         NOTRUN -> [SKIP][59] ([fdo#111615]) +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@kms_flip_tiling@flip-to-yf-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
    - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271]) +35 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-skl5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271]) +222 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-apl7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:
    - shard-iclb:         NOTRUN -> [SKIP][62] ([fdo#109280]) +2 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt:
    - shard-tglb:         NOTRUN -> [SKIP][63] ([fdo#111825]) +13 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][64] -> [FAIL][65] ([i915#1188])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@static-toggle:
    - shard-tglb:         NOTRUN -> [SKIP][66] ([i915#1187])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb6/igt@kms_hdr@static-toggle.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#533]) +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-apl1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-apl:          [PASS][68] -> [DMESG-WARN][69] ([i915#180])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][70] ([fdo#108145] / [i915#265]) +2 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][71] -> [FAIL][72] ([fdo#108145] / [i915#265])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][73] ([fdo#112054])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@kms_plane_lowres@pipe-a-tiling-yf.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#2733])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-apl3/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
    - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#658]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-skl5/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-kbl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#658])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-kbl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#658]) +5 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-apl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
    - shard-tglb:         NOTRUN -> [SKIP][78] ([i915#2920])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html

  * igt@kms_psr@cursor_plane_onoff:
    - shard-kbl:          NOTRUN -> [SKIP][79] ([fdo#109271]) +46 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-kbl7/igt@kms_psr@cursor_plane_onoff.html

  * igt@kms_psr@psr2_basic:
    - shard-tglb:         NOTRUN -> [FAIL][80] ([i915#132] / [i915#3467])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb6/igt@kms_psr@psr2_basic.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][81] -> [SKIP][82] ([fdo#109441]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#2437])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-apl1/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@nouveau_crc@pipe-d-ctx-flip-detection:
    - shard-tglb:         NOTRUN -> [SKIP][84] ([i915#2530])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@nouveau_crc@pipe-d-ctx-flip-detection.html

  * igt@prime_nv_api@i915_self_import_to_different_fd:
    - shard-tglb:         NOTRUN -> [SKIP][85] ([fdo#109291]) +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@prime_nv_api@i915_self_import_to_different_fd.html

  * igt@sysfs_clients@pidname:
    - shard-apl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#2994]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-apl1/igt@sysfs_clients@pidname.html

  * igt@sysfs_clients@recycle-many:
    - shard-tglb:         NOTRUN -> [SKIP][87] ([i915#2994])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@sema-10:
    - shard-skl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#2994])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-skl5/igt@sysfs_clients@sema-10.html

  
#### Possible fixes ####

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][89] ([i915#2369] / [i915#3063] / [i915#3648]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-tglb3/igt@gem_eio@unwedge-stress.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb1/igt@gem_eio@unwedge-stress.html
    - shard-iclb:         [TIMEOUT][91] ([i915#2369] / [i915#2481] / [i915#3070]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-iclb4/igt@gem_eio@unwedge-stress.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-iclb1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][93] ([i915#2846]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-glk7/igt@gem_exec_fair@basic-deadline.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-glk7/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][95] ([i915#2842]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][97] ([i915#2842]) -> [PASS][98] +4 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_workarounds@suspend-resume:
    - shard-kbl:          [DMESG-WARN][99] ([i915#180]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-kbl1/igt@gem_workarounds@suspend-resume.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-kbl4/igt@gem_workarounds@suspend-resume.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [INCOMPLETE][101] ([i915#155] / [i915#794]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][103] ([i915#454]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-iclb7/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [DMESG-WARN][105] ([i915#1982]) -> [PASS][106] +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-skl1/igt@kms_color@pipe-c-ctm-0-25.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-skl1/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][107] ([i915#2828] / [i915#456]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:
    - shard-kbl:          [FAIL][109] ([i915#79]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-kbl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-kbl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-tglb:         [INCOMPLETE][111] ([i915#2411] / [i915#456]) -> [PASS][112] +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-tglb7/igt@kms_frontbuffer_tracking@psr-suspend.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb6/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][113] ([i915#1188]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-skl5/igt@kms_hdr@bpc-switch.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-skl2/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-skl:          [INCOMPLETE][115] ([i915#198]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][117] ([fdo#108145] / [i915#265]) -> [PASS][118] +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][119] ([fdo#109441]) -> [PASS][120] +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-iclb3/igt@kms_psr@psr2_suspend.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@perf@short-reads:
    - shard-skl:          [FAIL][121] ([i915#51]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-skl4/igt@perf@short-reads.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-skl8/igt@perf@short-reads.html

  
#### Warnings ####

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
    - shard-iclb:         [SKIP][123] ([i915#658]) -> [SKIP][124] ([i915#2920])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-iclb3/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][125], [FAIL][126], [FAIL][127]) ([i915#180] / [i915#3002] / [i915#3363]) -> ([FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#3363])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-kbl1/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-kbl6/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-kbl4/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-kbl1/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-kbl6/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-kbl6/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-kbl3/igt@runner@aborted.html
    - shard-apl:          ([FAIL][132], [FAIL][133]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#3363]) -> ([FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-apl1/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-apl7/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-apl2/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-apl8/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-apl8/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-apl3/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-apl8/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-apl1/igt@runner@aborted.html
    - shard-skl:          ([FAIL][140], [FAIL][141]) ([i915#3002] / [i915#3363]) -> ([FAIL][142], [FAIL][143], [FAIL][144]) ([i915#1436] / [i915#3002] / [i915#3363])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-skl9/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-skl9/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-skl7/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-skl1/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-skl1/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#1

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/index.html

--===============3560014908173216778==
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
<tr><td><b>Series:</b></td><td>drm/i915: Tile F plane format support (rev2)=
</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/94983/">https://patchwork.freedesktop.org/series/94983/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21145/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21145/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10630_full -&gt; Patchwork_21145_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21145_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-tglb3/igt@gem_create@create-massive.htm=
l">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-in-order:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-snb5/igt@gem_ctx_shared@q-in-order.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a>) +80 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-1us:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-skl3/igt@gem_eio@in-flight-1us.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-skl1=
0/igt@gem_eio@in-flight-1us.html">TIMEOUT</a> ([i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-tglb3/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/=
shard-tglb1/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842])=
 +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2114=
5/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#28=
42]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@gem_exec_params@no-blt.html">=
SKIP</a> ([fdo#109283])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-apl3/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-iclb5/igt@gem_render_copy@y-tiled-ccs-t=
o-y-tiled-mc-ccs.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-apl8/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-iclb5/igt@gen9_exec_parse@allowed-all.h=
tml">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-skl6/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/s=
hard-skl7/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#14=
36] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-tglb6/igt@gen9_exec_parse@basic-rejecte=
d-ctx-param.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-tglb8/igt@i915_pm_rpm@system-suspend.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shar=
d-tglb7/igt@i915_pm_rpm@system-suspend.html">INCOMPLETE</a> ([i915#2411] / =
[i915#456]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@i915_selftest@live@gt_lrc.htm=
l">DMESG-FAIL</a> ([i915#2373])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@i915_selftest@live@gt_pm.html=
">DMESG-FAIL</a> ([i915#1759] / [i915#2291])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-apl1/igt@i915_suspend@debugfs-reader.ht=
ml">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-tglb6/igt@i915_suspend@fence-restore-untiled.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
145/shard-tglb7/igt@i915_suspend@fence-restore-untiled.html">INCOMPLETE</a>=
 ([i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-iclb5/igt@kms_atomic_transition@plane-a=
ll-modeset-transition-fencing.html">SKIP</a> ([i915#1769])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@kms_big_fb@x-tiled-8bpp-rotat=
e-270.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-kbl7/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-iclb5/igt@kms_big_fb@y-tiled-64bpp-rota=
te-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-apl1/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3777]) +2 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-tglb6/igt@kms_ccs@pipe-a-crc-sprite-pla=
nes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886])</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21145/shard-kbl7/igt@kms_ccs@pipe-b-bad-aux-stride-y=
_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21145/shard-iclb5/igt@kms_ccs@pipe-b-bad-aux-stride-=
y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109278">fdo#109278</a> / [i915#3886])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-iclb5/igt@kms_ccs@pipe-b-crc-sprite-pla=
nes-basic-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-apl1/igt@kms_ccs@pipe-b-crc-sprite-plan=
es-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886]) +9 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-skl5/igt@kms_ccs@pipe-c-bad-rotation-90=
-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886]) +3 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@kms_ccs@pipe-d-crc-sprite-pla=
nes-basic-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@kms_chamelium@hdmi-edid-read.=
html">SKIP</a> ([fdo#109284] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-skl5/igt@kms_chamelium@vga-edid-read.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-snb5/igt@kms_color_chamelium@pipe-a-ctm=
-blue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-gamma:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21145/shard-iclb5/igt@kms_color_chamelium@pipe-b-gam=
ma.html">SKIP</a> ([fdo#109284] / [fdo#111827])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21145/shard-kbl7/igt@kms_color_chamelium@pipe-b-gamm=
a.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / [fdo#111827]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-apl1/igt@kms_color_chamelium@pipe-c-ctm=
-max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / [fdo#111827]) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-apl1/igt@kms_content_protection@atomic-=
dpms.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@kms_content_protection@dp-mst=
-lic-type-0.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-=
32x32-sliding.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-max-size-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-=
max-size-onscreen.html">SKIP</a> ([i915#3359]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-=
512x512-sliding.html">SKIP</a> ([fdo#109279] / [i915#3359]) +2 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-tglb6/igt@kms_cursor_legacy@basic-busy-=
flip-before-cursor-atomic.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_21145/shard-skl4/igt@kms_cursor_legacy@flip-vs-c=
ursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#5=
33])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@kms_dp_tiled_display@basic-te=
st-pattern-with-chamelium.html">SKIP</a> ([i915#3528])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-=
hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_21145/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@bc-=
hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible=
@a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_21145/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-inter=
ruptible@a-edp1.html">FAIL</a> ([i915#79]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21145/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21145/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">FAIL</a>=
 ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-to-yf-tiled:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@kms_flip_tiling@flip-to-yf-ti=
led.html">SKIP</a> ([fdo#111615]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-skl5/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-pri-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-apl7/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +222 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-iclb5/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> ([fdo#109280]) +2 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-tglb6/igt@kms_frontbuffer_tracking@psr-=
2p-primscrn-indfb-pgflip-blt.html">SKIP</a> ([fdo#111825]) +13 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard=
-skl4/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-tglb6/igt@kms_hdr@static-toggle.html">S=
KIP</a> ([i915#1187])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-apl1/igt@kms_pipe_crc_basic@compare-crc=
-sanitycheck-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533]) +2 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21145/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">=
DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D108145">fdo#108145</a> / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21145/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">=
FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145"=
>fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@kms_plane_lowres@pipe-a-tilin=
g-yf.html">SKIP</a> ([fdo#112054])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-c=
lipping-clamping:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-apl3/igt@kms_plane_scaling@scaler-with-=
clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a=
> / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-skl5/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-3.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-kbl7/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-4.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-apl1/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-4.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +5 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@kms_psr2_sf@primary-plane-upd=
ate-sf-dmg-area-1.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_onoff:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-kbl7/igt@kms_psr@cursor_plane_onoff.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a>) +46 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-tglb6/igt@kms_psr@psr2_basic.html">FAIL=
</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/=
shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> ([fdo#109441]=
) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-apl1/igt@kms_writeback@writeback-invali=
d-parameters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-ctx-flip-detection:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@nouveau_crc@pipe-d-ctx-flip-d=
etection.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_self_import_to_different_fd:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@prime_nv_api@i915_self_import=
_to_different_fd.html">SKIP</a> ([fdo#109291]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-apl1/igt@sysfs_clients@pidname.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-tglb5/igt@sysfs_clients@recycle-many.ht=
ml">SKIP</a> ([i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21145/shard-skl5/igt@sysfs_clients@sema-10.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10630/shard-tglb3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i91=
5#2369] / [i915#3063] / [i915#3648]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21145/shard-tglb1/igt@gem_eio@unwedge-stress.=
html">PASS</a></p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10630/shard-iclb4/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i91=
5#2369] / [i915#2481] / [i915#3070]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21145/shard-iclb1/igt@gem_eio@unwedge-stress.=
html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-glk7/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([=
i915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21145/shard-glk7/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21145/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21145/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +4 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-kbl1/igt@gem_workarounds@suspend-resume.html">DMESG-WAR=
N</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21145/shard-kbl4/igt@gem_workarounds@suspend-resume.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html">INCOMP=
LETE</a> ([i915#155] / [i915#794]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_21145/shard-kbl7/igt@gem_workarounds@suspend-re=
sume-fd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-iclb7/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145=
/shard-iclb7/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-0-25:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-skl1/igt@kms_color@pipe-c-ctm-0-25.html">DMESG-WARN</a>=
 ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21145/shard-skl1/igt@kms_color@pipe-c-ctm-0-25.html">PASS</a> +1 si=
milar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">IN=
COMPLETE</a> ([i915#2828] / [i915#456]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb3/igt@kms_cursor_crc@pipe-=
a-cursor-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-kbl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-dp1.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21145/shard-kbl4/igt@kms_flip@flip-vs-expired-vbl=
ank-interruptible@b-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-tglb7/igt@kms_frontbuffer_tracking@psr-suspend.html">IN=
COMPLETE</a> ([i915#2411] / [i915#456]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21145/shard-tglb6/igt@kms_frontbuffer_trac=
king@psr-suspend.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-skl5/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145=
/shard-skl2/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend@=
pipe-b-planes.html">INCOMPLETE</a> ([i915#198]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-skl5/igt@kms_plane@pla=
ne-panning-bottom-right-suspend@pipe-b-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1081=
45">fdo#108145</a> / [i915#265]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21145/shard-skl7/igt@kms_plane_alpha_blend@pipe-c=
-coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-iclb3/igt@kms_psr@psr2_suspend.html">SKIP</a> ([fdo#109=
441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1145/shard-iclb2/igt@kms_psr@psr2_suspend.html">PASS</a> +1 similar issue</=
li>
</ul>
</li>
<li>
<p>igt@perf@short-reads:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-skl4/igt@perf@short-reads.html">FAIL</a> ([i915#51]) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/sha=
rd-skl8/igt@perf@short-reads.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-iclb3/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html">SK=
IP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21145/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.htm=
l">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-kbl6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10630/shard-kbl4/igt@runner@aborted.html">FAIL</a>) ([i915#180] / [i91=
5#3002] / [i915#3363]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21145/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-kbl6/ig=
t@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21145/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-kbl3=
/igt@runner@aborted.html">FAIL</a>) ([i915#180] / [i915#1814] / [i915#3002]=
 / [i915#3363])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-apl7/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / [i915#180] / [i915#3002] / [i915#3363]) -&gt;=
 (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard=
-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_21145/shard-apl8/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/sh=
ard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_21145/shard-apl3/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145=
/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_21145/shard-apl1/igt@runner@aborted.html"=
>FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363])</=
p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10630/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/shard-skl9/igt@runner@abo=
rted.html">FAIL</a>) ([i915#3002] / [i915#3363]) -&gt; (<a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-skl7/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21145/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21145/shard-skl1/igt@runner@a=
borted.html">FAIL</a>) ([i915#1436] / [i915#3002] / [i915#3363])</p>
</li>
</ul>
</li>
</ul>
<p>[fdo#1</p>

</body>
</html>

--===============3560014908173216778==--
