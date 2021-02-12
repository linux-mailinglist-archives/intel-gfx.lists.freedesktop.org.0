Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E33F031A56D
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 20:32:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C624E6E1EC;
	Fri, 12 Feb 2021 19:32:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1173E6E1EC;
 Fri, 12 Feb 2021 19:32:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0A6F3A47E1;
 Fri, 12 Feb 2021 19:32:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kai Vehmanen" <kai.vehmanen@linux.intel.com>
Date: Fri, 12 Feb 2021 19:32:09 -0000
Message-ID: <161315832901.25822.1976174361512170902@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210212150838.2568483-1-kai.vehmanen@linux.intel.com>
In-Reply-To: <20210212150838.2568483-1-kai.vehmanen@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/audio=3A_set_HDA_link_parameters_in_driver?=
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
Content-Type: multipart/mixed; boundary="===============1964606150=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1964606150==
Content-Type: multipart/alternative;
 boundary="===============8723730046317132194=="

--===============8723730046317132194==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/audio: set HDA link parameters in driver
URL   : https://patchwork.freedesktop.org/series/87040/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9771_full -> Patchwork_19671_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19671_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-apl:          [PASS][1] -> [SKIP][2] ([fdo#109271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-apl6/igt@gem_exec_fair@basic-flow@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-apl2/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#2842]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-glk7/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [PASS][5] -> [FAIL][6] ([i915#2842])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-tglb3/igt@gem_exec_fair@basic-none-share@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-tglb8/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][7] -> [FAIL][8] ([i915#2842]) +4 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-iclb:         [PASS][9] -> [FAIL][10] ([i915#2842]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-iclb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-iclb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_params@secure-non-master:
    - shard-tglb:         NOTRUN -> [SKIP][11] ([fdo#112283])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-tglb8/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-iclb:         [PASS][12] -> [DMESG-WARN][13] ([i915#2803]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-iclb6/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-iclb1/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_vm_create@destroy-race:
    - shard-tglb:         [PASS][14] -> [TIMEOUT][15] ([i915#2795])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-tglb2/igt@gem_vm_create@destroy-race.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-tglb2/igt@gem_vm_create@destroy-race.html

  * igt@gen3_mixed_blits:
    - shard-kbl:          NOTRUN -> [SKIP][16] ([fdo#109271]) +58 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-kbl6/igt@gen3_mixed_blits.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1436] / [i915#716])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-skl8/igt@gen9_exec_parse@allowed-single.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-skl2/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-tglb:         NOTRUN -> [SKIP][19] ([fdo#112306])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-tglb8/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - shard-apl:          NOTRUN -> [SKIP][20] ([fdo#109271]) +33 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-apl4/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@i915_suspend@forcewake:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-apl2/igt@i915_suspend@forcewake.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-apl3/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
    - shard-tglb:         NOTRUN -> [SKIP][23] ([fdo#111615])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-tglb8/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180:
    - shard-skl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [fdo#111304])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-skl5/igt@kms_ccs@pipe-c-crc-primary-rotation-180.html

  * igt@kms_chamelium@hdmi-hpd-storm:
    - shard-kbl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-kbl4/igt@kms_chamelium@hdmi-hpd-storm.html

  * igt@kms_color@pipe-c-ctm-0-5:
    - shard-skl:          [PASS][26] -> [DMESG-WARN][27] ([i915#1982])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-skl10/igt@kms_color@pipe-c-ctm-0-5.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-skl7/igt@kms_color@pipe-c-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-a-ctm-green-to-red:
    - shard-tglb:         NOTRUN -> [SKIP][28] ([fdo#109284] / [fdo#111827])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-tglb8/igt@kms_color_chamelium@pipe-a-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-5:
    - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-apl4/igt@kms_color_chamelium@pipe-c-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
    - shard-skl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-skl7/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          NOTRUN -> [TIMEOUT][31] ([i915#1319])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-kbl4/igt@kms_content_protection@legacy.html
    - shard-tglb:         NOTRUN -> [SKIP][32] ([fdo#111828])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-tglb8/igt@kms_content_protection@legacy.html
    - shard-apl:          NOTRUN -> [TIMEOUT][33] ([i915#1319])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-apl1/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-random:
    - shard-skl:          NOTRUN -> [FAIL][34] ([i915#54]) +2 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#54]) +8 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-random:
    - shard-tglb:         NOTRUN -> [SKIP][37] ([fdo#109279])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-512x512-random.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [PASS][38] -> [FAIL][39] ([i915#2370])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-skl:          NOTRUN -> [FAIL][40] ([i915#2346])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#2346])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][43] ([fdo#111825]) +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-tglb8/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          NOTRUN -> [FAIL][44] ([i915#79])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          NOTRUN -> [DMESG-WARN][45] ([i915#180])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
    - shard-skl:          [PASS][46] -> [INCOMPLETE][47] ([i915#198] / [i915#2295])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([i915#2122])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a2:
    - shard-glk:          [PASS][50] -> [FAIL][51] ([i915#2122]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-glk1/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a2.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-glk4/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-kbl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#2642])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-kbl6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:
    - shard-apl:          NOTRUN -> [FAIL][53] ([i915#2641])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-apl4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
    - shard-skl:          NOTRUN -> [SKIP][54] ([fdo#109271]) +59 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-skl3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][55] -> [DMESG-WARN][56] ([i915#180]) +3 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][57] ([fdo#108145] / [i915#265])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
    - shard-kbl:          NOTRUN -> [FAIL][58] ([fdo#108145] / [i915#265])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
    - shard-skl:          NOTRUN -> [FAIL][59] ([fdo#108145] / [i915#265])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][60] -> [FAIL][61] ([fdo#108145] / [i915#265])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#658])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-apl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
    - shard-skl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#658]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-skl9/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
    - shard-tglb:         NOTRUN -> [SKIP][64] ([i915#2920])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-tglb8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-kbl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#658]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-kbl4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][66] -> [SKIP][67] ([fdo#109441]) +2 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@sysfs_clients@busy@vecs0:
    - shard-kbl:          [PASS][68] -> [FAIL][69] ([i915#3009])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-kbl4/igt@sysfs_clients@busy@vecs0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-kbl3/igt@sysfs_clients@busy@vecs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-skl:          [INCOMPLETE][70] ([i915#198]) -> [PASS][71] +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-skl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-skl5/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][72] ([i915#1037] / [i915#3063]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-tglb7/igt@gem_eio@unwedge-stress.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-tglb2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [FAIL][74] ([i915#2842]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-iclb:         [FAIL][76] ([i915#2842]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-iclb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-iclb2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-glk:          [FAIL][78] ([i915#2842]) -> [PASS][79] +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-glk2/igt@gem_exec_fair@basic-pace@vcs0.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-glk5/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-apl:          [FAIL][80] ([i915#2389]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-apl1/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-apl1/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-skl:          [DMESG-WARN][82] ([i915#1610] / [i915#2803]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-skl4/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-skl9/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@vcs0:
    - shard-apl:          [DMESG-WARN][84] ([i915#1610]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-apl1/igt@gem_exec_schedule@u-fairslice@vcs0.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-apl1/igt@gem_exec_schedule@u-fairslice@vcs0.html

  * igt@gem_exec_schedule@u-fairslice@vecs0:
    - shard-tglb:         [DMESG-WARN][86] ([i915#2803]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-tglb3/igt@gem_exec_schedule@u-fairslice@vecs0.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-tglb8/igt@gem_exec_schedule@u-fairslice@vecs0.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-hsw:          [WARN][88] ([i915#1519]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-hsw1/igt@i915_pm_rc6_residency@rc6-fence.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-hsw8/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][90] ([i915#180]) -> [PASS][91] +3 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-apl8/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-random:
    - shard-skl:          [FAIL][92] ([i915#54]) -> [PASS][93] +7 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [INCOMPLETE][94] ([i915#155] / [i915#180] / [i915#636]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
    - shard-skl:          [FAIL][96] ([i915#2122]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][98] ([i915#1188]) -> [PASS][99] +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][100] ([fdo#109441]) -> [PASS][101] +2 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_vblank@pipe-b-accuracy-idle:
    - shard-skl:          [DMESG-WARN][102] ([i915#1982]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-skl4/igt@kms_vblank@pipe-b-accuracy-idle.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-skl9/igt@kms_vblank@pipe-b-accuracy-idle.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][104] ([i915#180]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-kbl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][106] ([i915#1542]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-skl3/igt@perf@polling-parameterized.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-skl10/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][108] ([i915#588]) -> [SKIP][109] ([i915#658])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][110] ([i915#1804] / [i915#2684]) -> [WARN][111] ([i915#2681] / [i915#2684])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:
    - shard-iclb:         [SKIP][112] ([i915#2920]) -> [SKIP][113] ([i915#658]) +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
    - shard-iclb:         [SKIP][114] ([i915#658]) -> [SKIP][115] ([i915#2920]) +2 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121]) ([i915#1814] / [i915#2295] / [i915#2505] / [i915#3002] / [i915#602] / [i915#92]) -> ([FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128]) ([i915#1814] / [i915#2295] / [i915#2505] / [i915#3002])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-kbl7/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-kbl7/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-kbl4/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-kbl2/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-kbl6/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-kbl6/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-kbl6/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-kbl7/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-kbl6/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-kbl3/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-kbl6/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-kbl7/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-kbl1/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][129], [FAIL][130], [FAIL][131]) ([i915#2295] / [i915#2724] / [i915#3002]) -> ([FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136]) ([i915#2295] / [i915#2426] / [i915#2724] / [i915#3002])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-iclb6/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-iclb5/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-iclb3/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-iclb3/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-iclb5/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-iclb8/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-iclb1/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-iclb4/igt@runner@aborted.html
    - shard-apl:          ([FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144]) ([i915#1610] / [i915#1814] / [i915#2295] / [i915#2426] / [i915#3002]) -> ([FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149]) ([i915#2295] / [i915#3002])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-apl6/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-apl3/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-apl4/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-apl2/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-apl8/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-apl3/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-apl1/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-apl6/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-apl3/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-apl2/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-apl3/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-apl8/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-apl6/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153]) ([i915#1764] / [i915#2295] / [i915#2426] / [i915#2667] / [i915#2803] / [i915#3002]) -> ([FAIL][154], [FAIL][155], [FAIL][156]) ([i915#2295] / [i915#2667] / [i915#3002])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-tglb8/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-tglb8/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-tglb3/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-tglb1/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-tglb6/igt@runner@aborted.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-tglb8/igt@runner@aborted.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-tglb3/igt@runner@aborted.html
    - shard-skl:          ([FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161]) ([i915#1814] / [i915#2029] / [i915#2295] / [i915#2426] / [i915#3002]) -> ([FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165]) ([i915#1436] / [i915#2295] / [i915#3002])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-skl5/igt@runner@aborted.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-skl4/igt@runner@aborted.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-skl4/igt@runner@aborted.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-skl5/igt@runner@aborted.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-skl4/igt@runner@aborted.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-skl2/igt@runner@aborted.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-skl2/igt@runner@aborted.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-skl1/igt@runner@aborted.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-skl9/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111304]: https://bugs.freedesktop.org/show_bug.cg

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/index.html

--===============8723730046317132194==
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
<tr><td><b>Series:</b></td><td>drm/i915/audio: set HDA link parameters in d=
river</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/87040/">https://patchwork.freedesktop.org/series/87040/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19671/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19671/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9771_full -&gt; Patchwork_19671_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19671_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-apl6/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/sha=
rd-apl2/igt@gem_exec_fair@basic-flow@rcs0.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1967=
1/shard-glk7/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2=
842]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-tglb3/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
671/shard-tglb8/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i9=
15#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/sha=
rd-kbl2/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) +4 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-iclb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_196=
71/shard-iclb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915=
#2842]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19671/shard-tglb8/igt@gem_exec_params@secure-non-ma=
ster.html">SKIP</a> ([fdo#112283])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-iclb6/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_196=
71/shard-iclb1/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> =
([i915#2803]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_vm_create@destroy-race:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-tglb2/igt@gem_vm_create@destroy-race.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard=
-tglb2/igt@gem_vm_create@destroy-race.html">TIMEOUT</a> ([i915#2795])</li>
</ul>
</li>
<li>
<p>igt@gen3_mixed_blits:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19671/shard-kbl6/igt@gen3_mixed_blits.html">SKIP</a=
> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10=
9271</a>) +58 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-skl8/igt@gen9_exec_parse@allowed-single.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/sh=
ard-skl2/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#143=
6] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19671/shard-tglb8/igt@gen9_exec_parse@secure-batche=
s.html">SKIP</a> ([fdo#112306])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19671/shard-apl4/igt@i915_pm_rpm@modeset-lpsp-stres=
s.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-apl2/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-apl3=
/igt@i915_suspend@forcewake.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19671/shard-tglb8/igt@kms_big_fb@yf-tiled-8bpp-rota=
te-0.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19671/shard-skl5/igt@kms_ccs@pipe-c-crc-primary-rot=
ation-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/s=
how_bug.cg">fdo#111304</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19671/shard-kbl4/igt@kms_chamelium@hdmi-hpd-storm.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-0-5:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-skl10/igt@kms_color@pipe-c-ctm-0-5.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-s=
kl7/igt@kms_color@pipe-c-ctm-0-5.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-green-to-red:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19671/shard-tglb8/igt@kms_color_chamelium@pipe-a-ct=
m-green-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109284">fdo#109284</a> / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19671/shard-apl4/igt@kms_color_chamelium@pipe-c-ctm=
-0-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19671/shard-skl7/igt@kms_color_chamelium@pipe-inval=
id-ctm-matrix-sizes.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / [fdo#111827]) +6 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19671/shard-kbl4/igt@kms_content_protection@legacy.h=
tml">TIMEOUT</a> ([i915#1319])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19671/shard-tglb8/igt@kms_content_protection@legacy.=
html">SKIP</a> ([fdo#111828])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19671/shard-apl1/igt@kms_content_protection@legacy.h=
tml">TIMEOUT</a> ([i915#1319])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19671/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-1=
28x42-random.html">FAIL</a> ([i915#54]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19671/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html">F=
AIL</a> ([i915#54]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19671/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-=
512x512-random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109279">fdo#109279</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19671/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">FAIL</a=
> ([i915#2370])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19671/shard-skl1/igt@kms_cursor_legacy@flip-vs-curs=
or-busy-crc-atomic.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19671/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</a=
> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:=
</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19671/shard-tglb8/igt@kms_flip@2x-single-buffer-fli=
p-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> ([fdo#111825]) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19671/shard-skl1/igt@kms_flip@flip-vs-expired-vblan=
k-interruptible@c-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19671/shard-apl8/igt@kms_flip@flip-vs-suspend-inter=
ruptible@c-dp1.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19671/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.h=
tml">INCOMPLETE</a> ([i915#198] / [i915#2295])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible@a-ed=
p1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19671/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible=
@a-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-glk1/igt@kms_flip@plain-flip-ts-check-interruptible@a-hd=
mi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19671/shard-glk4/igt@kms_flip@plain-flip-ts-check-interruptib=
le@a-hdmi-a2.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19671/shard-kbl6/igt@kms_flip_scaled_crc@flip-32bpp=
-ytileccs-to-64bpp-ytile.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19671/shard-apl4/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-16bpp-ytile.html">FAIL</a> ([i915#2641])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19671/shard-skl3/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-pri-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +59 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-=
kbl7/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> ([i915#180]) +3 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19671/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-co=
nstant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D108145">fdo#108145</a> / [i915#265])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19671/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-co=
nstant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D108145">fdo#108145</a> / [i915#265])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19671/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-co=
nstant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D108145">fdo#108145</a> / [i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19671/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-m=
in.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D108145">fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19671/shard-apl1/igt@kms_psr2_sf@overlay-primary-upd=
ate-sf-dmg-area-4.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19671/shard-skl9/igt@kms_psr2_sf@overlay-primary-upd=
ate-sf-dmg-area-4.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19671/shard-tglb8/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-4.html">SKIP</a> ([i915#2920])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19671/shard-kbl4/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/s=
hard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-kbl4/igt@sysfs_clients@busy@vecs0.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-kb=
l3/igt@sysfs_clients@busy@vecs0.html">FAIL</a> ([i915#3009])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-skl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html">IN=
COMPLETE</a> ([i915#198]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19671/shard-skl5/igt@gem_ctx_isolation@preservation-s3@b=
cs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-tglb7/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i91=
5#1037] / [i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19671/shard-tglb2/igt@gem_eio@unwedge-stress.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19671/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-iclb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19671/shard-iclb2/igt@gem_exec_fair@basic-pace-share@rcs0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-glk2/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([=
i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19671/shard-glk5/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-apl1/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAI=
L</a> ([i915#2389]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19671/shard-apl1/igt@gem_exec_reloc@basic-many-active@rcs0.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-skl4/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-=
WARN</a> ([i915#1610] / [i915#2803]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_19671/shard-skl9/igt@gem_exec_schedule@u-fair=
slice@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-apl1/igt@gem_exec_schedule@u-fairslice@vcs0.html">DMESG-=
WARN</a> ([i915#1610]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19671/shard-apl1/igt@gem_exec_schedule@u-fairslice@vcs0.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vecs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-tglb3/igt@gem_exec_schedule@u-fairslice@vecs0.html">DMES=
G-WARN</a> ([i915#2803]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19671/shard-tglb8/igt@gem_exec_schedule@u-fairslice@vecs0=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-hsw1/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> =
([i915#1519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19671/shard-hsw8/igt@i915_pm_rc6_residency@rc6-fence.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html">=
DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19671/shard-apl8/igt@i915_suspend@fence-restore-tiled2=
untiled.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.htm=
l">FAIL</a> ([i915#54]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19671/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-128x128-=
random.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> =
([i915#155] / [i915#180] / [i915#636]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19671/shard-kbl6/igt@kms_fbcon_fbt@fbc-susp=
end.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">FA=
IL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19671/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@c-edp1.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i91=
5#1188]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19671/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/=
shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-accuracy-idle:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-skl4/igt@kms_vblank@pipe-b-accuracy-idle.html">DMESG-WAR=
N</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19671/shard-skl9/igt@kms_vblank@pipe-b-accuracy-idle.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-kbl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html"=
>DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19671/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuatio=
n-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-skl3/igt@perf@polling-parameterized.html">FAIL</a> ([i91=
5#1542]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19671/shard-skl10/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a>=
 ([i915#588]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19671/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a>=
 ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
([i915#1804] / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19671/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.h=
tml">WARN</a> ([i915#2681] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5=
.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19671/shard-iclb6/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-5.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1=
.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19671/shard-iclb2/igt@kms_psr2_sf@primary-plane-updat=
e-sf-dmg-area-1.html">SKIP</a> ([i915#2920]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-kbl7/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9771/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-kbl2/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_97=
71/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-kbl6/igt@runner@aborted.html">F=
AIL</a>) ([i915#1814] / [i915#2295] / [i915#2505] / [i915#3002] / [i915#602=
] / [i915#92]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19671/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-kbl7/igt@runner=
@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19671/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-kbl3/igt@run=
ner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19671/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-kbl7/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19671/shard-kbl1/igt@runner@aborted.html">FAIL</a>) ([i9=
15#1814] / [i915#2295] / [i915#2505] / [i915#3002])</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-iclb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-iclb5/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9771/shard-iclb3/igt@runner@aborted.html">FAIL</a>) ([i915#2295] / [i9=
15#2724] / [i915#3002]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19671/shard-iclb3/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-iclb5=
/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19671/shard-iclb8/igt@runner@aborted.html">FAIL</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-=
iclb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_19671/shard-iclb4/igt@runner@aborted.html">FAIL=
</a>) ([i915#2295] / [i915#2426] / [i915#2724] / [i915#3002])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-apl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9771/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-apl2/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_97=
71/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-apl3/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/sh=
ard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/CI_DRM_9771/shard-apl6/igt@runner@aborted.html">FAIL</=
a>) ([i915#1610] / [i915#1814] / [i915#2295] / [i915#2426] / [i915#3002]) -=
&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/s=
hard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19671/shard-apl2/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1967=
1/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_19671/shard-apl8/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9671/shard-apl6/igt@runner@aborted.html">FAIL</a>) ([i915#2295] / [i915#300=
2])</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-tglb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-tglb8/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9771/shard-tglb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-tglb1/igt@runner@aborte=
d.html">FAIL</a>) ([i915#1764] / [i915#2295] / [i915#2426] / [i915#2667] / =
[i915#2803] / [i915#3002]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19671/shard-tglb6/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-tg=
lb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19671/shard-tglb3/igt@runner@aborted.html">FAIL</=
a>) ([i915#2295] / [i915#2667] / [i915#3002])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9771/shard-skl5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-skl4/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9771/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9771/shard-skl5/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_97=
71/shard-skl4/igt@runner@aborted.html">FAIL</a>) ([i915#1814] / [i915#2029]=
 / [i915#2295] / [i915#2426] / [i915#3002]) -&gt; (<a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-skl2/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19671/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_19671/shard-skl1/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19671/shard-skl9/igt@runner@aborted.html">FAIL</a>) ([i915#1436] / [i9=
15#2295] / [i915#3002])</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============8723730046317132194==--

--===============1964606150==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1964606150==--
