Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAA63FEDF5
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 14:46:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D4896E526;
	Thu,  2 Sep 2021 12:46:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 95A866E525;
 Thu,  2 Sep 2021 12:46:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 816A5A9A42;
 Thu,  2 Sep 2021 12:46:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4014820037223213422=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 02 Sep 2021 12:46:08 -0000
Message-ID: <163058676849.29441.16126001079836767462@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210902100851.21719-1-shawn.c.lee@intel.com>
In-Reply-To: <20210902100851.21719-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgRFNJ?=
 =?utf-8?q?_driver_improvement_=28rev2=29?=
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

--===============4014820037223213422==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: DSI driver improvement (rev2)
URL   : https://patchwork.freedesktop.org/series/94237/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10545_full -> Patchwork_20941_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20941_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_eio@hibernate:
    - {shard-rkl}:        [PASS][1] -> [FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-rkl-1/igt@gem_eio@hibernate.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-rkl-5/igt@gem_eio@hibernate.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x32-offscreen:
    - {shard-rkl}:        [SKIP][3] ([fdo#112022]) -> [SKIP][4] +7 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-rkl-2/igt@kms_cursor_crc@pipe-c-cursor-32x32-offscreen.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-rkl-6/igt@kms_cursor_crc@pipe-c-cursor-32x32-offscreen.html

  * igt@kms_vblank@pipe-c-ts-continuation-idle:
    - {shard-rkl}:        [SKIP][5] ([i915#1845]) -> [SKIP][6] +10 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-rkl-2/igt@kms_vblank@pipe-c-ts-continuation-idle.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-rkl-6/igt@kms_vblank@pipe-c-ts-continuation-idle.html

  
Known issues
------------

  Here are the changes found in Patchwork_20941_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#1099]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-snb6/igt@gem_ctx_persistence@legacy-engines-mixed.html

  * igt@gem_eio@unwedge-stress:
    - shard-snb:          NOTRUN -> [FAIL][8] ([i915#3354])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-snb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          NOTRUN -> [FAIL][9] ([i915#2846])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-apl6/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-kbl:          [PASS][10] -> [FAIL][11] ([i915#2842])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-kbl3/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglb:         [PASS][12] -> [FAIL][13] ([i915#2842])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-tglb8/igt@gem_exec_fair@basic-pace@rcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-tglb2/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-apl:          NOTRUN -> [WARN][14] ([i915#2658])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-apl7/igt@gem_pwrite@basic-exhaustion.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-skl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-skl1/igt@i915_module_load@reload-with-fault-injection.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-skl9/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [PASS][17] -> [INCOMPLETE][18] ([i915#3921])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-snb5/igt@i915_selftest@live@hangcheck.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-snb5/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#3777]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-apl7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-apl:          NOTRUN -> [SKIP][20] ([fdo#109271]) +197 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-apl7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#3886]) +10 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-apl1/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#3886])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-kbl2/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][23] ([fdo#109278] / [i915#3886])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-iclb8/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-kbl6/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-snb:          NOTRUN -> [SKIP][25] ([fdo#109271] / [fdo#111827]) +12 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-snb6/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-5:
    - shard-apl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [fdo#111827]) +15 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-apl7/igt@kms_color_chamelium@pipe-c-ctm-0-5.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          NOTRUN -> [TIMEOUT][27] ([i915#1319])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-kbl6/igt@kms_content_protection@atomic.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:
    - shard-snb:          NOTRUN -> [SKIP][28] ([fdo#109271]) +291 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-snb7/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][29] ([i915#180])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#109274] / [fdo#109278])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-iclb8/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled:
    - shard-skl:          NOTRUN -> [DMESG-WARN][31] ([i915#1982])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-skl10/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
    - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#109274])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-iclb8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#79]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#2122]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-kbl:          NOTRUN -> [SKIP][37] ([fdo#109271]) +24 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-kbl6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-slowdraw:
    - shard-skl:          NOTRUN -> [SKIP][38] ([fdo#109271]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-skl5/igt@kms_frontbuffer_tracking@fbcpsr-slowdraw.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109280]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-iclb8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([i915#1888] / [i915#2546])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-skl9/igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-skl6/igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#533])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-apl1/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-kbl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-apl:          [PASS][45] -> [DMESG-WARN][46] ([i915#180])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][47] ([fdo#108145] / [i915#265]) +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][48] ([i915#265])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-kbl6/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_lowres@pipe-b-tiling-yf:
    - shard-iclb:         NOTRUN -> [SKIP][49] ([i915#3536])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-iclb8/igt@kms_plane_lowres@pipe-b-tiling-yf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#658]) +3 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-apl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#109441]) +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_sysfs_edid_timing:
    - shard-kbl:          NOTRUN -> [FAIL][53] ([IGT#2])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-kbl6/igt@kms_sysfs_edid_timing.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-apl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#2437]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-apl6/igt@kms_writeback@writeback-fb-id.html

  * igt@prime_nv_test@nv_write_i915_cpu_mmap_read:
    - shard-iclb:         NOTRUN -> [SKIP][55] ([fdo#109291])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-iclb8/igt@prime_nv_test@nv_write_i915_cpu_mmap_read.html

  * igt@sysfs_clients@split-25:
    - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#2994]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-apl7/igt@sysfs_clients@split-25.html

  
#### Possible fixes ####

  * igt@fbdev@nullptr:
    - {shard-rkl}:        [SKIP][57] ([i915#2582]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-rkl-1/igt@fbdev@nullptr.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-rkl-6/igt@fbdev@nullptr.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][59] ([i915#2846]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-glk3/igt@gem_exec_fair@basic-deadline.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-glk6/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][61] ([i915#2842]) -> [PASS][62] +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][63] ([i915#2842]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-tglb:         [FAIL][65] ([i915#2842]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-iclb:         [FAIL][67] ([i915#2428]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
    - {shard-rkl}:        [FAIL][69] ([i915#2428]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-rkl-1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-rkl-5/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - {shard-rkl}:        [FAIL][71] ([i915#307]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-rkl-6/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-rkl-5/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-snb:          [DMESG-FAIL][73] -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-snb7/igt@gem_ppgtt@blt-vs-render-ctxn.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-snb5/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - {shard-rkl}:        [SKIP][75] ([i915#3012]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-rkl-1/igt@i915_pm_backlight@fade_with_suspend.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-rkl-6/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - {shard-rkl}:        [SKIP][77] ([i915#1397]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-rkl-1/igt@i915_pm_rpm@dpms-lpsp.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - {shard-rkl}:        [SKIP][79] ([fdo#109308]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-rkl-2/igt@i915_pm_rpm@system-suspend-modeset.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-rkl-6/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_pm_rps@waitboost:
    - {shard-rkl}:        [FAIL][81] -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-rkl-6/igt@i915_pm_rps@waitboost.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-rkl-1/igt@i915_pm_rps@waitboost.html

  * igt@kms_big_fb@linear-8bpp-rotate-0:
    - {shard-rkl}:        [SKIP][83] ([i915#3638]) -> [PASS][84] +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-rkl-1/igt@kms_big_fb@linear-8bpp-rotate-0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - {shard-rkl}:        [SKIP][85] ([i915#3721]) -> [PASS][86] +5 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-rkl-1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_color@pipe-b-gamma:
    - {shard-rkl}:        [SKIP][87] ([i915#1149] / [i915#1849]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-rkl-2/igt@kms_color@pipe-b-gamma.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-rkl-6/igt@kms_color@pipe-b-gamma.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen:
    - {shard-rkl}:        [SKIP][89] ([fdo#112022]) -> [PASS][90] +7 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][91] ([i915#2346] / [i915#533]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - {shard-rkl}:        [SKIP][93] ([fdo#111825]) -> [PASS][94] +6 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-rkl-2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:
    - {shard-rkl}:        [SKIP][95] ([fdo#111314]) -> [PASS][96] +2 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:
    - shard-glk:          [FAIL][97] ([i915#79]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-apl:          [DMESG-WARN][99] ([i915#180]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-apl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-apl6/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [FAIL][101] ([i915#2122]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:
    - {shard-rkl}:        [SKIP][103] ([i915#1849]) -> [PASS][104] +34 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][105] ([fdo#108145] / [i915#265]) -> [PASS][106] +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-a-primary-size-128:
    - {shard-rkl}:        [SKIP][107] ([i915#1845]) -> [PASS][108] +23 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-rkl-2/igt@kms_plane_cursor@pipe-a-primary-size-128.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-rkl-6/igt@kms_plane_cursor@pipe-a-primary-size-128.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-x:
    - {shard-rkl}:        [SKIP][109] ([i915#1849] / [i915#3558]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-rkl-5/igt@kms_plane_multiple@atomic-pipe-a-tiling-x.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-a-tiling-x.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][111] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-iclb5/igt@kms_psr2_su@frontbuffer.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@primary_mmap_gtt:
    - {shard-rkl}:        [SKIP][113] ([i915#1072]) -> [PASS][114] +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-rkl-1/igt@kms_psr@primary_mmap_gtt.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-rkl-6/igt@kms_psr@primary_mmap_gtt.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][115] ([fdo#109441]) -> [PASS][116] +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-b-query-busy-hang:
    - {shard-rkl}:        [SKIP][117] ([i915#1845] / [i915#3149]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-rkl-2/igt@kms_vblank@pipe-b-query-busy-hang.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-rkl-6/igt@kms_vblank@pipe-b-query-busy-hang.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][119] ([i915#588]) -> [SKIP][120] ([i915#658])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][121] ([i915#2684]) -> [WARN][122] ([i915#1804] / [i915#2684])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         [SKIP][123] ([i915#2920]) -> [SKIP][124] ([i915#658]) +3 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-iclb8/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][125] ([i915#658]) -> [SKIP][126] ([i915#2920])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][127], [FAIL][128], [FAIL][129]) ([i915#180] / [i915#3002] / [i915#3363]) -> ([FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#3363])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-kbl7/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-kbl1/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-kbl6/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-kbl6/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-kbl7/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-kbl4/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-kbl6/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-kbl6/igt@runner@aborted.html
    - shard-apl:          ([FAIL][135], [FAIL][136], [FAIL][137]) ([i915#1610] / [i915#180] / [i915#3002] / [i915#3363]) -> ([FAIL][138], [FAIL][139]) ([fdo#109271] / [i915#1814] / [i915#3002] / [i915#3363])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-apl2/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-apl3/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-apl6/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-apl2/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-apl1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109502]: https://bugs.freedesktop.org/show_bug.cgi?id=109502
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#180]: https://gitlab.freedesktop

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/index.html

--===============4014820037223213422==
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
<tr><td><b>Series:</b></td><td>DSI driver improvement (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/94237/">https://patchwork.freedesktop.org/series/94237/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20941/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20941/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10545_full -&gt; Patchwork_20941_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
20941_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-rkl-1/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-rkl-5/i=
gt@gem_eio@hibernate.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x32-offscreen:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-rkl-2/igt@kms_cursor_crc@pipe-c-cursor-32x32-offscreen.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
12022">fdo#112022</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_20941/shard-rkl-6/igt@kms_cursor_crc@pipe-c-cursor-32x32-of=
fscreen.html">SKIP</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-idle:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-rkl-2/igt@kms_vblank@pipe-c-ts-continuation-idle.html">=
SKIP</a> ([i915#1845]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_20941/shard-rkl-6/igt@kms_vblank@pipe-c-ts-continuation-idl=
e.html">SKIP</a> +10 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20941_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20941/shard-snb6/igt@gem_ctx_persistence@legacy-eng=
ines-mixed.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/1099">i915#1099</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20941/shard-snb6/igt@gem_eio@unwedge-stress.html">F=
AIL</a> ([i915#3354])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20941/shard-apl6/igt@gem_exec_fair@basic-deadline.h=
tml">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2094=
1/shard-kbl3/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> ([i915#28=
42])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-tglb8/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/s=
hard-tglb2/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20941/shard-apl7/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-skl1/igt@i915_module_load@reload-with-fault-injection.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20941/shard-skl9/igt@i915_module_load@reload-with-fault-injection.ht=
ml">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-snb5/igt@i915_selftest@live@hangcheck.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/sha=
rd-snb5/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#3921])=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20941/shard-apl7/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3777]) +2 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20941/shard-apl7/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-64bpp-rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a>) +197 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20941/shard-apl1/igt@kms_ccs@pipe-a-ccs-on-another-=
bo-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886]) +10 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20941/shard-kbl2/igt@kms_ccs@pipe-a-ccs-on-another-=
bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20941/shard-iclb8/igt@kms_ccs@pipe-c-bad-aux-stride=
-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109278">fdo#109278</a> / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20941/shard-kbl6/igt@kms_chamelium@vga-hpd-after-su=
spend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20941/shard-snb6/igt@kms_color_chamelium@pipe-a-ctm=
-blue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111827">fdo#111827</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20941/shard-apl7/igt@kms_color_chamelium@pipe-c-ctm=
-0-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20941/shard-kbl6/igt@kms_content_protection@atomic.=
html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20941/shard-snb7/igt@kms_cursor_crc@pipe-a-cursor-2=
56x85-sliding.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a>) +291 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20941/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-s=
uspend.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop">i915#18=
0</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20941/shard-iclb8/igt@kms_cursor_legacy@cursorb-vs-=
flipa-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20941/shard-skl10/igt@kms_draw_crc@draw-method-xrgb=
2101010-mmap-gtt-ytiled.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20941/shard-iclb8/igt@kms_flip@2x-flip-vs-dpms-off-=
vs-modeset.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20941/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interr=
uptible@b-edp1.html">FAIL</a> ([i915#79]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
c-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20941/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interru=
ptible@c-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20941/shard-kbl6/igt@kms_frontbuffer_tracking@fbcps=
r-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +24 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-slowdraw:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20941/shard-skl5/igt@kms_frontbuffer_tracking@fbcps=
r-slowdraw.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20941/shard-iclb8/igt@kms_frontbuffer_tracking@psr-=
2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +2 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-skl9/igt@kms_frontbuffer_tracking@psr-farfromfence-mmap=
-gtt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20941/shard-skl6/igt@kms_frontbuffer_tracking@psr-farfromfence=
-mmap-gtt.html">FAIL</a> ([i915#1888] / [i915#2546])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20941/shard-apl1/igt@kms_pipe_crc_basic@nonblocking=
-crc-pipe-d-frame-sequence.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20941/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html">=
DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20941/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">=
DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20941/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D108145">fdo#108145</a> / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20941/shard-kbl6/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-yf:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20941/shard-iclb8/igt@kms_plane_lowres@pipe-b-tilin=
g-yf.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20941/shard-apl1/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-2.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/=
shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href=3D"h=
ttps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20941/shard-kbl6/igt@kms_sysfs_edid_timing.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/=
2">IGT#2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20941/shard-apl6/igt@kms_writeback@writeback-fb-id.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / [i915#2437]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@nv_write_i915_cpu_mmap_read:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20941/shard-iclb8/igt@prime_nv_test@nv_write_i915_c=
pu_mmap_read.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20941/shard-apl7/igt@sysfs_clients@split-25.html">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">=
fdo#109271</a> / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-rkl-1/igt@fbdev@nullptr.html">SKIP</a> ([i915#2582]) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/sha=
rd-rkl-6/igt@fbdev@nullptr.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-glk3/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([=
i915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20941/shard-glk6/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20941/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +3 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20941/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20941/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10545/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a=
> ([i915#2428]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20941/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS<=
/a></p>
</li>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10545/shard-rkl-1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a=
> ([i915#2428]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20941/shard-rkl-5/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS<=
/a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-rkl-6/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">FAIL</a=
> ([i915#307]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20941/shard-rkl-5/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@blt-vs-render-ctxn:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-snb7/igt@gem_ppgtt@blt-vs-render-ctxn.html">DMESG-FAIL<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_209=
41/shard-snb5/igt@gem_ppgtt@blt-vs-render-ctxn.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade_with_suspend:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-rkl-1/igt@i915_pm_backlight@fade_with_suspend.html">SKI=
P</a> ([i915#3012]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20941/shard-rkl-6/igt@i915_pm_backlight@fade_with_suspend.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-rkl-1/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/sha=
rd-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-rkl-2/igt@i915_pm_rpm@system-suspend-modeset.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109308">fdo=
#109308</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20941/shard-rkl-6/igt@i915_pm_rpm@system-suspend-modeset.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@waitboost:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-rkl-6/igt@i915_pm_rps@waitboost.html">FAIL</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-rkl=
-1/igt@i915_pm_rps@waitboost.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-rkl-1/igt@kms_big_fb@linear-8bpp-rotate-0.html">SKIP</a=
> ([i915#3638]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20941/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-0.html">PASS</=
a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-rkl-1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate=
-180-hflip-async-flip.html">SKIP</a> ([i915#3721]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-rkl-6/igt@kms_big_f=
b@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS</a> +5=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-gamma:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-rkl-2/igt@kms_color@pipe-b-gamma.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1149">i915#1149</a> / =
[i915#1849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20941/shard-rkl-6/igt@kms_color@pipe-b-gamma.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
112022">fdo#112022</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20941/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x128=
-onscreen.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-skl7/igt=
@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-rkl-2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
111825">fdo#111825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20941/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-var=
ying-size.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11314">fdo#111314</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_20941/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-blt=
-xtiled.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_20941/shard-glk7/igt@kms_flip@flip-vs-expired=
-vblank-interruptible@b-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-apl2/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop">i915#180</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-apl6/igt=
@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
b-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_20941/shard-skl2/igt@kms_flip@plain-flip-fb-re=
create-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-=
shrfb-draw-render.html">SKIP</a> ([i915#1849]) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-rkl-6/igt@kms_frontbuff=
er_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html">PASS</a> +34 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1081=
45">fdo#108145</a> / [i915#265]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20941/shard-skl6/igt@kms_plane_alpha_blend@pipe-c=
-coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-primary-size-128:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-rkl-2/igt@kms_plane_cursor@pipe-a-primary-size-128.html=
">SKIP</a> ([i915#1845]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_20941/shard-rkl-6/igt@kms_plane_cursor@pipe-a-primary-siz=
e-128.html">PASS</a> +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-a-tiling-x:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-rkl-5/igt@kms_plane_multiple@atomic-pipe-a-tiling-x.htm=
l">SKIP</a> ([i915#1849] / [i915#3558]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_20941/shard-rkl-6/igt@kms_plane_multiple@a=
tomic-pipe-a-tiling-x.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-iclb5/igt@kms_psr2_su@frontbuffer.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a>=
 / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#11=
1068</a> / [i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_20941/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-rkl-1/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/=
shard-rkl-6/igt@kms_psr@primary_mmap_gtt.html">PASS</a> +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#10944=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20941/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> +1 simila=
r issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-query-busy-hang:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-rkl-2/igt@kms_vblank@pipe-b-query-busy-hang.html">SKIP<=
/a> ([i915#1845] / [i915#3149]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20941/shard-rkl-6/igt@kms_vblank@pipe-b-query-busy=
-hang.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> ([i915#588]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20941/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 ([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20941/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 ([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP=
</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20941/shard-iclb8/igt@kms_psr2_sf@cursor-plane-update-sf.html">=
SKIP</a> ([i915#658]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
4.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20941/shard-iclb2/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-4.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-kbl1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10545/shard-kbl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop">i915#180</a> / [i915#3002] / [i915#3363]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-kbl6/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_20941/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard-kb=
l4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20941/shard-kbl6/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard=
-kbl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedes=
ktop">i915#180</a> / [i915#1814] / [i915#3002] / [i915#3363])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10545/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10545/shard-apl3/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10545/shard-apl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a> / <a href=3D"=
https://gitlab.freedesktop">i915#180</a> / [i915#3002] / [i915#3363]) -&gt;=
 (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20941/shard=
-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_20941/shard-apl1/igt@runner@aborted.html">FAIL<=
/a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo=
#109271</a> / [i915#1814] / [i915#3002] / [i915#3363])</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============4014820037223213422==--
