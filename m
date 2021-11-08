Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C727449A11
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Nov 2021 17:43:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA7676E0FC;
	Mon,  8 Nov 2021 16:43:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 97B4C6E0FC;
 Mon,  8 Nov 2021 16:43:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8DEE0A9A42;
 Mon,  8 Nov 2021 16:43:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0711769788292086796=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Mon, 08 Nov 2021 16:43:33 -0000
Message-ID: <163638981354.32036.271578386417531188@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211105150146.834052-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20211105150146.834052-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv3=2C1/2=5D_drm/i915/selftests=3A_Use_clea?=
 =?utf-8?q?r=5Fand=5Fwake=5Fup=5Fbit=28=29_for_the_per-engine_reset_bitloc?=
 =?utf-8?q?ks?=
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

--===============0711769788292086796==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v3,1/2] drm/i915/selftests: Use clear_and_wake_up_bit() for the per-engine reset bitlocks
URL   : https://patchwork.freedesktop.org/series/96615/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10846_full -> Patchwork_21526_full
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

  Here are the changes found in Patchwork_21526_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fair@basic-deadline:
    - shard-skl:          NOTRUN -> [FAIL][1] ([i915#2846])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [PASS][2] -> [FAIL][3] ([i915#2842] / [i915#3468])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-apl4/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [PASS][4] -> [FAIL][5] ([i915#2842])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          NOTRUN -> [FAIL][6] ([i915#2842]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#2842])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_pread@exhaustion:
    - shard-tglb:         NOTRUN -> [WARN][9] ([i915#2658])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb8/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-skl:          NOTRUN -> [WARN][10] ([i915#2658])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl6/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@input-checking:
    - shard-skl:          NOTRUN -> [DMESG-WARN][11] ([i915#3002])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl1/igt@gem_userptr_blits@input-checking.html
    - shard-kbl:          NOTRUN -> [DMESG-WARN][12] ([i915#3002])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl2/igt@gem_userptr_blits@input-checking.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-apl7/igt@gem_workarounds@suspend-resume-context.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-apl6/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen7_exec_parse@load-register-reg:
    - shard-iclb:         NOTRUN -> [SKIP][15] ([fdo#109289])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-iclb6/igt@gen7_exec_parse@load-register-reg.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][16] -> [DMESG-WARN][17] ([i915#1436] / [i915#716])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-skl4/igt@gen9_exec_parse@allowed-single.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl10/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-tglb:         [PASS][18] -> [INCOMPLETE][19] ([i915#456])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-tglb8/igt@i915_pm_backlight@fade_with_suspend.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb7/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][20] -> [FAIL][21] ([i915#454])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-tglb:         NOTRUN -> [FAIL][22] ([i915#2681] / [i915#3591])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_sseu@full-enable:
    - shard-iclb:         NOTRUN -> [SKIP][23] ([i915#4387])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-iclb6/igt@i915_pm_sseu@full-enable.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-glk:          [PASS][24] -> [DMESG-WARN][25] ([i915#118]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-glk8/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-glk4/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3777]) +2 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3886]) +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl2/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][28] ([i915#3689]) +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb8/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][29] ([i915#3689] / [i915#3886]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb1/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#3886]) +8 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl2/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-apl3/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-d-random-ccs-data-yf_tiled_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#109278]) +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-iclb6/igt@kms_ccs@pipe-d-random-ccs-data-yf_tiled_ccs.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl2/igt@kms_chamelium@vga-hpd-for-each-pipe.html
    - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +12 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl1/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#109284] / [fdo#111827])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-iclb6/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-d-ctm-limited-range:
    - shard-tglb:         NOTRUN -> [SKIP][36] ([fdo#109284] / [fdo#111827]) +5 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb8/igt@kms_color_chamelium@pipe-d-ctm-limited-range.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          NOTRUN -> [TIMEOUT][37] ([i915#1319]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl2/igt@kms_content_protection@atomic.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x10-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][38] ([i915#3359]) +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb8/igt@kms_cursor_crc@pipe-b-cursor-32x10-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][39] ([fdo#109279] / [i915#3359]) +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb8/igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
    - shard-skl:          NOTRUN -> [SKIP][40] ([fdo#109271]) +125 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl6/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#533])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl10/igt@kms_cursor_legacy@pipe-d-single-bo.html
    - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#533])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-apl3/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][43] -> [DMESG-WARN][44] ([i915#1982]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-skl9/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl6/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][45] -> [INCOMPLETE][46] ([i915#180] / [i915#636])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@basic-flip-vs-dpms@c-edp1:
    - shard-tglb:         [PASS][47] -> [INCOMPLETE][48] ([i915#4457])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-tglb3/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb6/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([i915#79])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-skl:          [PASS][51] -> [INCOMPLETE][52] ([i915#198])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-skl7/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl4/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
    - shard-skl:          NOTRUN -> [FAIL][53] ([i915#2122]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-skl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#2672])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-move:
    - shard-iclb:         NOTRUN -> [SKIP][55] ([fdo#109280])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [PASS][56] -> [INCOMPLETE][57] ([i915#2411] / [i915#2828] / [i915#456])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-tglb:         NOTRUN -> [SKIP][58] ([fdo#111825]) +10 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-tglb:         NOTRUN -> [SKIP][59] ([fdo#109289]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb8/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-kbl:          [PASS][60] -> [DMESG-WARN][61] ([i915#180]) +4 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          NOTRUN -> [FAIL][62] ([fdo#108145] / [i915#265]) +2 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][63] ([fdo#108145] / [i915#265]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-kbl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#2733])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl7/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:
    - shard-tglb:         NOTRUN -> [SKIP][65] ([i915#2920])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
    - shard-kbl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#658]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-skl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#658])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][68] -> [SKIP][69] ([fdo#109441]) +3 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-iclb3/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-tglb:         NOTRUN -> [SKIP][70] ([fdo#111615])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][71] ([fdo#109271]) +116 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl3/igt@kms_universal_plane@disable-primary-vs-flip-pipe-d.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-snb:          [PASS][72] -> [SKIP][73] ([fdo#109271])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-snb6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-snb7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-skl:          [PASS][74] -> [INCOMPLETE][75] ([i915#198] / [i915#2828])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-skl9/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:
    - shard-tglb:         NOTRUN -> [SKIP][76] ([i915#2530]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb1/igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame.html

  * igt@prime_nv_api@i915_self_import:
    - shard-tglb:         NOTRUN -> [SKIP][77] ([fdo#109291])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb8/igt@prime_nv_api@i915_self_import.html

  * igt@sysfs_clients@create:
    - shard-skl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#2994]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl5/igt@sysfs_clients@create.html

  * igt@sysfs_clients@sema-50:
    - shard-kbl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#2994]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl2/igt@sysfs_clients@sema-50.html

  
#### Possible fixes ####

  * igt@fbdev@unaligned-write:
    - {shard-rkl}:        [SKIP][80] ([i915#2582]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-rkl-1/igt@fbdev@unaligned-write.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-rkl-6/igt@fbdev@unaligned-write.html

  * igt@gem_eio@unwedge-stress:
    - shard-skl:          [TIMEOUT][82] ([i915#2369] / [i915#3063]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-skl5/igt@gem_eio@unwedge-stress.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl10/igt@gem_eio@unwedge-stress.html
    - {shard-rkl}:        [TIMEOUT][84] ([i915#3063]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-rkl-2/igt@gem_eio@unwedge-stress.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-rkl-1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-kbl:          [SKIP][86] ([fdo#109271]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-kbl4/igt@gem_exec_fair@basic-none-share@rcs0.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl4/igt@gem_exec_fair@basic-none-share@rcs0.html
    - shard-apl:          [SKIP][88] ([fdo#109271]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-apl6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][90] ([i915#2842]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-tglb:         [FAIL][92] ([i915#2842]) -> [PASS][93] +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][94] ([i915#2842]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-tglb:         [INCOMPLETE][96] ([i915#456]) -> [PASS][97] +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-tglb7/igt@gem_exec_suspend@basic-s0.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb8/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_ppgtt@blt-vs-render-ctx0:
    - shard-glk:          [DMESG-WARN][98] ([i915#118]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-glk1/igt@gem_ppgtt@blt-vs-render-ctx0.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-glk5/igt@gem_ppgtt@blt-vs-render-ctx0.html

  * igt@i915_pm_backlight@bad-brightness:
    - {shard-rkl}:        [SKIP][100] ([i915#3012]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-rkl-1/igt@i915_pm_backlight@bad-brightness.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-rkl-6/igt@i915_pm_backlight@bad-brightness.html

  * igt@i915_pm_rpm@gem-pread:
    - {shard-rkl}:        [SKIP][102] ([fdo#109308]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-rkl-1/igt@i915_pm_rpm@gem-pread.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-rkl-6/igt@i915_pm_rpm@gem-pread.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - {shard-rkl}:        [SKIP][104] ([i915#1397]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - {shard-rkl}:        [SKIP][106] ([i915#1845]) -> [PASS][107] +16 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-rkl-1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - {shard-rkl}:        [SKIP][108] ([i915#1149] / [i915#1849] / [i915#4070]) -> [PASS][109] +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-rkl-1/igt@kms_color@pipe-a-ctm-0-25.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen:
    - shard-snb:          [SKIP][110] ([fdo#109271]) -> [PASS][111] +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-snb2/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-random:
    - {shard-rkl}:        [SKIP][112] ([fdo#112022] / [i915#4070]) -> [PASS][113] +3 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge:
    - {shard-rkl}:        [SKIP][114] ([i915#1849] / [i915#4070]) -> [PASS][115] +3 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-rkl-1/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][116] ([i915#2346] / [i915#533]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
    - {shard-rkl}:        [SKIP][118] ([fdo#111825] / [i915#4070]) -> [PASS][119] +4 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled:
    - {shard-rkl}:        [SKIP][120] ([fdo#111314]) -> [PASS][121] +4 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [FAIL][122] ([i915#79]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
    - shard-glk:          [FAIL][124] ([i915#79]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [DMESG-WARN][126] ([i915#180]) -> [PASS][127] +4 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - {shard-rkl}:        [SKIP][128] ([i915#1849]) -> [PASS][129] +16 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][130] ([i915#1188]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-iclb:         [DMESG-WARN][132] -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-iclb4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-iclb7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][134] ([fdo#108145] / [i915#265]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][136] ([fdo#109441]) -> [PASS][137] +2 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_psr@suspend:
    - {shard-rkl}:        [SKIP][138] ([i915#1072]) -> [PASS][139] +1 similar issue
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-rkl-1/igt@kms_psr@suspend.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-rkl-6/igt@kms_psr@suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][140] ([i915#198] / [i915#2828]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-skl6/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl8/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-d-ts-continuation-suspend:
    - shard-tglb:         [INCOMPLETE][142] ([i915#3896]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-tglb7/igt@kms_vblank@pipe-d-ts-continuation-suspend.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb5/igt@kms

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/index.html

--===============0711769788292086796==
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
<tr><td><b>Series:</b></td><td>series starting with [v3,1/2] drm/i915/selftests: Use clear_and_wake_up_bit() for the per-engine reset bitlocks</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96615/">https://patchwork.freedesktop.org/series/96615/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10846_full -&gt; Patchwork_21526_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21526_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl1/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-apl4/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842] / [i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb8/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl6/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl1/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl2/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-apl7/igt@gem_workarounds@suspend-resume-context.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-apl6/igt@gem_workarounds@suspend-resume-context.html">DMESG-WARN</a> ([i915#180]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@load-register-reg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-iclb6/igt@gen7_exec_parse@load-register-reg.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-skl4/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl10/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade_with_suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-tglb8/igt@i915_pm_backlight@fade_with_suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb7/igt@i915_pm_backlight@fade_with_suspend.html">INCOMPLETE</a> ([i915#456])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-iclb5/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-iclb3/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb2/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a> ([i915#2681] / [i915#3591])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-iclb6/igt@i915_pm_sseu@full-enable.html">SKIP</a> ([i915#4387])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-glk8/igt@kms_big_fb@linear-32bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-glk4/igt@kms_big_fb@linear-32bpp-rotate-180.html">DMESG-WARN</a> ([i915#118]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl2/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb8/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb1/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl2/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-apl3/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs.html">SKIP</a> ([fdo#109271]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-random-ccs-data-yf_tiled_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-iclb6/igt@kms_ccs@pipe-d-random-ccs-data-yf_tiled_ccs.html">SKIP</a> ([fdo#109278]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl2/igt@kms_chamelium@vga-hpd-for-each-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl1/igt@kms_chamelium@vga-hpd-for-each-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +12 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-iclb6/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-limited-range:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb8/igt@kms_color_chamelium@pipe-d-ctm-limited-range.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl2/igt@kms_content_protection@atomic.html">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x10-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb8/igt@kms_cursor_crc@pipe-b-cursor-32x10-onscreen.html">SKIP</a> ([i915#3359]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb8/igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement.html">SKIP</a> ([fdo#109279] / [i915#3359]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl6/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html">SKIP</a> ([fdo#109271]) +125 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl10/igt@kms_cursor_legacy@pipe-d-single-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-apl3/igt@kms_cursor_legacy@pipe-d-single-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-skl9/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl6/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html">DMESG-WARN</a> ([i915#1982]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-edp1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-tglb3/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb6/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html">INCOMPLETE</a> ([i915#4457])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-skl7/igt@kms_flip@flip-vs-suspend@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl4/igt@kms_flip@flip-vs-suspend@b-edp1.html">INCOMPLETE</a> ([i915#198])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-move.html">SKIP</a> ([fdo#109280])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html">INCOMPLETE</a> ([i915#2411] / [i915#2828] / [i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#111825]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb8/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html">DMESG-WARN</a> ([i915#180]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl7/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl2/igt@kms_psr2_su@frontbuffer.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-iclb3/igt@kms_psr@psr2_cursor_render.html">SKIP</a> ([fdo#109441]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl3/igt@kms_universal_plane@disable-primary-vs-flip-pipe-d.html">SKIP</a> ([fdo#109271]) +116 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-snb6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-snb7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-skl9/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">INCOMPLETE</a> ([i915#198] / [i915#2828])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb1/igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame.html">SKIP</a> ([i915#2530]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_self_import:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb8/igt@prime_nv_api@i915_self_import.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl5/igt@sysfs_clients@create.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl2/igt@sysfs_clients@sema-50.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-rkl-1/igt@fbdev@unaligned-write.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-rkl-6/igt@fbdev@unaligned-write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-skl5/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl10/igt@gem_eio@unwedge-stress.html">PASS</a></p>
</li>
<li>
<p>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-rkl-2/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#3063]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-rkl-1/igt@gem_eio@unwedge-stress.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-kbl4/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl4/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-apl6/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-tglb7/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> ([i915#456]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb8/igt@gem_exec_suspend@basic-s0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@blt-vs-render-ctx0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-glk1/igt@gem_ppgtt@blt-vs-render-ctx0.html">DMESG-WARN</a> ([i915#118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-glk5/igt@gem_ppgtt@blt-vs-render-ctx0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@bad-brightness:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-rkl-1/igt@i915_pm_backlight@bad-brightness.html">SKIP</a> ([i915#3012]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-rkl-6/igt@i915_pm_backlight@bad-brightness.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-pread:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-rkl-1/igt@i915_pm_rpm@gem-pread.html">SKIP</a> ([fdo#109308]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-rkl-6/igt@i915_pm_rpm@gem-pread.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915#1397]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-rkl-1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">PASS</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-25:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-rkl-1/igt@kms_color@pipe-a-ctm-0-25.html">SKIP</a> ([i915#1149] / [i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-25.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-snb2/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-random:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-rkl-1/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html">SKIP</a> ([i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html">SKIP</a> ([fdo#111825] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html">SKIP</a> ([fdo#111314]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">PASS</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-iclb4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-iclb7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@suspend:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-rkl-1/igt@kms_psr@suspend.html">SKIP</a> ([i915#1072]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-rkl-6/igt@kms_psr@suspend.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-skl6/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html">INCOMPLETE</a> ([i915#198] / [i915#2828]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-skl8/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-tglb7/igt@kms_vblank@pipe-d-ts-continuation-suspend.html">INCOMPLETE</a> ([i915#3896]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb5/igt@kms">PASS</a></li>
</ul>
</li>
</ul>

</body>
</html>

--===============0711769788292086796==--
