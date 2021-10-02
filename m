Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9946C41F9EF
	for <lists+intel-gfx@lfdr.de>; Sat,  2 Oct 2021 07:27:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77F896F498;
	Sat,  2 Oct 2021 05:27:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 587456F497;
 Sat,  2 Oct 2021 05:27:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 417B4AA0ED;
 Sat,  2 Oct 2021 05:27:00 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8139756444284350096=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 02 Oct 2021 05:27:00 -0000
Message-ID: <163315242022.26862.2262962315707128944@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211001160826.17080-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20211001160826.17080-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_DP_clock_recovery_=22voltage=5Ftries=22_handling?=
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

--===============8139756444284350096==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix DP clock recovery "voltage_tries" handling
URL   : https://patchwork.freedesktop.org/series/95339/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10680_full -> Patchwork_21222_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_21222_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [PASS][1] -> [FAIL][2] ([i915#2842]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-glk3/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [PASS][3] -> [FAIL][4] ([i915#2842])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_params@no-bsd:
    - shard-iclb:         NOTRUN -> [SKIP][5] ([fdo#109283])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-iclb7/igt@gem_exec_params@no-bsd.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][6] -> [SKIP][7] ([i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-tglb2/igt@gem_huc_copy@huc-copy.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_render_copy@y-tiled-to-vebox-x-tiled:
    - shard-glk:          NOTRUN -> [SKIP][8] ([fdo#109271]) +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-glk4/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [FAIL][9] ([i915#3318])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-apl3/igt@gem_userptr_blits@vma-merge.html

  * igt@gem_workarounds@suspend-resume:
    - shard-tglb:         [PASS][10] -> [INCOMPLETE][11] ([i915#456]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-tglb8/igt@gem_workarounds@suspend-resume.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-tglb7/igt@gem_workarounds@suspend-resume.html

  * igt@gen7_exec_parse@load-register-reg:
    - shard-iclb:         NOTRUN -> [SKIP][12] ([fdo#109289])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-iclb7/igt@gen7_exec_parse@load-register-reg.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-tglb:         NOTRUN -> [SKIP][13] ([i915#2856])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-tglb1/igt@gen9_exec_parse@bb-start-out.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][14] -> [FAIL][15] ([i915#454])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         NOTRUN -> [WARN][16] ([i915#1804] / [i915#2684])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-apl:          NOTRUN -> [SKIP][17] ([fdo#109271]) +132 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-apl8/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][18] ([fdo#110725] / [fdo#111614])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-iclb7/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#3777])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-apl7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#3777])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-kbl2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
    - shard-tglb:         NOTRUN -> [SKIP][21] ([fdo#111615])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-tglb1/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#3886]) +8 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-apl8/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#3886])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-glk4/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#3886]) +7 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-kbl2/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-apl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-apl3/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-25:
    - shard-iclb:         NOTRUN -> [SKIP][26] ([fdo#109284] / [fdo#111827])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-iclb7/igt@kms_color_chamelium@pipe-a-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-a-degamma:
    - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-kbl4/igt@kms_color_chamelium@pipe-a-degamma.html

  * igt@kms_content_protection@lic:
    - shard-kbl:          NOTRUN -> [TIMEOUT][28] ([i915#1319])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-kbl2/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@uevent:
    - shard-kbl:          NOTRUN -> [FAIL][29] ([i915#2105])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-kbl2/igt@kms_content_protection@uevent.html
    - shard-apl:          NOTRUN -> [FAIL][30] ([i915#2105])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-apl8/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#109278] / [fdo#109279])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-iclb7/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#109278]) +3 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-iclb7/igt@kms_cursor_crc@pipe-d-cursor-dpms.html

  * igt@kms_cursor_crc@pipe-d-cursor-max-size-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][33] ([i915#3359])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-max-size-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][34] ([fdo#109271]) +92 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-kbl2/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#2346])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#2346] / [i915#533])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [PASS][39] -> [INCOMPLETE][40] ([i915#2411] / [i915#4173] / [i915#456])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-tglb3/igt@kms_fbcon_fbt@fbc-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-tglb7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109274])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-iclb7/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1:
    - shard-glk:          [PASS][42] -> [FAIL][43] ([i915#79])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [PASS][44] -> [DMESG-WARN][45] ([i915#180]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-apl7/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-tglb:         NOTRUN -> [SKIP][46] ([i915#2587])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-tglb1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:
    - shard-tglb:         NOTRUN -> [SKIP][47] ([fdo#111825]) +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite:
    - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109280]) +4 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:
    - shard-skl:          NOTRUN -> [SKIP][49] ([fdo#109271]) +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-skl7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][50] -> [FAIL][51] ([i915#1188])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][52] -> [DMESG-WARN][53] ([i915#180]) +3 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#533]) +3 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-apl3/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-kbl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#533])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-kbl2/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][56] -> [INCOMPLETE][57] ([i915#794])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-kbl:          NOTRUN -> [FAIL][58] ([fdo#108145] / [i915#265])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-kbl1/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][59] ([fdo#108145] / [i915#265])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_plane_lowres@pipe-a-tiling-none:
    - shard-tglb:         NOTRUN -> [SKIP][60] ([i915#3536])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-tglb1/igt@kms_plane_lowres@pipe-a-tiling-none.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-kbl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#658]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-kbl4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-tglb:         NOTRUN -> [SKIP][62] ([i915#2920])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-tglb1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#658]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-apl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         NOTRUN -> [SKIP][64] ([fdo#109441])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-iclb7/igt@kms_psr@psr2_dpms.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][65] -> [SKIP][66] ([fdo#109441])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-iclb4/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_psr@psr2_primary_render:
    - shard-tglb:         NOTRUN -> [FAIL][67] ([i915#132] / [i915#3467])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-tglb1/igt@kms_psr@psr2_primary_render.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][68] -> [DMESG-WARN][69] ([i915#180] / [i915#295])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][70] -> [FAIL][71] ([i915#1722])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl3/igt@perf@polling-small-buf.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-skl3/igt@perf@polling-small-buf.html

  * igt@prime_nv_api@i915_nv_import_vs_close:
    - shard-iclb:         NOTRUN -> [SKIP][72] ([fdo#109291])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-iclb7/igt@prime_nv_api@i915_nv_import_vs_close.html

  * igt@sysfs_clients@busy:
    - shard-kbl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#2994])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-kbl2/igt@sysfs_clients@busy.html

  * igt@sysfs_clients@sema-10:
    - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#2994])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-apl7/igt@sysfs_clients@sema-10.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][75] ([i915#658]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-iclb5/igt@feature_discovery@psr2.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [DMESG-WARN][77] ([i915#180]) -> [PASS][78] +6 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_eio@in-flight-suspend:
    - shard-glk:          [DMESG-WARN][79] -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-glk8/igt@gem_eio@in-flight-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-glk4/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          [FAIL][81] ([i915#2842]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-glk9/igt@gem_exec_fair@basic-none@rcs0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][83] ([i915#2842]) -> [PASS][84] +3 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
    - shard-apl:          [FAIL][85] ([i915#2842]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-apl3/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [FAIL][87] ([i915#2842]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs0.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-iclb5/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_nop@basic-series:
    - shard-glk:          [DMESG-WARN][89] ([i915#118] / [i915#95]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-glk6/igt@gem_exec_nop@basic-series.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-glk2/igt@gem_exec_nop@basic-series.html

  * igt@i915_query@query-regions-garbage-items:
    - shard-skl:          [DMESG-WARN][91] ([i915#1982]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl8/igt@i915_query@query-regions-garbage-items.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-skl8/igt@i915_query@query-regions-garbage-items.html

  * igt@i915_suspend@forcewake:
    - shard-tglb:         [INCOMPLETE][93] ([i915#2411] / [i915#456]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-tglb7/igt@i915_suspend@forcewake.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-tglb1/igt@i915_suspend@forcewake.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [INCOMPLETE][95] ([i915#155] / [i915#636]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][97] ([i915#2122]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-glk1/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-glk7/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][99] ([i915#79]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
    - shard-skl:          [FAIL][101] ([i915#2122]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][103] ([i915#1188]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][105] ([fdo#108145] / [i915#265]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][107] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-iclb5/igt@kms_psr2_su@frontbuffer.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][109] ([fdo#109441]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-iclb5/igt@kms_psr@psr2_cursor_render.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][111] ([i915#180]) -> [PASS][112] +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-apl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-apl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-iclb:         [FAIL][113] -> [FAIL][114] ([i915#2842])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-iclb8/igt@gem_exec_fair@basic-none@vcs0.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-iclb3/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [FAIL][115] ([i915#2680]) -> [WARN][116] ([i915#1804] / [i915#2684])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          [FAIL][117] ([i915#3743]) -> [FAIL][118] ([i915#3722])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-skl5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
    - shard-iclb:         [SKIP][119] ([i915#658]) -> [SKIP][120] ([i915#2920]) +2 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-iclb4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][121] ([i915#2920]) -> [SKIP][122] ([i915#658])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363]) -> ([FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#3363])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-apl6/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-apl8/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-apl2/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-apl7/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-apl2/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-apl6/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-apl1/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-apl1/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-apl1/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-apl6/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-apl1/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-apl6/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2105]: https://gitlab.freedesktop.org/drm/intel/issues/2105
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2680]: https://gitlab.freedesktop.org/drm/intel/issues/2680
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
  [i915

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/index.html

--===============8139756444284350096==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix DP clock recovery &quot;voltag=
e_tries&quot; handling</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/95339/">https://patchwork.freedesktop.org/series/95339/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21222/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21222/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10680_full -&gt; Patchwork_21222_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21222_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_212=
22/shard-glk3/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/s=
hard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-bsd:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-iclb7/igt@gem_exec_params@no-bsd.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109283"=
>fdo#109283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-tglb2/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-tgl=
b6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-x-tiled:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-glk4/igt@gem_render_copy@y-tiled-to-veb=
ox-x-tiled.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-apl3/igt@gem_userptr_blits@vma-merge.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/33=
18">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-tglb8/igt@gem_workarounds@suspend-resume.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/=
shard-tglb7/igt@gem_workarounds@suspend-resume.html">INCOMPLETE</a> ([i915#=
456]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@load-register-reg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-iclb7/igt@gen7_exec_parse@load-register=
-reg.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-tglb1/igt@gen9_exec_parse@bb-start-out.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-iclb7/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-iclb4/=
igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fen=
ce.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1804">i915#1804</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2684">i915#2684</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-apl8/igt@i915_pm_rpm@modeset-pc8-reside=
ncy-stress.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a>) +132 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-iclb7/igt@kms_big_fb@x-tiled-32bpp-rota=
te-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D110725">fdo#110725</a> / <a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-apl7/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-kbl2/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-tglb1/igt@kms_big_fb@yf-tiled-16bpp-rot=
ate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-apl8/igt@kms_ccs@pipe-a-crc-sprite-plan=
es-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886]) +8 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-glk4/igt@kms_ccs@pipe-b-bad-rotation-90=
-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-kbl2/igt@kms_ccs@pipe-b-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886]) +7 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-apl3/igt@kms_chamelium@dp-crc-multiple.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111827">fdo#111827</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-25:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-iclb7/igt@kms_color_chamelium@pipe-a-ct=
m-0-25.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-degamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-kbl4/igt@kms_color_chamelium@pipe-a-deg=
amma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-kbl2/igt@kms_content_protection@lic.htm=
l">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21222/shard-kbl2/igt@kms_content_protection@uevent.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
105">i915#2105</a>)</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21222/shard-apl8/igt@kms_content_protection@uevent.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
105">i915#2105</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-iclb7/igt@kms_cursor_crc@pipe-a-cursor-=
512x512-sliding.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109279">fdo#109279</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-iclb7/igt@kms_cursor_crc@pipe-d-cursor-=
dpms.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109278">fdo#109278</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-max-size-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-=
max-size-offscreen.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-kbl2/igt@kms_cursor_crc@pipe-d-cursor-s=
uspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a>) +92 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21222/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-=
transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_21222/shard-skl5/igt@kms_cursor_legacy@flip-vs-c=
ursor-atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-tglb3/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard=
-tglb7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / [i915#4173=
] / [i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-iclb7/igt@kms_flip@2x-flip-vs-panning.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-hdmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21222/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-inte=
rruptible@b-hdmi-a1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-apl7/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/s=
hard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-tglb1/igt@kms_flip_scaled_crc@flip-32bp=
p-ytile-to-32bpp-ytileccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/2587">i915#2587</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +3 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-pri-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +4 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-skl7/igt@kms_frontbuffer_tracking@fbc-r=
gb565-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-sk=
l4/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard=
-kbl6/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +3 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-apl3/igt@kms_pipe_crc_basic@compare-crc=
-sanitycheck-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533]) +3 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-kbl2/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d-frame-sequence.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21222/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">=
INCOMPLETE</a> ([i915#794])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-kbl1/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-c=
onstant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-none:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-tglb1/igt@kms_plane_lowres@pipe-a-tilin=
g-none.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-kbl4/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-2.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-tglb1/igt@kms_psr2_sf@overlay-plane-upd=
ate-sf-dmg-area-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-apl7/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-4.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-iclb7/igt@kms_psr@psr2_dpms.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#=
109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/s=
hard-iclb4/igt@kms_psr@psr2_primary_mmap_gtt.html">SKIP</a> (<a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_render:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-tglb1/igt@kms_psr@psr2_primary_render.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
32">i915#132</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3467">i915#3467</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21222/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DM=
ESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/18=
0">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/295">i915#295</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-skl3/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-skl=
3/igt@perf@polling-small-buf.html">FAIL</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/1722">i915#1722</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_import_vs_close:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-iclb7/igt@prime_nv_api@i915_nv_import_v=
s_close.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-kbl2/igt@sysfs_clients@busy.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#=
109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/299=
4">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21222/shard-apl7/igt@sysfs_clients@sema-10.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-iclb5/igt@feature_discovery@psr2.html">SKIP</a> ([i915#=
658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1222/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21222/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@vcs0.html=
">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-glk8/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/=
shard-glk4/igt@gem_eio@in-flight-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-glk9/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
222/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10680/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_212=
22/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +3 similar i=
ssues</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10680/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_212=
22/shard-apl3/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1222/shard-iclb5/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_nop@basic-series:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-glk6/igt@gem_exec_nop@basic-series.html">DMESG-WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118<=
/a> / [i915#95]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21222/shard-glk2/igt@gem_exec_nop@basic-series.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_query@query-regions-garbage-items:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-skl8/igt@i915_query@query-regions-garbage-items.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21222/shard-skl8/igt@i915_query@query-regions-garbage-items.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-tglb7/igt@i915_suspend@forcewake.html">INCOMPLETE</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411<=
/a> / [i915#456]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21222/shard-tglb1/igt@i915_suspend@forcewake.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155<=
/a> / [i915#636]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21222/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-glk1/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdm=
i-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21222/shard-glk7/igt@kms_flip@2x-plain-flip-ts-check@ac-=
hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">F=
AIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21222/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@b-e=
dp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21222/shard-skl7/igt@kms_flip@plain-flip-ts-check-interru=
ptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222=
/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1081=
45">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21222/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage=
-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-iclb5/igt@kms_psr2_su@frontbuffer.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a>=
 / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#11=
1068</a> / [i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_21222/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-iclb5/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
222/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-apl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21222/shard-apl6/igt@kms_vblank@pipe-b-ts-continuation-suspen=
d.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-iclb8/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/s=
hard-iclb3/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2680">i915#268=
0</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21222/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-skl5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-=
180-async-flip.html">FAIL</a> ([i915#3743]) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-skl10/igt@kms_big_fb@y-til=
ed-max-hw-stride-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3722])</=
li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-iclb4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-=
1.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21222/shard-iclb2/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2920">i915#2920</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10680/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_21222/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-d=
mg-area-4.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10680/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-apl8/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_10680/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-apl7/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_10680/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10680/shard-apl6/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10680/shard-apl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#336=
3</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21222/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-apl1/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21222/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21222/shard-apl1/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21222/shard-apl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363=
</a>)</li>
</ul>
</li>
</ul>
<p>[i915</p>

</body>
</html>

--===============8139756444284350096==--
