Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C4B3F1E96
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Aug 2021 19:03:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80CAA6E9B0;
	Thu, 19 Aug 2021 17:03:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1E5E66E9AF;
 Thu, 19 Aug 2021 17:03:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 16813A8830;
 Thu, 19 Aug 2021 17:03:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3809925257978542800=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Aug 2021 17:03:04 -0000
Message-ID: <162939258406.744.12308727281556111821@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210819093419.295636-1-matthew.auld@intel.com>
In-Reply-To: <20210819093419.295636-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915/buddy=3A_add_some_pre?=
 =?utf-8?q?tty_printing?=
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

--===============3809925257978542800==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/2] drm/i915/buddy: add some pretty printing
URL   : https://patchwork.freedesktop.org/series/93819/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10498_full -> Patchwork_20853_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_20853_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@process:
    - shard-snb:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1099])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-snb2/igt@gem_ctx_persistence@process.html

  * igt@gem_eio@unwedge-stress:
    - shard-snb:          NOTRUN -> [FAIL][2] ([i915#3354])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-snb2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_endless@dispatch@rcs0:
    - shard-iclb:         [PASS][3] -> [INCOMPLETE][4] ([i915#3778])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-iclb3/igt@gem_exec_endless@dispatch@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-iclb3/igt@gem_exec_endless@dispatch@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-iclb:         [PASS][5] -> [FAIL][6] ([i915#2842])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-iclb8/igt@gem_exec_fair@basic-pace@bcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-iclb3/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][7] -> [FAIL][8] ([i915#2842]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-tglb3/igt@gem_exec_fair@basic-pace@vcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-tglb7/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-glk4/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-snb:          [PASS][13] -> [FAIL][14] ([i915#4007])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-snb6/igt@gem_ppgtt@blt-vs-render-ctxn.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-snb7/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][15] ([i915#2658])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-apl3/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-skl:          NOTRUN -> [WARN][16] ([i915#2658])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-skl3/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_spin_batch@legacy@bsd1:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#4008])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-tglb3/igt@gem_spin_batch@legacy@bsd1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-tglb7/igt@gem_spin_batch@legacy@bsd1.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-apl3/igt@gem_workarounds@suspend-resume.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-apl1/igt@gem_workarounds@suspend-resume.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-skl:          NOTRUN -> [DMESG-WARN][21] ([i915#1982])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-skl3/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][22] -> [FAIL][23] ([i915#2521])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-skl3/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#3777])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-apl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][25] ([i915#3722]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3886]) +11 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-apl8/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3886]) +6 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-skl4/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][28] ([fdo#109271])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-kbl3/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271]) +172 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-apl1/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium@dp-mode-timings:
    - shard-apl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827]) +18 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-apl3/igt@kms_chamelium@dp-mode-timings.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - shard-snb:          NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-snb5/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-skl7/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - shard-skl:          [PASS][33] -> [DMESG-WARN][34] ([i915#1982])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-skl5/igt@kms_color@pipe-a-ctm-0-25.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-skl8/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_content_protection@srm:
    - shard-apl:          NOTRUN -> [TIMEOUT][35] ([i915#1319])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-apl1/igt@kms_content_protection@srm.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
    - shard-snb:          NOTRUN -> [SKIP][36] ([fdo#109271]) +208 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-snb2/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html

  * igt@kms_cursor_legacy@pipe-d-torture-move:
    - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271]) +90 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-skl7/igt@kms_cursor_legacy@pipe-d-torture-move.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][38] -> [INCOMPLETE][39] ([i915#155] / [i915#180] / [i915#636])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([i915#2122])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#2672])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-skl3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-apl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#2672])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-apl1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][44] -> [FAIL][45] ([i915#1188])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][46] -> [DMESG-WARN][47] ([i915#180]) +7 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#533]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][49] ([fdo#108145] / [i915#265]) +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][50] ([i915#265])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][51] -> [FAIL][52] ([fdo#108145] / [i915#265])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][53] ([fdo#108145] / [i915#265])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
    - shard-apl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#658]) +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-apl8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:
    - shard-skl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#658])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-skl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][56] -> [SKIP][57] ([fdo#109441]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-iclb5/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_setmode@basic:
    - shard-snb:          NOTRUN -> [FAIL][58] ([i915#31])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-snb2/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-iclb:         [PASS][59] -> [INCOMPLETE][60] ([i915#1185])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-iclb7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-iclb8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@sysfs_clients@create:
    - shard-skl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#2994])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-skl7/igt@sysfs_clients@create.html

  * igt@sysfs_clients@fair-1:
    - shard-apl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#2994]) +3 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-apl8/igt@sysfs_clients@fair-1.html

  
#### Possible fixes ####

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][63] ([i915#2369] / [i915#3063] / [i915#3648]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-tglb5/igt@gem_eio@unwedge-stress.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-tglb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-kbl:          [FAIL][65] ([i915#2842]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-kbl7/igt@gem_exec_fair@basic-none@vecs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-kbl1/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][67] ([i915#2842]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [SKIP][69] ([fdo#109271]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@kms_color@pipe-c-ctm-0-75:
    - shard-skl:          [DMESG-WARN][71] ([i915#1982]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-skl8/igt@kms_color@pipe-c-ctm-0-75.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-skl9/igt@kms_color@pipe-c-ctm-0-75.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][73] ([i915#2346]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a:
    - shard-iclb:         [SKIP][75] ([i915#3788]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-iclb2/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-iclb5/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][77] ([i915#2122]) -> [PASS][78] +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80] +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][81] ([fdo#108145] / [i915#265]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][83] ([i915#1804] / [i915#2684]) -> [WARN][84] ([i915#2684])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][85] ([i915#2920]) -> [SKIP][86] ([i915#658])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-iclb:         [SKIP][87] ([i915#658]) -> [SKIP][88] ([i915#2920]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][89], [FAIL][90], [FAIL][91], [FAIL][92]) ([i915#180] / [i915#2505] / [i915#3002] / [i915#3363]) -> ([FAIL][93], [FAIL][94], [FAIL][95], [FAIL][96], [FAIL][97], [FAIL][98], [FAIL][99], [FAIL][100]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2505] / [i915#3002] / [i915#3363] / [i915#92])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-kbl6/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-kbl6/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-kbl4/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-kbl6/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-kbl3/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-kbl7/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-kbl6/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-kbl6/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-kbl7/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-kbl6/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-kbl6/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-kbl6/igt@runner@aborted.html
    - shard-apl:          ([FAIL][101], [FAIL][102], [FAIL][103], [FAIL][104], [FAIL][105]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#3363]) -> ([FAIL][106], [FAIL][107], [FAIL][108]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#3363])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-apl8/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-apl1/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-apl3/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-apl6/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-apl7/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-apl1/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-apl7/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-apl3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109288]: https://bugs.freedesktop.org/show_bug.cgi?id=109288
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110254]: https://bugs.freedesktop.org/show_bug.cgi?id=110254
  [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
  [fdo#110577]: https://bugs.freedesktop.org/show_bug.cgi?id=110577
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2821]: https://gitlab.freedesktop.org/drm/intel/issues/2821
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#3115]: https://gitlab.freedesktop.org/drm/intel/issues/3115
  [i915#3149]: https://gitlab.freedesktop.org/drm/intel/issues/3149
  [i915#3180]: https://gitlab.freedesktop.org/drm/intel/issues/3180
  [i915#3189]: https://gitlab.freedesktop.org/drm/intel/issues/3189
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3343]: https://gitlab.freedesktop.org/drm/intel/issues/3343
  [i915#3354]: https://gitlab.freedesktop.org/drm/intel/issues/3354
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3639]: https://gitlab.freedesktop.org/drm/intel/issues/3639
  [i915#3648]: https://gitlab.freedesktop.org/drm/intel/issues/3648
  [i915#3678]: https://gitlab.freedesktop.org/drm/intel/issues/3678
  [i915#3699]: https://gitlab.freedesktop.org/drm/intel/issues/3699
  [i915#3721]: https://gitlab.freedesktop.org/drm/intel/issues/3721
  [i915#3722]: https://gitlab.freedesktop.org/drm/intel/issues/3722
  [i915#3736]: https://gitlab.freedesktop.org/drm/intel/issues/3736
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3777]: https://gitlab.freedesktop.org/drm/intel/issues/3777
  [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
  [i915#3788]: https://gitlab.freedesktop.org/drm/intel/issues/3788
  [i915#3810]: https://gitlab.freedesktop.org/drm/intel/issues/3810
  [i915#3811]: https://gitlab.freedesktop.org/drm/intel/issues/3811
  [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
  [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
  [i915#3830]: https://gitlab.freedesktop.org/drm/intel/issues/3830
  [i915#3833]: https://gitlab.freedesktop.org/drm/intel/issues/3833
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3922]: https://gitlab.freedesktop.org/drm/intel/issues/3922
  [i915#3924]: https://gitlab.freedesktop.org/drm/intel/issues/3924
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4007]: https://gitlab.freedesktop.org/drm/intel/issues/4007
  [i915#4008]: https://gitlab.freedesktop.org/drm/intel/issues/4008
  [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Participating hosts (10 -> 11)
------------------------------

  Additional (1): shard-rkl 


Build changes
-------------

  * Linux: CI_DRM_10498 -> Patchwork_20853

  CI-20190529: 20190529
  CI_DRM_10498: b66f2ed13db3

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/index.html

--===============3809925257978542800==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/2] drm/i915/buddy=
: add some pretty printing</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/93819/">https://patchwork.freedesktop.org/series/93819/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20853/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20853/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10498_full -&gt; Patchwork_20853_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20853_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20853/shard-snb2/igt@gem_ctx_persistence@process.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20853/shard-snb2/igt@gem_eio@unwedge-stress.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3354">i=
915#3354</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-iclb3/igt@gem_exec_endless@dispatch@rcs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/=
shard-iclb3/igt@gem_exec_endless@dispatch@rcs0.html">INCOMPLETE</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/3778">i915#3778</a>)</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-iclb8/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/s=
hard-iclb3/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/sh=
ard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 similar =
issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-tglb3/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/s=
hard-tglb7/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2085=
3/shard-glk4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@blt-vs-render-ctxn:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-snb6/igt@gem_ppgtt@blt-vs-render-ctxn.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/sha=
rd-snb7/igt@gem_ppgtt@blt-vs-render-ctxn.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/4007">i915#4007</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20853/shard-apl3/igt@gem_pread@exhaustion.html">WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i91=
5#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20853/shard-skl3/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/26=
58">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@legacy@bsd1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-tglb3/igt@gem_spin_batch@legacy@bsd1.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shar=
d-tglb7/igt@gem_spin_batch@legacy@bsd1.html">INCOMPLETE</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/4008">i915#4008</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-apl3/igt@gem_workarounds@suspend-resume.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/s=
hard-apl1/igt@gem_workarounds@suspend-resume.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20853/shard-skl3/igt@i915_module_load@reload-with-f=
ault-injection.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_20853/shard-skl3/igt@kms_async_flips@alternate-sync-async-flip.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2521">i9=
15#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20853/shard-apl1/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3777">i915#3777</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20853/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/3722">i915#3722</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20853/shard-apl8/igt@kms_ccs@pipe-a-bad-aux-stride-=
y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3886">i915#3886</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20853/shard-skl4/igt@kms_ccs@pipe-a-crc-primary-rot=
ation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +6 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20853/shard-kbl3/igt@kms_ccs@pipe-b-bad-rotation-90=
-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20853/shard-apl1/igt@kms_cdclk@mode-transition.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a>) +172 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-mode-timings:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20853/shard-apl3/igt@kms_chamelium@dp-mode-timings.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111827">fdo#111827</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20853/shard-snb5/igt@kms_chamelium@hdmi-hpd-fast.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D111827">fdo#111827</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20853/shard-skl7/igt@kms_chamelium@vga-hpd-after-su=
spend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-25:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-skl5/igt@kms_color@pipe-a-ctm-0-25.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-=
skl8/igt@kms_color@pipe-a-ctm-0-25.html">DMESG-WARN</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20853/shard-apl1/igt@kms_content_protection@srm.htm=
l">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20853/shard-snb2/igt@kms_cursor_edge_walk@pipe-d-12=
8x128-right-edge.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a>) +208 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-move:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20853/shard-skl7/igt@kms_cursor_legacy@pipe-d-tortu=
re-move.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a>) +90 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-=
kbl6/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/636">i915#636</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20853/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interru=
ptible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20853/shard-skl3/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20853/shard-apl1/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-32bpp-ytilercccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-sk=
l2/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard=
-kbl3/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +7 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20853/shard-apl1/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/533">i915#533</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20853/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20853/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20853/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html"=
>FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145=
">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20853/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-c=
onstant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20853/shard-apl8/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-3.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/658">i915#658</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20853/shard-skl7/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-iclb2/igt@kms_psr@psr2_sprite_render.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shar=
d-iclb5/igt@kms_psr@psr2_sprite_render.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20853/shard-snb2/igt@kms_setmode@basic.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-iclb7/igt@kms_vblank@pipe-a-ts-continuation-suspend.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20853/shard-iclb8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">=
INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1185">i915#1185</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20853/shard-skl7/igt@sysfs_clients@create.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20853/shard-apl8/igt@sysfs_clients@fair-1.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
994">i915#2994</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-tglb5/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2369">i915#2369</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#30=
63</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3648">i=
915#3648</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20853/shard-tglb5/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-kbl7/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0853/shard-kbl1/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20853/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10927=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20853/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-skl8/igt@kms_color@pipe-c-ctm-0-75.html">DMESG-WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#198=
2</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20853/shard-skl9/igt@kms_color@pipe-c-ctm-0-75.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_20853/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-a=
tomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-iclb2/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3788">i915#3788</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20853/shard-iclb5/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1=
-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i=
915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20853/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PA=
SS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_20853/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> +2 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mi=
n.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20853/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-min.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#180=
4</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i9=
15#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20853/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_20853/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-=
sf-dmg-area-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
5.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_20853/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg=
-area-5.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-kbl6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10498/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-kbl6/igt@runner@aborte=
d.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2505">i915#2505</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3363">i915#3363</a>) -&gt; (<a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_20853/shard-kbl3/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
853/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-kbl6/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20853/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-kbl7/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_20853/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853/shard-kbl6/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20853/shard-kbl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#25=
05</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i=
915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
363">i915#3363</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/92">i915#92</a>)</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10498/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-apl1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10498/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/shard-apl6/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10498/shard-apl7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)=
 -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20853=
/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_20853/shard-apl7/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
853/shard-apl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</=
p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 11)</h2>
<p>Additional (1): shard-rkl </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10498 -&gt; Patchwork_20853</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10498: b66f2ed13db3</p>

</body>
</html>

--===============3809925257978542800==--
