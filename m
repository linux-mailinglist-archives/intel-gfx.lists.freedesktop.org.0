Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A09325B2BE8
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 03:57:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98A2110E9DB;
	Fri,  9 Sep 2022 01:57:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A2F5810E9DB;
 Fri,  9 Sep 2022 01:57:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A7C0AADD1;
 Fri,  9 Sep 2022 01:57:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8332613870512055547=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 09 Sep 2022 01:57:29 -0000
Message-ID: <166268864959.1366.10970854569770061838@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220908191646.20239-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220908191646.20239-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Move_skl+_wm_code_into_its_own_file?=
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

--===============8332613870512055547==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Move skl+ wm code into its own file
URL   : https://patchwork.freedesktop.org/series/108313/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12100_full -> Patchwork_108313v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (10 -> 11)
------------------------------

  Additional (1): shard-rkl 

Known issues
------------

  Here are the changes found in Patchwork_108313v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         NOTRUN -> [SKIP][1] ([i915#4525])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [PASS][2] -> [SKIP][3] ([i915#4525]) +2 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-iclb:         [PASS][4] -> [FAIL][5] ([i915#2842])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-iclb5/igt@gem_exec_fair@basic-pace@bcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb2/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][6] ([i915#2842])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#2842]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_params@no-bsd:
    - shard-iclb:         NOTRUN -> [SKIP][9] ([fdo#109283])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@gem_exec_params@no-bsd.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-iclb:         NOTRUN -> [SKIP][10] ([i915#4613])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_mmap_gtt@fault-concurrent-y:
    - shard-snb:          [PASS][11] -> [INCOMPLETE][12] ([i915#5161])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-snb4/igt@gem_mmap_gtt@fault-concurrent-y.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-snb7/igt@gem_mmap_gtt@fault-concurrent-y.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-iclb:         NOTRUN -> [SKIP][13] ([i915#4270]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [PASS][14] -> [DMESG-WARN][15] ([i915#180]) +2 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-apl2/igt@gem_workarounds@suspend-resume.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-apl3/igt@gem_workarounds@suspend-resume.html

  * igt@gen3_render_tiledy_blits:
    - shard-iclb:         NOTRUN -> [SKIP][16] ([fdo#109289]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@gen3_render_tiledy_blits.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-iclb:         NOTRUN -> [SKIP][17] ([i915#5286]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][18] ([fdo#110723])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html

  * igt@kms_ccs@pipe-d-crc-primary-rotation-180-4_tiled_dg2_rc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][19] ([fdo#109278]) +7 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@kms_ccs@pipe-d-crc-primary-rotation-180-4_tiled_dg2_rc_ccs.html

  * igt@kms_chamelium@dp-mode-timings:
    - shard-iclb:         NOTRUN -> [SKIP][20] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@kms_chamelium@dp-mode-timings.html

  * igt@kms_content_protection@srm:
    - shard-iclb:         NOTRUN -> [SKIP][21] ([fdo#109300] / [fdo#111066])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@kms_content_protection@srm.html

  * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][22] ([fdo#109274])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#2346])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor@varying-size:
    - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#2346]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html

  * igt@kms_dp_tiled_display@basic-test-pattern:
    - shard-iclb:         NOTRUN -> [SKIP][27] ([i915#426])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@kms_dp_tiled_display@basic-test-pattern.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][28] ([i915#3555]) +3 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][29] ([i915#2672]) +8 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#109280]) +12 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_invalid_mode@uint-max-clock:
    - shard-snb:          NOTRUN -> [SKIP][31] ([fdo#109271]) +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-snb4/igt@kms_invalid_mode@uint-max-clock.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1:
    - shard-iclb:         [PASS][32] -> [SKIP][33] ([i915#5235]) +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-iclb5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#109441])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-iclb2/igt@kms_psr@psr2_primary_blt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglb:         [PASS][37] -> [SKIP][38] ([i915#5519])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-tglb2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-tglb5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@nouveau_crc@pipe-b-ctx-flip-detection:
    - shard-tglb:         NOTRUN -> [SKIP][39] ([i915#2530])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-tglb6/igt@nouveau_crc@pipe-b-ctx-flip-detection.html

  * igt@nouveau_crc@pipe-d-source-outp-complete:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109278] / [i915#2530])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@nouveau_crc@pipe-d-source-outp-complete.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [PASS][41] -> [FAIL][42] ([i915#5639])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-glk2/igt@perf@polling-parameterized.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-glk7/igt@perf@polling-parameterized.html

  * igt@perf@stress-open-close:
    - shard-glk:          [PASS][43] -> [INCOMPLETE][44] ([i915#5213])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-glk1/igt@perf@stress-open-close.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-glk5/igt@perf@stress-open-close.html

  * igt@prime_nv_test@i915_nv_sharing:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109291]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@prime_nv_test@i915_nv_sharing.html

  * igt@sysfs_clients@create:
    - shard-iclb:         NOTRUN -> [SKIP][46] ([i915#2994])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@sysfs_clients@create.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-iclb:         [SKIP][47] ([i915#4525]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-iclb3/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][49] ([i915#2842]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-apl:          [FAIL][51] ([i915#2842]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-apl1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-apl1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][53] ([i915#2842]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][55] ([i915#2190]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-tglb7/igt@gem_huc_copy@huc-copy.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-tglb2/igt@gem_huc_copy@huc-copy.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglb:         [INCOMPLETE][57] -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-tglb1/igt@i915_module_load@reload-with-fault-injection.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-tglb6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_dc@dc6-dpms:
    - {shard-tglu}:       [FAIL][59] ([i915#3989] / [i915#454]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-tglu-5/igt@i915_pm_dc@dc6-dpms.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-tglu-4/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [INCOMPLETE][61] ([i915#3921]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-snb4/igt@i915_selftest@live@hangcheck.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-snb6/igt@i915_selftest@live@hangcheck.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][63] ([i915#407]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-glk1/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@ac-hdmi-a1-hdmi-a2.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-glk9/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-vga1:
    - shard-snb:          [SKIP][65] ([fdo#109271]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-snb6/igt@kms_flip@flip-vs-suspend-interruptible@a-vga1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-snb2/igt@kms_flip@flip-vs-suspend-interruptible@a-vga1.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [SKIP][67] ([fdo#109441]) -> [PASS][68] +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-iclb5/igt@kms_psr@psr2_sprite_render.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb2/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-iclb:         [SKIP][69] ([i915#5519]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-iclb4/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb4/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@perf@polling-parameterized:
    - shard-tglb:         [FAIL][71] ([i915#5639]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-tglb6/igt@perf@polling-parameterized.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-tglb7/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][73] ([i915#658]) -> [SKIP][74] ([i915#2920])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-iclb5/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][75] ([i915#2920]) -> [SKIP][76] ([i915#658])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb3/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-iclb:         [SKIP][77] ([fdo#111068] / [i915#658]) -> [SKIP][78] ([i915#2920]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-iclb4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-iclb:         [SKIP][79] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [FAIL][80] ([i915#5939])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-iclb5/igt@kms_psr2_su@page_flip-nv12.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][81], [FAIL][82]) ([i915#3002] / [i915#4312] / [i915#5257] / [i915#6599]) -> ([FAIL][83], [FAIL][84], [FAIL][85], [FAIL][86]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#6599])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-apl2/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-apl1/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-apl1/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-apl8/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-apl3/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-apl1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111066]: https://bugs.freedesktop.org/show_bug.cgi?id=111066
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
  [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
  [i915#3987]: https://gitlab.freedesktop.org/drm/intel/issues/3987
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#407]: https://gitlab.freedesktop.org/drm/intel/issues/407
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5161]: https://gitlab.freedesktop.org/drm/intel/issues/5161
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599


Build changes
-------------

  * Linux: CI_DRM_12100 -> Patchwork_108313v1

  CI-20190529: 20190529
  CI_DRM_12100: 97f3651d0cd43a46f8065e7f64107f76bb9f704b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6648: 3c9079c0b97445fbfc903b9c5a1d69707b80af80 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_108313v1: 97f3651d0cd43a46f8065e7f64107f76bb9f704b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/index.html

--===============8332613870512055547==
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
<tr><td><b>Series:</b></td><td>drm/i915: Move skl+ wm code into its own fil=
e</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/108313/">https://patchwork.freedesktop.org/series/108313/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108313v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_108313v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12100_full -&gt; Patchwork_108313v=
1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (10 -&gt; 11)</h2>
<p>Additional (1): shard-rkl </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_108313v1_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@gem_exec_balancer@parallel=
-balancer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12100/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_108313v1/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525"=
>i915#4525</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12100/shard-iclb5/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v=
1/shard-iclb2/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108313v1/shard-iclb2/igt@gem_exec_fair@basic-pace@v=
cs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12100/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1083=
13v1/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-bsd:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@gem_exec_params@no-bsd.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
83">fdo#109283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@gem_lmem_swapping@heavy-ve=
rify-random-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-y:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12100/shard-snb4/igt@gem_mmap_gtt@fault-concurrent-y.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313=
v1/shard-snb7/igt@gem_mmap_gtt@fault-concurrent-y.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5161">i915#5161</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@gem_pxp@verify-pxp-stale-b=
uf-optout-execution.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4270">i915#4270</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12100/shard-apl2/igt@gem_workarounds@suspend-resume.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v=
1/shard-apl3/igt@gem_workarounds@suspend-resume.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +2=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen3_render_tiledy_blits:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@gen3_render_tiledy_blits.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9289">fdo#109289</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>) +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@kms_big_fb@yf-tiled-8bpp-r=
otate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-rotation-180-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@kms_ccs@pipe-d-crc-primary=
-rotation-180-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109278">fdo#109278</a>) +7 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-mode-timings:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@kms_chamelium@dp-mode-timi=
ngs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@kms_content_protection@srm=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109300">fdo#109300</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111066">fdo#111066</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@kms_cursor_legacy@2x-long-=
nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12100/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_108313v1/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor@atom=
ic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@varying-size:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12100/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor@varying-size=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_108313v1/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@varying-=
size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2346">i915#2346</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@kms_dp_tiled_display@basic=
-test-pattern.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/426">i915#426</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@p=
ipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108313v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#355=
5</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108313v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</=
a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +12 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108313v1/shard-snb4/igt@kms_invalid_mode@uint-max-c=
lock.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pi=
pe-a-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12100/shard-iclb5/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-5@pipe-a-edp-1.html">PASS</a> -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-iclb2/igt@kms_plan=
e_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235=
">i915#5235</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@kms_psr@psr2_cursor_blt.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12100/shard-iclb2/igt@kms_psr@psr2_primary_blt.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/sha=
rd-iclb8/igt@kms_psr@psr2_primary_blt.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12100/shard-tglb2/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_108313v1/shard-tglb5/igt@kms_psr_stress_test@flip-primary-in=
validate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5519">i915#5519</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-detection:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108313v1/shard-tglb6/igt@nouveau_crc@pipe-b-ctx-fli=
p-detection.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-outp-complete:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@nouveau_crc@pipe-d-source-=
outp-complete.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12100/shard-glk2/igt@perf@polling-parameterized.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/sh=
ard-glk7/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@stress-open-close:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12100/shard-glk1/igt@perf@stress-open-close.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-=
glk5/igt@perf@stress-open-close.html">INCOMPLETE</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/5213">i915#5213</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@i915_nv_sharing:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@prime_nv_test@i915_nv_shar=
ing.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109291">fdo#109291</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108313v1/shard-iclb8/igt@sysfs_clients@create.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994"=
>i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12100/shard-iclb3/igt@gem_exec_balancer@parallel-keep-submit-fence.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_108313v1/shard-iclb1/igt@gem_exec_balancer@parallel-keep-subm=
it-fence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12100/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_108313v1/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</=
a></p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12100/shard-apl1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_108313v1/shard-apl1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</=
a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12100/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_108313v1/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12100/shard-tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/=
shard-tglb2/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12100/shard-tglb1/igt@i915_module_load@reload-with-fault-injection.=
html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_108313v1/shard-tglb6/igt@i915_module_load@reload-with-fault-i=
njection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12100/shard-tglu-5/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3989">i915#3989</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10831=
3v1/shard-tglu-4/igt@i915_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12100/shard-snb4/igt@i915_selftest@live@hangcheck.html">INCOMPLETE<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#=
3921</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_108313v1/shard-snb6/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@ac-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12100/shard-glk1/igt@kms_flip@2x-modeset-vs-vblank-race-interruptib=
le@ac-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/407">i915#407</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-glk9/igt@kms_flip@2x-modes=
et-vs-vblank-race-interruptible@ac-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12100/shard-snb6/igt@kms_flip@flip-vs-suspend-interruptible@a-vga1.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_108313v1/shard-snb2/igt@kms_flip@flip-vs-suspend-interrupti=
ble@a-vga1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12100/shard-iclb5/igt@kms_psr@psr2_sprite_render.html">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
8313v1/shard-iclb2/igt@kms_psr@psr2_sprite_render.html">PASS</a> +2 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12100/shard-iclb4/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_108313v1/shard-iclb4/igt@kms_psr_stress_test@invalidat=
e-primary-flip-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12100/shard-tglb6/igt@perf@polling-parameterized.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1083=
13v1/shard-tglb7/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12100/shard-iclb5/igt@kms_psr2_sf@cursor-plane-move-continuous-exce=
ed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_108313v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-co=
ntinuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12100/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_108313v1/shard-iclb3/igt@kms_psr2_sf@overlay-plane-mov=
e-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12100/shard-iclb4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108313v1/shard-iclb2/igt@kms_psr2_sf@overlay-primar=
y-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12100/shard-iclb5/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642<=
/a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo=
#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/65=
8">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_108313v1/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5939">i915#59=
39</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12100/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12100/shard-apl1/igt@runner@ab=
orted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/5257">i915#5257</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/6599">i915#6599</a>) -&gt; (<a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-apl1/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_108313v1/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108313v1/shard-apl3/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_108313v1/shard-apl1/igt@runner@aborted.html">FAIL</a>) (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#1=
80</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i=
915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/5257">i915#5257</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/6599">i915#6599</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12100 -&gt; Patchwork_108313v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12100: 97f3651d0cd43a46f8065e7f64107f76bb9f704b @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6648: 3c9079c0b97445fbfc903b9c5a1d69707b80af80 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_108313v1: 97f3651d0cd43a46f8065e7f64107f76bb9f704b @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============8332613870512055547==--
