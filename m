Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E90252CF769
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Dec 2020 00:25:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E88676E0A1;
	Fri,  4 Dec 2020 23:25:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 648576E02C;
 Fri,  4 Dec 2020 23:25:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5076BA8835;
 Fri,  4 Dec 2020 23:25:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 04 Dec 2020 23:25:44 -0000
Message-ID: <160712434429.27539.16816095469560249143@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201204171455.6276-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201204171455.6276-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Inject_a_failure_into_the_initial_modeset_=28r?=
 =?utf-8?q?ev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0780630112=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0780630112==
Content-Type: multipart/alternative;
 boundary="===============8699985382226592085=="

--===============8699985382226592085==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Inject a failure into the initial modeset (rev2)
URL   : https://patchwork.freedesktop.org/series/84592/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9444_full -> Patchwork_19062_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_9444_full and Patchwork_19062_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 174 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19062_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2] ([i915#2369])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-skl3/igt@gem_exec_capture@pi@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-skl1/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][3] -> [INCOMPLETE][4] ([i915#2405])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-apl8/igt@gem_softpin@noreloc-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-apl2/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@huge-split:
    - shard-apl:          [PASS][5] -> [INCOMPLETE][6] ([i915#2502])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-apl7/igt@gem_userptr_blits@huge-split.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-apl7/igt@gem_userptr_blits@huge-split.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][7] -> [FAIL][8] ([i915#454])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@execlists:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#1037] / [i915#2268])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-tglb7/igt@i915_selftest@live@execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-tglb1/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-skl:          [PASS][11] -> [DMESG-FAIL][12] ([i915#2291] / [i915#541])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-skl7/igt@i915_selftest@live@gt_heartbeat.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-skl3/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [PASS][13] -> [FAIL][14] ([i915#2574])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-tglb2/igt@kms_async_flips@test-time-stamp.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-tglb1/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#54])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#2346])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#79])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@plain-flip-ts-check@a-edp1:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#2122])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-skl4/igt@kms_flip@plain-flip-ts-check@a-edp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-skl4/igt@kms_flip@plain-flip-ts-check@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
    - shard-apl:          [PASS][23] -> [FAIL][24] ([i915#49])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-apl8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#49])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-glk2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-glk4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
    - shard-kbl:          [PASS][27] -> [FAIL][28] ([i915#49])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#1188])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-64:
    - shard-iclb:         [PASS][33] -> [FAIL][34] ([i915#2657])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-iclb6/igt@kms_plane_cursor@pipe-a-overlay-size-64.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-iclb3/igt@kms_plane_cursor@pipe-a-overlay-size-64.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-iclb7/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_vblank@pipe-a-accuracy-idle:
    - shard-glk:          [PASS][37] -> [FAIL][38] ([i915#43])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-glk2/igt@kms_vblank@pipe-a-accuracy-idle.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-glk7/igt@kms_vblank@pipe-a-accuracy-idle.html

  * igt@perf@polling:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#1542]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-skl9/igt@perf@polling.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-skl5/igt@perf@polling.html

  
#### Possible fixes ####

  * {igt@gem_ctx_exec@basic-close-race}:
    - shard-glk:          [DMESG-FAIL][41] -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-glk7/igt@gem_ctx_exec@basic-close-race.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-glk9/igt@gem_ctx_exec@basic-close-race.html

  * igt@gem_softpin@noreloc-s3:
    - shard-glk:          [INCOMPLETE][43] ([i915#2199] / [i915#2405]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-glk6/igt@gem_softpin@noreloc-s3.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-glk6/igt@gem_softpin@noreloc-s3.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-skl1/igt@kms_color@pipe-a-ctm-0-75.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-skl8/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          [FAIL][47] ([i915#54]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][49] ([i915#2122]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
    - shard-skl:          [FAIL][51] ([i915#49]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-skl7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][53] ([fdo#108145] / [i915#265]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-b-tiling-yf:
    - shard-kbl:          [DMESG-WARN][55] ([i915#165] / [i915#180] / [i915#78]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-kbl2/igt@kms_plane_lowres@pipe-b-tiling-yf.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-kbl6/igt@kms_plane_lowres@pipe-b-tiling-yf.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][57] ([fdo#109441]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-kbl:          [INCOMPLETE][59] ([i915#1602] / [i915#794]) -> [INCOMPLETE][60] ([i915#794])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [FAIL][61] ([i915#2680]) -> [WARN][62] ([i915#1804] / [i915#2684])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-tglb:         [DMESG-WARN][63] ([i915#1602] / [i915#2411]) -> [INCOMPLETE][64] ([i915#1602] / [i915#2411] / [i915#456])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-tglb1/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-tglb2/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][65], [FAIL][66], [FAIL][67]) ([i915#1436] / [i915#1814] / [i915#2295] / [i915#2722] / [i915#483] / [i915#602]) -> ([FAIL][68], [FAIL][69]) ([i915#1814] / [i915#2295] / [i915#2722] / [i915#483] / [i915#602])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-kbl2/igt@runner@aborted.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-kbl6/igt@runner@aborted.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-kbl2/igt@runner@aborted.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-kbl4/igt@runner@aborted.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-kbl6/igt@runner@aborted.html
    - shard-glk:          ([FAIL][70], [FAIL][71], [FAIL][72], [FAIL][73]) ([i915#1814] / [i915#2295] / [i915#2722] / [i915#483] / [k.org#202321]) -> ([FAIL][74], [FAIL][75], [FAIL][76]) ([i915#1814] / [i915#2295] / [i915#2722] / [k.org#202321])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-glk2/igt@runner@aborted.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-glk7/igt@runner@aborted.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-glk3/igt@runner@aborted.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-glk5/igt@runner@aborted.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-glk4/igt@runner@aborted.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-glk2/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-glk5/igt@runner@aborted.html
    - shard-skl:          [FAIL][77] ([i915#2295] / [i915#2722] / [i915#483]) -> ([FAIL][78], [FAIL][79]) ([i915#2295] / [i915#2722])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-skl3/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-skl1/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-skl6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2199]: https://gitlab.freedesktop.org/drm/intel/issues/2199
  [i915#2268]: https://gitlab.freedesktop.org/drm/intel/issues/2268
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#2574]: https://gitlab.freedesktop.org/drm/intel/issues/2574
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2657]: https://gitlab.freedesktop.org/drm/intel/issues/2657
  [i915#2680]: https://gitlab.freedesktop.org/drm/intel/issues/2680
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#43]: https://gitlab.freedesktop.org/drm/intel/issues/43
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#602]: https://gitlab.freedesktop.org/drm/intel/issues/602
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9444 -> Patchwork_19062

  CI-20190529: 20190529
  CI_DRM_9444: cee8f6ace633b555c64b14938577e6da02710a0b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5881: 10d4e2e9177eb747b9f2ab9122e3ab60e91654fb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19062: 203678a9c9abfca010dfbc6ff60977c5d8c652d5 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/index.html

--===============8699985382226592085==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Inject a failure into the =
initial modeset (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/84592/">https://patchwork.freedesktop.org/series/84592/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19062/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19062/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9444_full -&gt; Patchwork_19062_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9444_full and Patchwork_19=
062_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 174 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19062_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-skl3/igt@gem_exec_capture@pi@rcs0.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-sk=
l1/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/2369">i915#2369</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-apl8/igt@gem_softpin@noreloc-s3.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-apl2=
/igt@gem_softpin@noreloc-s3.html">INCOMPLETE</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/2405">i915#2405</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@huge-split:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-apl7/igt@gem_userptr_blits@huge-split.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shar=
d-apl7/igt@gem_userptr_blits@huge-split.html">INCOMPLETE</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2502">i915#2502</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-iclb5/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-iclb6/i=
gt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-tglb7/igt@i915_selftest@live@execlists.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/sha=
rd-tglb1/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2268">i915#2268</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-skl7/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/s=
hard-skl3/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-tglb2/igt@kms_async_flips@test-time-stamp.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/=
shard-tglb1/igt@kms_async_flips@test-time-stamp.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2574">i915#2574</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19062/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54=
">i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19062/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#23=
46</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19062/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-skl4/igt@kms_flip@plain-flip-ts-check@a-edp1.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_190=
62/shard-skl4/igt@kms_flip@plain-flip-ts-check@a-edp1.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9444/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-p=
lflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19062/shard-apl8/igt@kms_frontbuffer_tracking@fbc-1p-prim=
scrn-shrfb-plflip-blt.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/49">i915#49</a>)</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9444/shard-glk2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-p=
lflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19062/shard-glk4/igt@kms_frontbuffer_tracking@fbc-1p-prim=
scrn-shrfb-plflip-blt.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/49">i915#49</a>)</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9444/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-p=
lflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19062/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-prim=
scrn-shrfb-plflip-blt.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/49">i915#49</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-skl=
5/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19062/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-m=
in.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-overlay-size-64:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-iclb6/igt@kms_plane_cursor@pipe-a-overlay-size-64.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19062/shard-iclb3/igt@kms_plane_cursor@pipe-a-overlay-size-64.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2657">i915#=
2657</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/sh=
ard-iclb7/igt@kms_psr@psr2_primary_mmap_gtt.html">SKIP</a> (<a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-accuracy-idle:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-glk2/igt@kms_vblank@pipe-a-accuracy-idle.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/s=
hard-glk7/igt@kms_vblank@pipe-a-accuracy-idle.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/43">i915#43</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-skl9/igt@perf@polling.html">PASS</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-skl5/igt@perf@=
polling.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1542">i915#1542</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>{igt@gem_ctx_exec@basic-close-race}:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-glk7/igt@gem_ctx_exec@basic-close-race.html">DMESG-FAIL<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_190=
62/shard-glk9/igt@gem_ctx_exec@basic-close-race.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-glk6/igt@gem_softpin@noreloc-s3.html">INCOMPLETE</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2199">i915#2199</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2=
405</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19062/shard-glk6/igt@gem_softpin@noreloc-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-skl1/igt@kms_color@pipe-a-ctm-0-75.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9062/shard-skl8/igt@kms_color@pipe-a-ctm-0-75.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54=
">i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19062/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19062/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-i=
nterruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/49">i915#49</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19062/shard-skl7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-re=
nder.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19062/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-=
7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-yf:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-kbl2/igt@kms_plane_lowres@pipe-b-tiling-yf.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/165">i9=
15#165</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180=
">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/78">i915#78</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19062/shard-kbl6/igt@kms_plane_lowres@pipe-b-tiling-yf.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/=
shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html">IN=
COMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/16=
02">i915#1602</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/794">i915#794</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19062/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@rcs0=
.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/794">i915#794</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2680">i915#2680=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9062/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-tglb1/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1602">i915#1602</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2411">i915#2411</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19062/shard-tglb2/igt@kms_vblank@pipe-c-ts-conti=
nuation-dpms-suspend.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/1602">i915#1602</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/456">i915#456</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-kbl6/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9444/shard-kbl2/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#4=
83</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/602">i9=
15#602</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19062/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-kbl6/igt@runner@ab=
orted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2722">i915#2722</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/483">i915#483</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/602">i915#602</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9444/shard-glk2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-glk7/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9444/shard-glk3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/shard-glk5/igt@runner@aborted.ht=
ml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2722">i915#2722</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/483">i915#483</a> / <a href=3D"https://bugzilla.kernel.org=
/show_bug.cgi?id=3D202321">k.org#202321</a>) -&gt; (<a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-glk4/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19062/shard-glk2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/shard-glk5/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2722">i915#2722</a> / <a href=3D"https://bugzilla.kernel.or=
g/show_bug.cgi?id=3D202321">k.org#202321</a>)</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9444/shard-skl3/igt@runner@aborted.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>) -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19062/sh=
ard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_19062/shard-skl6/igt@runner@aborted.html">FA=
IL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i=
915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
722">i915#2722</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9444 -&gt; Patchwork_19062</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9444: cee8f6ace633b555c64b14938577e6da02710a0b @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5881: 10d4e2e9177eb747b9f2ab9122e3ab60e91654fb @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19062: 203678a9c9abfca010dfbc6ff60977c5d8c652d5 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============8699985382226592085==--

--===============0780630112==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0780630112==--
