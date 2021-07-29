Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D038B3DAFBC
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 01:16:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D60F6EE78;
	Thu, 29 Jul 2021 23:16:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 143036EE78;
 Thu, 29 Jul 2021 23:16:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0C95DA7DFB;
 Thu, 29 Jul 2021 23:16:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Thu, 29 Jul 2021 23:16:10 -0000
Message-ID: <162760057002.27326.3343675983619968883@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210729133420.770672-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210729133420.770672-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/selftests=3A_fixup_igt=5Fs?=
 =?utf-8?q?hrink=5Fthp?=
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
Content-Type: multipart/mixed; boundary="===============1428430308=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1428430308==
Content-Type: multipart/alternative;
 boundary="===============3378060327146026033=="

--===============3378060327146026033==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915/selftests: fixup igt_shrink_thp
URL   : https://patchwork.freedesktop.org/series/93182/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10418_full -> Patchwork_20741_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20741_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gen7_exec_parse@basic-allowed:
    - {shard-rkl}:        [SKIP][1] ([fdo#109289]) -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-1/igt@gen7_exec_parse@basic-allowed.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-2/igt@gen7_exec_parse@basic-allowed.html

  * igt@kms_busy@extended-pageflip-hang-newfb:
    - {shard-rkl}:        NOTRUN -> [SKIP][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-5/igt@kms_busy@extended-pageflip-hang-newfb.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
    - {shard-rkl}:        [SKIP][4] ([fdo#112022]) -> [TIMEOUT][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
    - {shard-rkl}:        [SKIP][6] ([fdo#111314]) -> [DMESG-WARN][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-5/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt:
    - {shard-rkl}:        [SKIP][8] ([i915#1849]) -> [TIMEOUT][9] +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html

  * igt@runner@aborted:
    - {shard-rkl}:        ([FAIL][10], [FAIL][11], [FAIL][12], [FAIL][13], [FAIL][14]) ([i915#3002] / [i915#3810] / [i915#3811] / [i915#3871]) -> ([FAIL][15], [FAIL][16], [FAIL][17], [FAIL][18], [FAIL][19]) ([i915#2029] / [i915#3002] / [i915#3811] / [i915#3871])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-2/igt@runner@aborted.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-2/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-1/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-1/igt@runner@aborted.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-6/igt@runner@aborted.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-1/igt@runner@aborted.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-6/igt@runner@aborted.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-6/igt@runner@aborted.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-5/igt@runner@aborted.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-6/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_20741_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-hostile-preempt:
    - shard-snb:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#1099]) +2 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-snb7/igt@gem_ctx_persistence@legacy-engines-hostile-preempt.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-iclb:         [PASS][21] -> [FAIL][22] ([i915#2842])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-iclb1/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][23] ([i915#2842])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][24] -> [FAIL][25] ([i915#2842])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-glk9/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_schedule@semaphore-codependency:
    - shard-snb:          NOTRUN -> [SKIP][26] ([fdo#109271]) +137 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-snb5/igt@gem_exec_schedule@semaphore-codependency.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#2190])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-apl2/igt@gem_huc_copy@huc-copy.html
    - shard-kbl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#2190])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-kbl3/igt@gem_huc_copy@huc-copy.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][29] ([i915#2658]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-apl2/igt@gem_pread@exhaustion.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-kbl:          NOTRUN -> [SKIP][30] ([fdo#109271]) +114 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-kbl3/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-apl1/igt@gem_softpin@noreloc-s3.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-apl3/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#1937])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-apl8/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rpm@basic-rte:
    - shard-apl:          NOTRUN -> [FAIL][34] ([i915#579])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-apl6/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          NOTRUN -> [DMESG-WARN][35] ([i915#180])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-apl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][36] ([i915#3722])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3777]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-apl6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271]) +251 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-apl8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-snb:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-snb5/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@kms_chamelium@hdmi-mode-timings:
    - shard-kbl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-kbl4/igt@kms_chamelium@hdmi-mode-timings.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +22 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-apl2/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color@pipe-a-ctm-red-to-blue:
    - shard-skl:          [PASS][42] -> [DMESG-WARN][43] ([i915#1982]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-skl6/igt@kms_color@pipe-a-ctm-red-to-blue.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-skl5/igt@kms_color@pipe-a-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:
    - shard-skl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-skl10/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          NOTRUN -> [TIMEOUT][45] ([i915#1319])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-kbl3/igt@kms_content_protection@srm.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-apl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#533]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-apl2/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([i915#3788])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-iclb3/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-iclb2/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-skl:          NOTRUN -> [SKIP][49] ([fdo#109271]) +77 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-skl10/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][50] -> [DMESG-WARN][51] ([i915#180]) +7 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-ts-check@a-edp1:
    - shard-skl:          [PASS][52] -> [FAIL][53] ([i915#2122])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-skl8/igt@kms_flip@plain-flip-ts-check@a-edp1.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-skl2/igt@kms_flip@plain-flip-ts-check@a-edp1.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#533])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-skl7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#533])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-kbl3/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [PASS][56] -> [FAIL][57] ([i915#53])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-skl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][58] ([fdo#108145] / [i915#265]) +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][59] ([i915#265])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][60] -> [FAIL][61] ([fdo#108145] / [i915#265]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-apl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#2733])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-apl2/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-skl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#658]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-skl7/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
    - shard-kbl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#658]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-kbl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#658]) +3 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-apl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][66] -> [SKIP][67] ([fdo#109642] / [fdo#111068] / [i915#658])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-iclb4/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][68] -> [SKIP][69] ([fdo#109441]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-iclb4/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_selftest@all@damage_iter_no_damage:
    - shard-snb:          NOTRUN -> [INCOMPLETE][70] ([i915#3871])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-snb5/igt@kms_selftest@all@damage_iter_no_damage.html

  * igt@kms_sysfs_edid_timing:
    - shard-skl:          NOTRUN -> [FAIL][71] ([IGT#2])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-skl7/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-kbl:          [PASS][72] -> [INCOMPLETE][73] ([i915#155] / [i915#2828])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-kbl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-kbl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf@polling:
    - shard-skl:          [PASS][74] -> [FAIL][75] ([i915#1542])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-skl8/igt@perf@polling.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-skl9/igt@perf@polling.html

  * igt@sysfs_clients@sema-10:
    - shard-kbl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#2994]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-kbl3/igt@sysfs_clients@sema-10.html
    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#2994]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-apl2/igt@sysfs_clients@sema-10.html

  * igt@sysfs_clients@sema-25:
    - shard-skl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#2994])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-skl10/igt@sysfs_clients@sema-25.html

  
#### Possible fixes ####

  * igt@fbdev@eof:
    - {shard-rkl}:        [SKIP][79] ([i915#2582]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-1/igt@fbdev@eof.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-6/igt@fbdev@eof.html

  * igt@gem_ctx_persistence@legacy-engines-hang@render:
    - {shard-rkl}:        [FAIL][81] ([i915#2410]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@render.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-1/igt@gem_ctx_persistence@legacy-engines-hang@render.html

  * igt@gem_eio@hibernate:
    - {shard-rkl}:        [INCOMPLETE][83] ([i915#3833]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-1/igt@gem_eio@hibernate.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-1/igt@gem_eio@hibernate.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][85] ([i915#2369] / [i915#3063] / [i915#3648]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-tglb2/igt@gem_eio@unwedge-stress.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-tglb8/igt@gem_eio@unwedge-stress.html
    - shard-iclb:         [TIMEOUT][87] ([i915#2369] / [i915#2481] / [i915#3070]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-iclb7/igt@gem_eio@unwedge-stress.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-iclb8/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [FAIL][89] ([i915#2842]) -> [PASS][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-glk7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][91] ([i915#2842]) -> [PASS][92] +2 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_suspend@basic-s0:
    - {shard-rkl}:        [FAIL][93] ([fdo#103375]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-6/igt@gem_exec_suspend@basic-s0.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-5/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - {shard-rkl}:        [FAIL][95] ([i915#307]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-1/igt@gem_mmap_gtt@cpuset-big-copy.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-2/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@i915_pm_rpm@sysfs-read:
    - {shard-rkl}:        [SKIP][97] ([i915#3844] / [i915#579]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-6/igt@i915_pm_rpm@sysfs-read.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-5/igt@i915_pm_rpm@sysfs-read.html

  * igt@i915_selftest@live@gt_pm:
    - {shard-rkl}:        [DMESG-FAIL][99] ([i915#1021]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-6/igt@i915_selftest@live@gt_pm.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-5/igt@i915_selftest@live@gt_pm.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-glk:          [DMESG-WARN][101] ([i915#118] / [i915#95]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-glk8/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-glk9/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - {shard-rkl}:        [SKIP][103] ([i915#3721]) -> [PASS][104] +3 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs:
    - {shard-rkl}:        [FAIL][105] ([i915#3678]) -> [PASS][106] +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-5/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-6/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - {shard-rkl}:        [SKIP][107] ([i915#1149] / [i915#1849]) -> [PASS][108] +2 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-1/igt@kms_color@pipe-a-ctm-0-75.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_concurrent@pipe-a:
    - {shard-rkl}:        [SKIP][109] ([i915#1845]) -> [PASS][110] +17 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-5/igt@kms_concurrent@pipe-a.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-6/igt@kms_concurrent@pipe-a.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - {shard-rkl}:        [SKIP][111] ([fdo#112022]) -> [PASS][112] +8 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [INCOMPLETE][113] ([i915#2828] / [i915#300]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][115] ([i915#180]) -> [PASS][116] +5 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][117] ([i915#2346]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
    - {shard-rkl}:        [SKIP][119] ([fdo#111825]) -> [PASS][120] +5 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [DMESG-WARN][121] ([i915#180]) -> [PASS][122] +2 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:
    - {shard-rkl}:        [SKIP][123] ([i915#1849] / [i915#3180]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - {shard-rkl}:        [SKIP][125] ([i915#1849]) -> [PASS][126] +23 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][127] ([i915#1188]) -> [PASS][128] +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-y:
    - {shard-rkl}:        [SKIP][129] ([i915#3558]) -> [PASS][130] +2 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-1/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html

  * igt@kms_psr@cursor_plane_move:
    - {shard-rkl}:        [SKIP][131] ([i915#1072]) -> [PASS][132] +3 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-1/igt@kms_psr@cursor_plane_move.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-6/igt@kms_psr@cursor_plane_move.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][133] ([fdo#109441]) -> [PASS][134] +3 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-iclb4/igt@kms_psr@psr2_cursor_blt.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][135] ([i915#1542]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-skl8/igt@perf@polling-parameterized.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-skl9/igt@perf@polling-parameterized.html

  * igt@sysfs_preempt_timeout@timeout@rcs0:
    - {shard-rkl}:        [FAIL][137] ([i915#2821]) -> [PASS][138] +3 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-1/igt@sysfs_preempt_timeout@timeout@rcs0.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-6/igt@sysfs_preempt_timeout@timeout@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][139] ([i915#588]) -> [SKIP][140] ([i915#658])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][141] ([i915#2684]) -> [WARN][142] ([i915#1804] / [i915#2684])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
    - shard-iclb:         [SKIP][143] ([i915#2920]) -> [SKIP][144] ([i915#658]) +1 similar issue
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-iclb4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:
    - shard-iclb:         [SKIP][145] ([i915#658]) -> [SKIP][146] ([i915#2920])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#2505] / [i915#3002] / [i915#3363] / [i915#602]) -> ([FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166], [FAIL][167]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#2505] / [i915#3002] / [i915#3363])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-kbl2/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-kbl4/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/sha

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/index.html

--===============3378060327146026033==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915/selftest=
s: fixup igt_shrink_thp</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/93182/">https://patchwork.freedesktop.org/series/93182/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20741/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20741/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10418_full -&gt; Patchwork_20741_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
20741_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gen7_exec_parse@basic-allowed:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-rkl-1/igt@gen7_exec_parse@basic-allowed.html">SKIP</a> =
([fdo#109289]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20741/shard-rkl-2/igt@gen7_exec_parse@basic-allowed.html">TIMEOUT</=
a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@extended-pageflip-hang-newfb:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-rkl-5/igt@kms_busy@extended-pageflip-ha=
ng-newfb.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-random:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.htm=
l">SKIP</a> ([fdo#112022]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_20741/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-64x2=
1-random.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-rkl-5/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.ht=
ml">SKIP</a> ([fdo#111314]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_20741/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-=
blt-ytiled.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrf=
b-plflip-blt.html">SKIP</a> ([i915#1849]) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-2/igt@kms_frontbuffer_tr=
acking@psr-1p-primscrn-shrfb-plflip-blt.html">TIMEOUT</a> +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10418/shard-rkl-2/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-2/igt@runner@=
aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-rkl-1/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-1/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10418/shard-rkl-6/igt@runner@aborted.html">FAIL</a>) ([i915#3002] / =
[i915#3810] / [i915#3811] / [i915#3871]) -&gt; (<a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-1/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20741/shard-rkl-6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-6/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20741/shard-rkl-5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-6/igt@runner@a=
borted.html">FAIL</a>) ([i915#2029] / [i915#3002] / [i915#3811] / [i915#387=
1])</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20741_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hostile-preempt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-snb7/igt@gem_ctx_persistence@legacy-eng=
ines-hostile-preempt.html">SKIP</a> ([fdo#109271] / [i915#1099]) +2 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/s=
hard-iclb1/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1=
.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2074=
1/shard-glk9/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#28=
42])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-codependency:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-snb5/igt@gem_exec_schedule@semaphore-co=
dependency.html">SKIP</a> ([fdo#109271]) +137 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20741/shard-apl2/igt@gem_huc_copy@huc-copy.html">SKI=
P</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20741/shard-kbl3/igt@gem_huc_copy@huc-copy.html">SKI=
P</a> ([fdo#109271] / [i915#2190])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-apl2/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-kbl3/igt@gem_render_copy@x-tiled-to-veb=
ox-yf-tiled.html">SKIP</a> ([fdo#109271]) +114 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-apl1/igt@gem_softpin@noreloc-s3.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-apl=
3/igt@gem_softpin@noreloc-s3.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-apl8/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp=
-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-apl6/igt@i915_pm_rpm@basic-rte.html">FA=
IL</a> ([i915#579])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-apl6/igt@i915_suspend@sysfs-reader.html=
">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3722])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-apl6/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 si=
milar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-apl8/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-64bpp-rotate-0.html">SKIP</a> ([fdo#109271]) +251 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-snb5/igt@kms_chamelium@hdmi-hpd-enable-=
disable-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-mode-timings:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-kbl4/igt@kms_chamelium@hdmi-mode-timing=
s.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-apl2/igt@kms_chamelium@vga-hpd.html">SK=
IP</a> ([fdo#109271] / [fdo#111827]) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-red-to-blue:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-skl6/igt@kms_color@pipe-a-ctm-red-to-blue.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741=
/shard-skl5/igt@kms_color@pipe-a-ctm-red-to-blue.html">DMESG-WARN</a> ([i91=
5#1982]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-skl10/igt@kms_color_chamelium@pipe-inva=
lid-degamma-lut-sizes.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-kbl3/igt@kms_content_protection@srm.htm=
l">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-apl2/igt@kms_cursor_legacy@pipe-d-tortu=
re-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-iclb3/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20741/shard-iclb2/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-=
a.html">SKIP</a> ([i915#3788])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-skl10/igt@kms_flip@2x-plain-flip-fb-rec=
reate-interruptible.html">SKIP</a> ([fdo#109271]) +77 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20741/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">DMESG-WARN</a> ([i915#180]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-skl8/igt@kms_flip@plain-flip-ts-check@a-edp1.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
741/shard-skl2/igt@kms_flip@plain-flip-ts-check@a-edp1.html">FAIL</a> ([i91=
5#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-skl7/igt@kms_pipe_crc_basic@compare-crc=
-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-kbl3/igt@kms_pipe_crc_basic@hang-read-c=
rc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20741/shard-skl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html"=
>FAIL</a> ([i915#53])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-=
alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20741/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">=
FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-c=
lipping-clamping:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-apl2/igt@kms_plane_scaling@scaler-with-=
clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo=
#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-skl7/igt@kms_psr2_sf@cursor-plane-updat=
e-sf.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-kbl1/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-apl2/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +3 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-iclb2/igt@kms_psr2_su@page_flip.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-icl=
b4/igt@kms_psr2_su@page_flip.html">SKIP</a> ([fdo#109642] / [fdo#111068] / =
[i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/=
shard-iclb4/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> ([fdo#109441]=
) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@all@damage_iter_no_damage:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-snb5/igt@kms_selftest@all@damage_iter_n=
o_damage.html">INCOMPLETE</a> ([i915#3871])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-skl7/igt@kms_sysfs_edid_timing.html">FA=
IL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-kbl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_20741/shard-kbl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html">IN=
COMPLETE</a> ([i915#155] / [i915#2828])</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-skl8/igt@perf@polling.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-skl9/igt@perf=
@polling.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20741/shard-kbl3/igt@sysfs_clients@sema-10.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20741/shard-apl2/igt@sysfs_clients@sema-10.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-skl10/igt@sysfs_clients@sema-25.html">S=
KIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-rkl-1/igt@fbdev@eof.html">SKIP</a> ([i915#2582]) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-r=
kl-6/igt@fbdev@eof.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hang@render:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@rende=
r.html">FAIL</a> ([i915#2410]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-rkl-1/igt@gem_ctx_persistence@legacy-en=
gines-hang@render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-rkl-1/igt@gem_eio@hibernate.html">INCOMPLETE</a> ([i915=
#3833]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20741/shard-rkl-1/igt@gem_eio@hibernate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10418/shard-tglb2/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i91=
5#2369] / [i915#3063] / [i915#3648]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_20741/shard-tglb8/igt@gem_eio@unwedge-stress.=
html">PASS</a></p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10418/shard-iclb7/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i91=
5#2369] / [i915#2481] / [i915#3070]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_20741/shard-iclb8/igt@gem_eio@unwedge-stress.=
html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-glk7/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20741/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PA=
SS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20741/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html=
">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-rkl-6/igt@gem_exec_suspend@basic-s0.html">FAIL</a> ([fd=
o#103375]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_20741/shard-rkl-5/igt@gem_exec_suspend@basic-s0.html">PASS</a> +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-rkl-1/igt@gem_mmap_gtt@cpuset-big-copy.html">FAIL</a> (=
[i915#307]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20741/shard-rkl-2/igt@gem_mmap_gtt@cpuset-big-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@sysfs-read:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-rkl-6/igt@i915_pm_rpm@sysfs-read.html">SKIP</a> ([i915#=
3844] / [i915#579]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20741/shard-rkl-5/igt@i915_pm_rpm@sysfs-read.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-rkl-6/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a>=
 ([i915#1021]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20741/shard-rkl-5/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-glk8/igt@kms_big_fb@linear-32bpp-rotate-180.html">DMESG=
-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_20741/shard-glk9/igt@kms_big_fb@linear-32bpp-ro=
tate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-rkl-5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate=
-180-hflip-async-flip.html">SKIP</a> ([i915#3721]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-6/igt@kms_big_f=
b@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS</a> +3=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-rkl-5/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_til=
ed_gen12_rc_ccs.html">FAIL</a> ([i915#3678]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-6/igt@kms_ccs@pipe-a-=
crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html">PASS</a> +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-75:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-rkl-1/igt@kms_color@pipe-a-ctm-0-75.html">SKIP</a> ([i9=
15#1149] / [i915#1849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20741/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-75.html">PASS=
</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_concurrent@pipe-a:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-rkl-5/igt@kms_concurrent@pipe-a.html">SKIP</a> ([i915#1=
845]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0741/shard-rkl-6/igt@kms_concurrent@pipe-a.html">PASS</a> +17 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.h=
tml">SKIP</a> ([fdo#112022]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_20741/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-12=
8x42-sliding.html">PASS</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">INC=
OMPLETE</a> ([i915#2828] / [i915#300]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_20741/shard-skl10/igt@kms_cursor_crc@pipe-a=
-cursor-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DME=
SG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_20741/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend=
.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">=
FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_20741/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomi=
c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.h=
tml">SKIP</a> ([fdo#111825]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_20741/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-curso=
r-crc-atomic.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WAR=
N</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20741/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS<=
/a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-flip=
track-mmap-gtt.html">SKIP</a> ([i915#1849] / [i915#3180]) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-6/igt@km=
s_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-=
indfb-draw-mmap-gtt.html">SKIP</a> ([i915#1849]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_20741/shard-rkl-6/igt@kms_frontbu=
ffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">PASS</a> +23 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#=
1188]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20741/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-c-tiling-y:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-rkl-1/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.htm=
l">SKIP</a> ([i915#3558]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_20741/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-c-t=
iling-y.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-rkl-1/igt@kms_psr@cursor_plane_move.html">SKIP</a> ([i9=
15#1072]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_20741/shard-rkl-6/igt@kms_psr@cursor_plane_move.html">PASS</a> +3 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-iclb4/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> ([fdo#=
109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_20741/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> +3 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-skl8/igt@perf@polling-parameterized.html">FAIL</a> ([i9=
15#1542]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_20741/shard-skl9/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@timeout@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-rkl-1/igt@sysfs_preempt_timeout@timeout@rcs0.html">FAIL=
</a> ([i915#2821]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20741/shard-rkl-6/igt@sysfs_preempt_timeout@timeout@rcs0.html">=
PASS</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> ([i915#588]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20741/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> ([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20741/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</=
a> ([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
1.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20741/shard-iclb4/igt@kms_psr2_sf@primary-plane-upd=
ate-sf-dmg-area-1.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10418/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
3.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20741/shard-iclb2/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-3.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10418/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-kbl4/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_10418/sha">FAIL</a>, [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][15=
3], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158]) ([i915=
#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#2505] / [i915#3002]=
 / [i915#3363] / [i915#602]) -&gt; ([FAIL][159], [FAIL][160], [FAIL][161], =
[FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166], [FAIL][167=
]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#2505] / [i=
915#3002] / [i915#3363])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3378060327146026033==--

--===============1428430308==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1428430308==--
