Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A11415187
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 22:39:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FB1E6EC74;
	Wed, 22 Sep 2021 20:39:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 758D86EC74;
 Wed, 22 Sep 2021 20:39:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6CBDFA00E8;
 Wed, 22 Sep 2021 20:39:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5938416341008626816=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Sep 2021 20:39:31 -0000
Message-ID: <163234317140.6942.6893590580340061558@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210922015039.26411-1-matthew.brost@intel.com>
In-Reply-To: <20210922015039.26411-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_fix_blank_screen_booting_crashes_=28rev5=29?=
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

--===============5938416341008626816==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: fix blank screen booting crashes (rev5)
URL   : https://patchwork.freedesktop.org/series/94822/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10627_full -> Patchwork_21132_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_21132_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1099]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-snb2/igt@gem_ctx_persistence@legacy-engines-mixed.html

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [PASS][2] -> [FAIL][3] ([i915#2410])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-tglb3/igt@gem_ctx_persistence@many-contexts.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb2/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][4] -> [TIMEOUT][5] ([i915#2369] / [i915#3063] / [i915#3648])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-tglb2/igt@gem_eio@unwedge-stress.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-kbl:          [PASS][6] -> [FAIL][7] ([i915#2842])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-kbl3/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][8] ([i915#2842])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#2842]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-tglb2/igt@gem_exec_fair@basic-pace@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_params@no-blt:
    - shard-tglb:         NOTRUN -> [SKIP][13] ([fdo#109283])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb3/igt@gem_exec_params@no-blt.html

  * igt@gem_huc_copy@huc-copy:
    - shard-kbl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#2190])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-kbl2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-snb:          NOTRUN -> [WARN][15] ([i915#2658])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-snb5/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-apl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#3323])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-apl3/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-tglb:         NOTRUN -> [SKIP][17] ([i915#3297])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb5/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][18] ([i915#180])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-kbl6/igt@gem_workarounds@suspend-resume-context.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][19] -> [INCOMPLETE][20] ([i915#155] / [i915#794])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][21] -> [DMESG-WARN][22] ([i915#1436] / [i915#716])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-skl9/igt@gen9_exec_parse@allowed-single.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-skl9/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-iclb:         NOTRUN -> [SKIP][23] ([i915#2856])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-iclb5/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#1937])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-apl8/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-tglb:         NOTRUN -> [SKIP][25] ([fdo#111644] / [i915#1397] / [i915#2411])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb5/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@i915_selftest@live@gt_lrc:
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][26] ([i915#2373])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb3/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_pm:
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][27] ([i915#1759] / [i915#2291])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb3/igt@i915_selftest@live@gt_pm.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#2521])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-skl2/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][30] ([fdo#111614])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb3/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3777]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-apl8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3777])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-kbl2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#111615]) +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb5/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html

  * igt@kms_big_joiner@basic:
    - shard-tglb:         NOTRUN -> [SKIP][34] ([i915#2705])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb5/igt@kms_big_joiner@basic.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][35] ([i915#3689] / [i915#3886])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb5/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3886]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-kbl7/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3886]) +7 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-apl8/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][38] ([i915#3689]) +7 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb3/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs.html

  * igt@kms_chamelium@hdmi-edid-read:
    - shard-tglb:         NOTRUN -> [SKIP][39] ([fdo#109284] / [fdo#111827]) +10 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb3/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-snb:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +15 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-snb7/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +22 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-apl8/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-25:
    - shard-kbl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-kbl2/igt@kms_color_chamelium@pipe-b-ctm-0-25.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglb:         NOTRUN -> [SKIP][43] ([i915#3116])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb3/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          NOTRUN -> [TIMEOUT][44] ([i915#1319]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-kbl6/igt@kms_content_protection@legacy.html
    - shard-tglb:         NOTRUN -> [SKIP][45] ([fdo#111828])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb5/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@srm:
    - shard-apl:          NOTRUN -> [TIMEOUT][46] ([i915#1319]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-apl8/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-a-cursor-max-size-onscreen:
    - shard-kbl:          NOTRUN -> [SKIP][47] ([fdo#109271]) +84 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-max-size-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          [PASS][48] -> [DMESG-WARN][49] ([i915#180])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
    - shard-tglb:         [PASS][50] -> [INCOMPLETE][51] ([i915#2828] / [i915#456]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][52] ([i915#3319]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-max-size-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][53] ([i915#3359]) +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-max-size-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][54] ([fdo#109279] / [i915#3359]) +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-skl:          [PASS][55] -> [FAIL][56] ([i915#2346]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglb:         NOTRUN -> [SKIP][57] ([i915#3528])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb3/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][58] -> [FAIL][59] ([i915#79])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@plain-flip-ts-check@c-edp1:
    - shard-skl:          [PASS][60] -> [FAIL][61] ([i915#2122])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-skl6/igt@kms_flip@plain-flip-ts-check@c-edp1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-skl5/igt@kms_flip@plain-flip-ts-check@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-snb:          NOTRUN -> [SKIP][62] ([fdo#109271]) +462 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-snb7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-tglb:         NOTRUN -> [SKIP][63] ([fdo#111825]) +17 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][64] -> [FAIL][65] ([i915#1188])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:
    - shard-skl:          [PASS][66] -> [DMESG-WARN][67] ([i915#1982])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-skl9/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-skl9/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][68] -> [DMESG-WARN][69] ([i915#180]) +4 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#533]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
    - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#533])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - shard-apl:          NOTRUN -> [DMESG-WARN][72] ([i915#180])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][73] ([i915#265])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][74] -> [FAIL][75] ([fdo#108145] / [i915#265])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][76] ([fdo#108145] / [i915#265]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-apl3/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-kbl:          NOTRUN -> [FAIL][77] ([fdo#108145] / [i915#265]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_plane_lowres@pipe-c-tiling-y:
    - shard-tglb:         NOTRUN -> [SKIP][78] ([i915#3536])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb5/igt@kms_plane_lowres@pipe-c-tiling-y.html

  * igt@kms_plane_multiple@atomic-pipe-d-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][79] ([fdo#112054]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb5/igt@kms_plane_multiple@atomic-pipe-d-tiling-yf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#658]) +2 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-apl2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
    - shard-tglb:         NOTRUN -> [SKIP][81] ([i915#2920]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb5/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html
    - shard-kbl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#658]) +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-kbl6/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][83] -> [SKIP][84] ([fdo#109441])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_psr@psr2_primary_render:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109441])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-iclb5/igt@kms_psr@psr2_primary_render.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         NOTRUN -> [FAIL][86] ([i915#132] / [i915#3467])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb5/igt@kms_psr@psr2_suspend.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-skl:          [PASS][87] -> [INCOMPLETE][88] ([i915#198] / [i915#1982])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-skl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-skl9/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271]) +236 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-apl8/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@kms_vblank@pipe-d-wait-busy:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109278])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-iclb5/igt@kms_vblank@pipe-d-wait-busy.html

  * igt@nouveau_crc@pipe-d-ctx-flip-detection:
    - shard-tglb:         NOTRUN -> [SKIP][91] ([i915#2530]) +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb3/igt@nouveau_crc@pipe-d-ctx-flip-detection.html

  * igt@prime_nv_api@i915_nv_double_import:
    - shard-tglb:         NOTRUN -> [SKIP][92] ([fdo#109291]) +3 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb5/igt@prime_nv_api@i915_nv_double_import.html

  * igt@sysfs_clients@fair-0:
    - shard-apl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#2994]) +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-apl8/igt@sysfs_clients@fair-0.html

  * igt@sysfs_clients@sema-25:
    - shard-kbl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#2994])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-kbl6/igt@sysfs_clients@sema-25.html
    - shard-tglb:         NOTRUN -> [SKIP][95] ([i915#2994]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb5/igt@sysfs_clients@sema-25.html

  
#### Possible fixes ####

  * igt@drm_import_export@prime:
    - shard-kbl:          [INCOMPLETE][96] ([i915#2944]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-kbl2/igt@drm_import_export@prime.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-kbl7/igt@drm_import_export@prime.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][98] ([i915#2842]) -> [PASS][99] +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][100] ([i915#180]) -> [PASS][101] +2 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-apl8/igt@gem_softpin@noreloc-s3.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-apl1/igt@gem_softpin@noreloc-s3.html

  * igt@i915_suspend@forcewake:
    - shard-tglb:         [INCOMPLETE][102] ([i915#2411] / [i915#456]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-tglb7/igt@i915_suspend@forcewake.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb3/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][104] ([i915#456]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@pipe-b-forked-move:
    - shard-skl:          [DMESG-WARN][106] ([i915#1982]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-skl1/igt@kms_cursor_legacy@pipe-b-forked-move.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-skl4/igt@kms_cursor_legacy@pipe-b-forked-move.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][108] ([i915#79]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:
    - shard-iclb:         [SKIP][110] ([i915#3701]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-iclb4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][112] ([i915#1188]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-skl4/igt@kms_hdr@bpc-switch.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-skl1/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][114] ([i915#180]) -> [PASS][115] +9 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][116] ([fdo#108145] / [i915#265]) -> [PASS][117] +2 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [SKIP][118] ([fdo#109441]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-iclb7/igt@kms_psr@psr2_sprite_render.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-iclb2/igt@kms_psr@psr2_sprite_render.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [FAIL][120] ([i915#1722]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-skl8/igt@perf@polling-small-buf.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-skl10/igt@perf@polling-small-buf.html

  * igt@perf@short-reads:
    - shard-skl:          [FAIL][122] ([i915#51]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-skl5/igt@perf@short-reads.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-skl6/igt@perf@short-reads.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [FAIL][124] ([i915#3343]) -> [SKIP][125] ([i915#3288])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-iclb1/igt@i915_pm_dc@dc9-dpms.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][126] ([i915#2684]) -> [WARN][127] ([i915#1804] / [i915#2684]) +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
    - shard-iclb:         [SKIP][128] ([i915#2920]) -> [SKIP][129] ([i915#658]) +2 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-iclb4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][130] ([i915#658]) -> [SKIP][131] ([i915#2920]) +1 similar issue
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#2722] / [i915#3002] / [i915#3363] / [i915#602]) -> ([FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#602])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-kbl2/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-kbl1/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-kbl4/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-kbl1/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-kbl3/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-kbl3/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-kbl4/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-kbl3/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-kbl3/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-kbl7/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-kbl6/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-kbl4/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-kbl7/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-kbl4/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-kbl6/igt@runner@aborted.html
   [147]: https://intel-gfx-

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/index.html

--===============5938416341008626816==
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
<tr><td><b>Series:</b></td><td>drm/i915: fix blank screen booting crashes (=
rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/94822/">https://patchwork.freedesktop.org/series/94822/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21132/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21132/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10627_full -&gt; Patchwork_21132_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21132_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-snb2/igt@gem_ctx_persistence@legacy-eng=
ines-mixed.html">SKIP</a> ([fdo#109271] / [i915#1099]) +3 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-tglb3/igt@gem_ctx_persistence@many-contexts.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_211=
32/shard-tglb2/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> ([i915#=
2410])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-tglb2/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard-tg=
lb6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063]=
 / [i915#3648])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2113=
2/shard-kbl3/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> ([i915#28=
42])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1=
.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
132/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i91=
5#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-tglb2/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/s=
hard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-tglb3/igt@gem_exec_params@no-blt.html">=
SKIP</a> ([fdo#109283])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-kbl2/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-snb5/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-apl3/igt@gem_userptr_blits@dmabuf-sync.=
html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-tglb5/igt@gem_userptr_blits@unsync-unma=
p-after-close.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-kbl6/igt@gem_workarounds@suspend-resume=
-context.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2113=
2/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html">INCOMPLETE</a> ([i=
915#155] / [i915#794])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-skl9/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/s=
hard-skl9/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#14=
36] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-iclb5/igt@gen9_exec_parse@secure-batche=
s.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-apl8/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp=
-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-tglb5/igt@i915_pm_rpm@modeset-non-lpsp-=
stress-no-wait.html">SKIP</a> ([fdo#111644] / [i915#1397] / [i915#2411])</l=
i>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-tglb3/igt@i915_selftest@live@gt_lrc.htm=
l">DMESG-FAIL</a> ([i915#2373])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-tglb3/igt@i915_selftest@live@gt_pm.html=
">DMESG-FAIL</a> ([i915#1759] / [i915#2291])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21132/shard-skl2/igt@kms_async_flips@alternate-sync-async-flip.html">F=
AIL</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-tglb3/igt@kms_big_fb@x-tiled-8bpp-rotat=
e-270.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-apl8/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 si=
milar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-kbl2/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-tglb5/igt@kms_big_fb@yf-tiled-64bpp-rot=
ate-270.html">SKIP</a> ([fdo#111615]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-tglb5/igt@kms_big_joiner@basic.html">SK=
IP</a> ([i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-tglb5/igt@kms_ccs@pipe-b-bad-pixel-form=
at-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-kbl7/igt@kms_ccs@pipe-b-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-apl8/igt@kms_ccs@pipe-c-ccs-on-another-=
bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +7 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-tglb3/igt@kms_ccs@pipe-d-crc-sprite-pla=
nes-basic-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-tglb3/igt@kms_chamelium@hdmi-edid-read.=
html">SKIP</a> ([fdo#109284] / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-snb7/igt@kms_color_chamelium@pipe-a-ctm=
-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +15 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-apl8/igt@kms_color_chamelium@pipe-a-ctm=
-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +22 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-25:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-kbl2/igt@kms_color_chamelium@pipe-b-ctm=
-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-tglb3/igt@kms_content_protection@dp-mst=
-lic-type-0.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21132/shard-kbl6/igt@kms_content_protection@legacy.h=
tml">TIMEOUT</a> ([i915#1319]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21132/shard-tglb5/igt@kms_content_protection@legacy.=
html">SKIP</a> ([fdo#111828])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-apl8/igt@kms_content_protection@srm.htm=
l">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-max-size-onscreen:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-m=
ax-size-onscreen.html">SKIP</a> ([fdo#109271]) +84 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10627/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
132/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</a=
> ([i915#180])</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10627/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1132/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">INCOMPLETE<=
/a> ([i915#2828] / [i915#456]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-=
32x32-sliding.html">SKIP</a> ([i915#3319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-max-size-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-=
max-size-onscreen.html">SKIP</a> ([i915#3359]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-=
512x512-sliding.html">SKIP</a> ([fdo#109279] / [i915#3359]) +2 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21132/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</=
a> ([i915#2346]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-tglb3/igt@kms_dp_tiled_display@basic-te=
st-pattern-with-chamelium.html">SKIP</a> ([i915#3528])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21132/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a=
> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-skl6/igt@kms_flip@plain-flip-ts-check@c-edp1.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
132/shard-skl5/igt@kms_flip@plain-flip-ts-check@c-edp1.html">FAIL</a> ([i91=
5#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-snb7/igt@kms_flip_scaled_crc@flip-32bpp=
-ytileccs-to-64bpp-ytile.html">SKIP</a> ([fdo#109271]) +462 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#111825]) +17 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/shard=
-skl1/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-skl9/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-fram=
e-sequence.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21132/shard-skl9/igt@kms_pipe_crc_basic@nonblocking-crc-=
pipe-a-frame-sequence.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21132/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">=
DMESG-WARN</a> ([i915#180]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21132/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read=
-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21132/shard-apl8/igt@kms_pipe_crc_basic@suspend-read=
-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-apl8/igt@kms_plane@plane-panning-bottom=
-right-suspend@pipe-a-planes.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mi=
n.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21132/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-=
min.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-apl3/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-y:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-tglb5/igt@kms_plane_lowres@pipe-c-tilin=
g-y.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-d-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-tglb5/igt@kms_plane_multiple@atomic-pip=
e-d-tiling-yf.html">SKIP</a> ([fdo#112054]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-apl2/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-0:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21132/shard-tglb5/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-0.html">SKIP</a> ([i915#2920]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21132/shard-kbl6/igt@kms_psr2_sf@plane-move-sf-dmg-a=
rea-0.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/=
shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> ([fdo#109441]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_render:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-iclb5/igt@kms_psr@psr2_primary_render.h=
tml">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-tglb5/igt@kms_psr@psr2_suspend.html">FA=
IL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-skl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21132/shard-skl9/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">IN=
COMPLETE</a> ([i915#198] / [i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-apl8/igt@kms_vblank@pipe-d-ts-continuat=
ion-idle.html">SKIP</a> ([fdo#109271]) +236 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-busy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-iclb5/igt@kms_vblank@pipe-d-wait-busy.h=
tml">SKIP</a> ([fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-ctx-flip-detection:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-tglb3/igt@nouveau_crc@pipe-d-ctx-flip-d=
etection.html">SKIP</a> ([i915#2530]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_double_import:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-tglb5/igt@prime_nv_api@i915_nv_double_i=
mport.html">SKIP</a> ([fdo#109291]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-apl8/igt@sysfs_clients@fair-0.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21132/shard-kbl6/igt@sysfs_clients@sema-25.html">SKI=
P</a> ([fdo#109271] / [i915#2994])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21132/shard-tglb5/igt@sysfs_clients@sema-25.html">SK=
IP</a> ([i915#2994]) +1 similar issue</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_import_export@prime:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-kbl2/igt@drm_import_export@prime.html">INCOMPLETE</a> (=
[i915#2944]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21132/shard-kbl7/igt@drm_import_export@prime.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21132/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html=
">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-apl8/igt@gem_softpin@noreloc-s3.html">DMESG-WARN</a> ([=
i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21132/shard-apl1/igt@gem_softpin@noreloc-s3.html">PASS</a> +2 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-tglb7/igt@i915_suspend@forcewake.html">INCOMPLETE</a> (=
[i915#2411] / [i915#456]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21132/shard-tglb3/igt@i915_suspend@forcewake.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">IN=
COMPLETE</a> ([i915#456]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21132/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-suspe=
nd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-b-forked-move:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-skl1/igt@kms_cursor_legacy@pipe-b-forked-move.html">DME=
SG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21132/shard-skl4/igt@kms_cursor_legacy@pipe-b-forked-mov=
e.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">F=
AIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21132/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp=
-ytile.html">SKIP</a> ([i915#3701]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_21132/shard-iclb4/igt@kms_flip_scaled_crc@flip=
-64bpp-ytile-to-16bpp-ytile.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-skl4/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132=
/shard-skl1/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a=
> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21132/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> +9 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21132/shard-skl10/igt@kms_plane_alpha_blen=
d@pipe-c-coverage-7efc.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-iclb7/igt@kms_psr@psr2_sprite_render.html">SKIP</a> ([f=
do#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21132/shard-iclb2/igt@kms_psr@psr2_sprite_render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-skl8/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1=
722]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1132/shard-skl10/igt@perf@polling-small-buf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@short-reads:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-skl5/igt@perf@short-reads.html">FAIL</a> ([i915#51]) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21132/sha=
rd-skl6/igt@perf@short-reads.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-iclb1/igt@i915_pm_dc@dc9-dpms.html">FAIL</a> ([i915#334=
3]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_211=
32/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> ([i915#3288])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> ([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_21132/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</=
a> ([i915#1804] / [i915#2684]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-=
1.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21132/shard-iclb4/igt@kms_psr2_sf@overlay-plane-upd=
ate-sf-dmg-area-1.html">SKIP</a> ([i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10627/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
2.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21132/shard-iclb2/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-2.html">SKIP</a> ([i915#2920]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10627/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-kbl1/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_10627/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-kbl1/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_10627/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-kbl3/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10627/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-kbl3/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_106=
27/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_10627/shard-kbl7/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/=
shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_10627/shard-kbl4/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10627/sha=
rd-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_10627/shard-kbl4/igt@runner@aborted.html">FAIL</=
a>) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#2722] / =
[i915#3002] / [i915#3363] / [i915#602]) -&gt; (<a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_21132/shard-kbl6/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-">FAIL</a>, [FAIL][148], [FAIL][149=
], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154], [FAIL][=
155], [FAIL][156], [FAIL][157]) ([i915#1436] / [i915#180] / [i915#1814] / [=
i915#3002] / [i915#3363] / [i915#602])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5938416341008626816==--
