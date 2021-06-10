Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C253A35D7
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 23:28:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B9506E4F8;
	Thu, 10 Jun 2021 21:28:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ACCD16E4EC;
 Thu, 10 Jun 2021 21:28:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A3A9DA0BCB;
 Thu, 10 Jun 2021 21:28:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 10 Jun 2021 21:28:31 -0000
Message-ID: <162336051163.27730.18281174416606160545@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210610174223.605904-1-imre.deak@intel.com>
In-Reply-To: <20210610174223.605904-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Force_a_TypeC_PHY_disconnect_during_suspend/shutdown?=
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
Content-Type: multipart/mixed; boundary="===============0158925248=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0158925248==
Content-Type: multipart/alternative;
 boundary="===============5624223661872146030=="

--===============5624223661872146030==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Force a TypeC PHY disconnect during suspend/shutdown
URL   : https://patchwork.freedesktop.org/series/91345/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10205_full -> Patchwork_20334_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20334_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20334_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20334_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_whisper@basic-forked:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-tglb2/igt@gem_exec_whisper@basic-forked.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb7/igt@gem_exec_whisper@basic-forked.html

  
Known issues
------------

  Here are the changes found in Patchwork_20334_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@clone:
    - shard-snb:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1099]) +5 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-snb5/igt@gem_ctx_persistence@clone.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [PASS][4] -> [DMESG-WARN][5] ([i915#180]) +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl1/igt@gem_eio@in-flight-suspend.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl7/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          NOTRUN -> [FAIL][6] ([i915#2846])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl8/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-skl:          NOTRUN -> [SKIP][7] ([fdo#109271]) +51 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl1/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#2842])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-glk3/igt@gem_exec_fair@basic-none-share@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-glk3/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-kbl:          [PASS][10] -> [FAIL][11] ([i915#2842]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl2/igt@gem_exec_fair@basic-none@vecs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl6/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          NOTRUN -> [FAIL][12] ([i915#2842])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][13] -> [FAIL][14] ([i915#2849])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_whisper@basic-fds-all:
    - shard-glk:          [PASS][15] -> [DMESG-WARN][16] ([i915#118] / [i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-glk5/igt@gem_exec_whisper@basic-fds-all.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-glk2/igt@gem_exec_whisper@basic-fds-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#2190])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl3/igt@gem_huc_copy@huc-copy.html
    - shard-skl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#2190])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@big-copy-odd:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#307]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-glk6/igt@gem_mmap_gtt@big-copy-odd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-glk5/igt@gem_mmap_gtt@big-copy-odd.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-apl:          NOTRUN -> [WARN][21] ([i915#2658])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl8/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@input-checking:
    - shard-skl:          NOTRUN -> [DMESG-WARN][22] ([i915#3002])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl9/igt@gem_userptr_blits@input-checking.html

  * igt@gem_vm_create@destroy-race:
    - shard-tglb:         [PASS][23] -> [TIMEOUT][24] ([i915#2795])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-tglb8/igt@gem_vm_create@destroy-race.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb1/igt@gem_vm_create@destroy-race.html

  * igt@gen7_exec_parse@cmd-crossing-page:
    - shard-tglb:         NOTRUN -> [SKIP][25] ([fdo#109289])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@gen7_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][26] -> [DMESG-WARN][27] ([i915#1436] / [i915#716])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-skl10/igt@gen9_exec_parse@allowed-single.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl2/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-large:
    - shard-apl:          NOTRUN -> [FAIL][28] ([i915#3296])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl7/igt@gen9_exec_parse@bb-large.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#1937])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][30] ([fdo#111615]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo:
    - shard-snb:          NOTRUN -> [SKIP][31] ([fdo#109271]) +500 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-snb6/igt@kms_ccs@pipe-a-ccs-on-another-bo.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo:
    - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111304])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl5/igt@kms_ccs@pipe-c-ccs-on-another-bo.html

  * igt@kms_chamelium@hdmi-audio:
    - shard-skl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl1/igt@kms_chamelium@hdmi-audio.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +22 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl1/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium@vga-hpd-without-ddc:
    - shard-snb:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +23 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-snb5/igt@kms_chamelium@vga-hpd-without-ddc.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-tglb:         NOTRUN -> [SKIP][36] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-d-ctm-max:
    - shard-kbl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl2/igt@kms_color_chamelium@pipe-d-ctm-max.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-kbl:          NOTRUN -> [TIMEOUT][38] ([i915#1319])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl2/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@srm:
    - shard-apl:          NOTRUN -> [TIMEOUT][39] ([i915#1319])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl6/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-random:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([i915#3444])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][42] ([i915#180])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen:
    - shard-tglb:         NOTRUN -> [DMESG-WARN][43] ([i915#2868])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][44] ([fdo#109279] / [i915#3359]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#533]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl1/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled:
    - shard-skl:          [PASS][46] -> [DMESG-WARN][47] ([i915#1982])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-skl1/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][48] ([i915#155] / [i915#180] / [i915#636])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
    - shard-skl:          [PASS][49] -> [INCOMPLETE][50] ([i915#146] / [i915#198])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-kbl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#2672])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-skl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#2642])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
    - shard-apl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#2642])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite:
    - shard-tglb:         NOTRUN -> [SKIP][54] ([fdo#111825]) +5 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][55] -> [FAIL][56] ([i915#1188])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-skl7/igt@kms_hdr@bpc-switch.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl2/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - shard-apl:          [PASS][57] -> [DMESG-WARN][58] ([i915#180]) +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][59] ([fdo#108145] / [i915#265]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][60] ([fdo#108145] / [i915#265]) +2 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][61] -> [FAIL][62] ([fdo#108145] / [i915#265]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-c-tiling-none:
    - shard-tglb:         NOTRUN -> [SKIP][63] ([i915#3536])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@kms_plane_lowres@pipe-c-tiling-none.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
    - shard-kbl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#658]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#658]) +4 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl6/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][66] -> [SKIP][67] ([fdo#109441]) +2 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-tglb:         NOTRUN -> [FAIL][68] ([i915#132] / [i915#3467])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-snb:          NOTRUN -> [FAIL][69] ([i915#31])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-snb6/igt@kms_setmode@basic.html

  * igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][70] ([fdo#109271]) +97 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl4/igt@kms_universal_plane@disable-primary-vs-flip-pipe-d.html

  * igt@kms_vrr@flip-basic:
    - shard-tglb:         NOTRUN -> [SKIP][71] ([fdo#109502])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@kms_vrr@flip-basic.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#2437])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl1/igt@kms_writeback@writeback-fb-id.html

  * igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
    - shard-apl:          NOTRUN -> [SKIP][73] ([fdo#109271]) +217 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl7/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html

  * igt@prime_nv_pcopy@test3_2:
    - shard-tglb:         NOTRUN -> [SKIP][74] ([fdo#109291])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@prime_nv_pcopy@test3_2.html

  * igt@sysfs_clients@fair-3:
    - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#2994]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl1/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@fair-7:
    - shard-skl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#2994]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl5/igt@sysfs_clients@fair-7.html

  
#### Possible fixes ####

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][77] ([i915#2369] / [i915#3063]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-tglb3/igt@gem_eio@unwedge-stress.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][79] ([i915#2842]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][81] ([i915#2842]) -> [PASS][82] +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][83] ([i915#2842]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-glk:          [DMESG-WARN][85] ([i915#118] / [i915#95]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-glk3/igt@gem_exec_whisper@basic-queues-priority.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-glk3/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@gem_mmap_gtt@big-copy:
    - shard-glk:          [FAIL][87] ([i915#307]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-glk2/igt@gem_mmap_gtt@big-copy.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-glk1/igt@gem_mmap_gtt@big-copy.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-iclb:         [FAIL][89] ([i915#307]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-iclb:         [FAIL][91] ([i915#2428]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gem_mmap_offset@clear:
    - shard-skl:          [FAIL][93] ([i915#3160]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-skl8/igt@gem_mmap_offset@clear.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl6/igt@gem_mmap_offset@clear.html
    - shard-iclb:         [FAIL][95] ([i915#3160]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-iclb8/igt@gem_mmap_offset@clear.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-iclb2/igt@gem_mmap_offset@clear.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [INCOMPLETE][97] ([i915#2782]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-snb6/igt@i915_selftest@live@hangcheck.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-snb7/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [INCOMPLETE][99] ([i915#155] / [i915#180]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl4/igt@i915_suspend@debugfs-reader.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl4/igt@i915_suspend@debugfs-reader.html

  * igt@kms_color@pipe-c-ctm-0-5:
    - shard-skl:          [DMESG-WARN][101] ([i915#1982]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-skl8/igt@kms_color@pipe-c-ctm-0-5.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl4/igt@kms_color@pipe-c-ctm-0-5.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
    - shard-glk:          [FAIL][103] ([i915#79]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-apl:          [DMESG-WARN][105] ([i915#180]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][107] ([i915#180]) -> [PASS][108] +4 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][109] ([fdo#108145] / [i915#265]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][111] ([fdo#109441]) -> [PASS][112] +2 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-iclb8/igt@kms_psr@psr2_no_drrs.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][113] ([i915#1542]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-skl10/igt@perf@polling-parameterized.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl2/igt@perf@polling-parameterized.html

  * igt@prime_vgem@sync@rcs0:
    - shard-tglb:         [INCOMPLETE][115] ([i915#409]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-tglb6/igt@prime_vgem@sync@rcs0.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@prime_vgem@sync@rcs0.html

  
#### Warnings ####

  * igt@i915_selftest@live@execlists:
    - shard-tglb:         [DMESG-FAIL][117] ([i915#3462]) -> [INCOMPLETE][118] ([i915#3462])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-tglb2/igt@i915_selftest@live@execlists.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb2/igt@i915_selftest@live@execlists.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
    - shard-iclb:         [SKIP][119] ([i915#658]) -> [SKIP][120] ([i915#2920]) +2 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][121] ([i915#2920]) -> [SKIP][122] ([i915#658]) +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#2505] / [i915#3002] / [i915#3363] / [i915#602]) -> ([FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2505] / [i915#3002] / [i915#3363] / [i915#602] / [i915#92])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl6/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl7/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl3/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl2/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl4/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl6/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl1/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl3/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl6/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl4/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl3/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl3/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl7/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl3/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl3/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl7/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl6/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl7/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl6/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl6/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl3/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl7/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl3/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl1/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl2/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl2/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl1/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][150], [FAIL][151], [FAIL][152]) ([i915#2426] / [i915#2782] / [i915#3002]) -> ([FAIL][153], [FAIL][154], [FAIL][155]) ([i915#2782] / [i915#3002])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-iclb2/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-iclb8/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-iclb7/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-iclb2/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-iclb2/igt@runner@aborted.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-iclb8/igt@runner@aborted.html
    - shard-apl:          ([FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159]) ([fdo#109271] / [i915#180] / [i915#2426] / [i915#3002] / [i915#3363]) -> ([FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-apl8/igt@runner@aborted.html
   [157]: https

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/index.html

--===============5624223661872146030==
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
<tr><td><b>Series:</b></td><td>drm/i915: Force a TypeC PHY disconnect durin=
g suspend/shutdown</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/91345/">https://patchwork.freedesktop.org/series/91345/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20334/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20334/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10205_full -&gt; Patchwork_20334_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20334_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_20334_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
20334_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_whisper@basic-forked:<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-tglb2/igt@gem_exec_whisper@basic-forked.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/s=
hard-tglb7/igt@gem_exec_whisper@basic-forked.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20334_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@clone:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-snb5/igt@gem_ctx_persistence@clone.html=
">SKIP</a> ([fdo#109271] / [i915#1099]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-kbl1/igt@gem_eio@in-flight-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-=
kbl7/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a> ([i915#180]) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-apl8/igt@gem_exec_fair@basic-deadline.h=
tml">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-skl1/igt@gem_exec_fair@basic-flow@rcs0.=
html">SKIP</a> ([fdo#109271]) +51 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-glk3/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
334/shard-glk3/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i91=
5#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-kbl2/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/s=
hard-kbl6/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842]) +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@=
rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_203=
34/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#=
2849])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-glk5/igt@gem_exec_whisper@basic-fds-all.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/s=
hard-glk2/igt@gem_exec_whisper@basic-fds-all.html">DMESG-WARN</a> ([i915#11=
8] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20334/shard-apl3/igt@gem_huc_copy@huc-copy.html">SKI=
P</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20334/shard-skl1/igt@gem_huc_copy@huc-copy.html">SKI=
P</a> ([fdo#109271] / [i915#2190])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-odd:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-glk6/igt@gem_mmap_gtt@big-copy-odd.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-=
glk5/igt@gem_mmap_gtt@big-copy-odd.html">FAIL</a> ([i915#307]) +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-apl8/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-skl9/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_vm_create@destroy-race:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-tglb8/igt@gem_vm_create@destroy-race.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shar=
d-tglb1/igt@gem_vm_create@destroy-race.html">TIMEOUT</a> ([i915#2795])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@gen7_exec_parse@cmd-crossing-=
page.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-skl10/igt@gen9_exec_parse@allowed-single.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/=
shard-skl2/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1=
436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-apl7/igt@gen9_exec_parse@bb-large.html"=
>FAIL</a> ([i915#3296])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-apl7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp=
-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@kms_big_fb@yf-tiled-16bpp-rot=
ate-270.html">SKIP</a> ([fdo#111615]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-snb6/igt@kms_ccs@pipe-a-ccs-on-another-=
bo.html">SKIP</a> ([fdo#109271]) +500 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-skl5/igt@kms_ccs@pipe-c-ccs-on-another-=
bo.html">SKIP</a> ([fdo#109271] / [fdo#111304])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-audio:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-skl1/igt@kms_chamelium@hdmi-audio.html"=
>SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-apl1/igt@kms_chamelium@hdmi-edid-change=
-during-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +22 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-without-ddc:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-snb5/igt@kms_chamelium@vga-hpd-without-=
ddc.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@kms_color_chamelium@pipe-a-ct=
m-limited-range.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-kbl2/igt@kms_color_chamelium@pipe-d-ctm=
-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-kbl2/igt@kms_content_protection@atomic-=
dpms.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-apl6/igt@kms_content_protection@srm.htm=
l">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20334/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html">=
FAIL</a> ([i915#3444])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-s=
uspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-=
256x85-onscreen.html">DMESG-WARN</a> ([i915#2868])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-=
512x512-sliding.html">SKIP</a> ([fdo#109279] / [i915#3359]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-apl1/igt@kms_cursor_legacy@pipe-d-tortu=
re-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-skl1/igt@kms_draw_crc@draw-method-xrgb2101010-render-un=
tiled.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_20334/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-ren=
der-untiled.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html=
">INCOMPLETE</a> ([i915#155] / [i915#180] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20334/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.=
html">INCOMPLETE</a> ([i915#146] / [i915#198])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-kbl4/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])=
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20334/shard-skl1/igt@kms_flip_scaled_crc@flip-32bpp-=
ytileccs-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20334/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp-=
ytileccs-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-pri-indfb-draw-pwrite.html">SKIP</a> ([fdo#111825]) +5 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-skl7/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl2/ig=
t@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend@p=
ipe-a-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_20334/shard-apl7/igt@kms_plane@plane-panning-bottom-ri=
ght-suspend@pipe-a-planes.html">DMESG-WARN</a> ([i915#180]) +2 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20334/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">=
FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-none:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@kms_plane_lowres@pipe-c-tilin=
g-none.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-kbl2/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-apl6/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/=
shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> ([fdo#109441]=
) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@kms_psr@psr2_primary_mmap_gtt=
.html">FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-snb6/igt@kms_setmode@basic.html">FAIL</=
a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-kbl4/igt@kms_universal_plane@disable-pr=
imary-vs-flip-pipe-d.html">SKIP</a> ([fdo#109271]) +97 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@kms_vrr@flip-basic.html">SKIP=
</a> ([fdo#109502])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-apl1/igt@kms_writeback@writeback-fb-id.=
html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-apl7/igt@prime_nv_api@i915_nv_reimport_=
twice_check_flink_name.html">SKIP</a> ([fdo#109271]) +217 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_2:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@prime_nv_pcopy@test3_2.html">=
SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-apl1/igt@sysfs_clients@fair-3.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-skl5/igt@sysfs_clients@fair-7.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-tglb3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i9=
15#2369] / [i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20334/shard-tglb6/igt@gem_eio@unwedge-stress.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20334/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20334/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +2 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20334/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">=
PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-glk3/igt@gem_exec_whisper@basic-queues-priority.html">D=
MESG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_20334/shard-glk3/igt@gem_exec_whisper@basic=
-queues-priority.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-glk2/igt@gem_mmap_gtt@big-copy.html">FAIL</a> ([i915#30=
7]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_203=
34/shard-glk1/igt@gem_mmap_gtt@big-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy.html">FAIL</a> (=
[i915#307]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20334/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">FAIL</a=
> ([i915#2428]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20334/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10205/shard-skl8/igt@gem_mmap_offset@clear.html">FAIL</a> ([i915#316=
0]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_203=
34/shard-skl6/igt@gem_mmap_offset@clear.html">PASS</a></p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10205/shard-iclb8/igt@gem_mmap_offset@clear.html">FAIL</a> ([i915#31=
60]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
334/shard-iclb2/igt@gem_mmap_offset@clear.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-snb6/igt@i915_selftest@live@hangcheck.html">INCOMPLETE<=
/a> ([i915#2782]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20334/shard-snb7/igt@i915_selftest@live@hangcheck.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-kbl4/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</=
a> ([i915#155] / [i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_20334/shard-kbl4/igt@i915_suspend@debugfs-reader.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-0-5:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-skl8/igt@kms_color@pipe-c-ctm-0-5.html">DMESG-WARN</a> =
([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20334/shard-skl4/igt@kms_color@pipe-c-ctm-0-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_20334/shard-glk2/igt@kms_flip@flip-vs-expired=
-vblank-interruptible@a-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.h=
tml">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20334/shard-apl6/igt@kms_flip@flip-vs-suspend-int=
erruptible@b-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a=
> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20334/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> +4 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl3/igt@kms_plane_alpha_blend=
@pipe-c-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-iclb8/igt@kms_psr@psr2_no_drrs.html">SKIP</a> ([fdo#109=
441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0334/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> +2 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-skl10/igt@perf@polling-parameterized.html">FAIL</a> ([i=
915#1542]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_20334/shard-skl2/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-tglb6/igt@prime_vgem@sync@rcs0.html">INCOMPLETE</a> ([i=
915#409]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_20334/shard-tglb5/igt@prime_vgem@sync@rcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-tglb2/igt@i915_selftest@live@execlists.html">DMESG-FAIL=
</a> ([i915#3462]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20334/shard-tglb2/igt@i915_selftest@live@execlists.html">INCOMP=
LETE</a> ([i915#3462])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
1.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20334/shard-iclb2/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-1.html">SKIP</a> ([i915#2920]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
4.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20334/shard-iclb8/igt@kms_psr2_sf@primary-plane-upd=
ate-sf-dmg-area-4.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl7/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10205/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl2/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10205/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl6/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0205/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl3/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1020=
5/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl4/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/s=
hard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl3/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shar=
d-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_10205/shard-kbl3/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-k=
bl3/igt@runner@aborted.html">FAIL</a>) ([fdo#109271] / [i915#1436] / [i915#=
180] / [i915#1814] / [i915#2505] / [i915#3002] / [i915#3363] / [i915#602]) =
-&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/=
shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl6/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_203=
34/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl6/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20334/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl3/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_20334/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20334/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl2/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20334/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl1/igt@runner=
@aborted.html">FAIL</a>) ([i915#1436] / [i915#180] / [i915#1814] / [i915#25=
05] / [i915#3002] / [i915#3363] / [i915#602] / [i915#92])</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-iclb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-iclb8/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10205/shard-iclb7/igt@runner@aborted.html">FAIL</a>) ([i915#2426] / =
[i915#2782] / [i915#3002]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_20334/shard-iclb2/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-ic=
lb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20334/shard-iclb8/igt@runner@aborted.html">FAIL</=
a>) ([i915#2782] / [i915#3002])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10205/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s">FAIL</a>, [FAIL][158], [FAIL][159]) ([fdo#109271] / [i915#180] / [i915#2=
426] / [i915#3002] / [i915#3363]) -&gt; ([FAIL][160], [FAIL][161], [FAIL][1=
62], [FAIL][163], [FAIL][164]) ([fdo#109271] / [i915#180] / [i915#1814] / [=
i915#3002] / [i915#3363])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5624223661872146030==--

--===============0158925248==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0158925248==--
