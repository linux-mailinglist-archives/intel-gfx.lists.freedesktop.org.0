Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 835713C656E
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 23:27:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A96D89EB8;
	Mon, 12 Jul 2021 21:27:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A2D0D89E5F;
 Mon, 12 Jul 2021 21:27:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 99AB8A0BCB;
 Mon, 12 Jul 2021 21:27:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Mon, 12 Jul 2021 21:27:00 -0000
Message-ID: <162612522059.23771.14538115648703292443@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210712161815.24776-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210712161815.24776-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Silence_=5F=5Fiomem_spa?=
 =?utf-8?q?rse_warn?=
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
Content-Type: multipart/mixed; boundary="===============0047500764=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0047500764==
Content-Type: multipart/alternative;
 boundary="===============1731394577492173483=="

--===============1731394577492173483==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915: Silence __iomem sparse warn
URL   : https://patchwork.freedesktop.org/series/92443/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10334_full -> Patchwork_20577_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_20577_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@idempotent:
    - shard-snb:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1099]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-snb2/igt@gem_ctx_persistence@idempotent.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][2] -> [FAIL][3] ([i915#2842]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         NOTRUN -> [FAIL][4] ([i915#2842])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#2842])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-kbl1/igt@gem_exec_fair@basic-none@vecs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-kbl7/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][7] -> [FAIL][8] ([i915#2849])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_mmap_gtt@big-copy-odd:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#307])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-glk7/igt@gem_mmap_gtt@big-copy-odd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-glk4/igt@gem_mmap_gtt@big-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-iclb:         [PASS][11] -> [FAIL][12] ([i915#2428])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-iclb8/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-snb:          NOTRUN -> [WARN][13] ([i915#2658])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-snb5/igt@gem_pwrite@basic-exhaustion.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-iclb:         NOTRUN -> [SKIP][14] ([fdo#112306])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-iclb7/igt@gen9_exec_parse@batch-without-end.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         NOTRUN -> [WARN][15] ([i915#1804] / [i915#2684])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          NOTRUN -> [INCOMPLETE][16] ([i915#2782])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-snb6/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-glk:          [PASS][17] -> [DMESG-WARN][18] ([i915#118] / [i915#95]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-glk5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-glk7/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-apl:          NOTRUN -> [SKIP][19] ([fdo#109271]) +166 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-apl1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-snb:          NOTRUN -> [SKIP][20] ([fdo#109271] / [fdo#111827]) +19 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-snb2/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@kms_chamelium@vga-edid-read:
    - shard-apl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [fdo#111827]) +15 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-apl7/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_chamelium@vga-hpd:
    - shard-skl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-skl3/igt@kms_chamelium@vga-hpd.html

  * igt@kms_chamelium@vga-hpd-without-ddc:
    - shard-iclb:         NOTRUN -> [SKIP][23] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-iclb5/igt@kms_chamelium@vga-hpd-without-ddc.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][24] -> [DMESG-WARN][25] ([i915#1982])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-skl7/igt@kms_color@pipe-a-ctm-0-5.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-skl5/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-b-gamma:
    - shard-kbl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-kbl6/igt@kms_color_chamelium@pipe-b-gamma.html

  * igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
    - shard-glk:          NOTRUN -> [SKIP][27] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-glk6/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html
    - shard-iclb:         NOTRUN -> [SKIP][28] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-iclb7/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          NOTRUN -> [TIMEOUT][29] ([i915#1319])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-kbl1/igt@kms_content_protection@atomic.html
    - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#109300] / [fdo#111066])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-iclb7/igt@kms_content_protection@atomic.html
    - shard-apl:          NOTRUN -> [TIMEOUT][31] ([i915#1319]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-apl7/igt@kms_content_protection@atomic.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-random:
    - shard-apl:          NOTRUN -> [FAIL][32] ([i915#3444])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen:
    - shard-kbl:          NOTRUN -> [SKIP][33] ([fdo#109271]) +55 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-random:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#109278] / [fdo#109279])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-iclb7/igt@kms_cursor_crc@pipe-c-cursor-512x512-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#109278]) +5 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([i915#2346])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-kbl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#533])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-kbl6/igt@kms_cursor_legacy@pipe-d-torture-bo.html
    - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#533]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-apl2/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][40] -> [INCOMPLETE][41] ([i915#155] / [i915#180] / [i915#636])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:
    - shard-glk:          [PASS][42] -> [FAIL][43] ([i915#79])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          NOTRUN -> [DMESG-WARN][44] ([i915#180]) +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#2122]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-snb:          NOTRUN -> [SKIP][47] ([fdo#109271]) +397 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-snb7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-skl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#2672])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-skl3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
    - shard-skl:          NOTRUN -> [SKIP][49] ([fdo#109271]) +68 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-skl3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-pri-indfb-multidraw:
    - shard-glk:          NOTRUN -> [SKIP][50] ([fdo#109271]) +14 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-glk6/igt@kms_frontbuffer_tracking@fbcpsr-2p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109280]) +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][52] -> [FAIL][53] ([i915#1188])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-apl:          NOTRUN -> [FAIL][54] ([fdo#108145] / [i915#265]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][55] ([i915#265])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
    - shard-kbl:          NOTRUN -> [FAIL][56] ([i915#265])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-kbl6/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-yf:
    - shard-glk:          [PASS][57] -> [FAIL][58] ([i915#1779])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-glk5/igt@kms_plane_multiple@atomic-pipe-a-tiling-yf.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-glk7/igt@kms_plane_multiple@atomic-pipe-a-tiling-yf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
    - shard-kbl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#658]) +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-kbl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
    - shard-iclb:         NOTRUN -> [SKIP][60] ([i915#658])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-iclb7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
    - shard-glk:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#658])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-glk6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
    - shard-apl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#658]) +3 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-apl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:
    - shard-skl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#658])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-skl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][64] -> [SKIP][65] ([fdo#109441]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-iclb2/igt@kms_psr@psr2_basic.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-iclb6/igt@kms_psr@psr2_basic.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         NOTRUN -> [SKIP][66] ([fdo#109441])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][67] ([IGT#2])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-apl1/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-kbl:          [PASS][68] -> [DMESG-WARN][69] ([i915#180]) +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-kbl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-kbl7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-apl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#2437])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-apl7/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@pipe-c-ctx-flip-detection:
    - shard-iclb:         NOTRUN -> [SKIP][71] ([i915#2530])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-iclb7/igt@nouveau_crc@pipe-c-ctx-flip-detection.html

  * igt@prime_nv_api@i915_nv_double_export:
    - shard-iclb:         NOTRUN -> [SKIP][72] ([fdo#109291])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-iclb7/igt@prime_nv_api@i915_nv_double_export.html

  * igt@sysfs_clients@recycle:
    - shard-apl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#2994])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-apl7/igt@sysfs_clients@recycle.html

  * igt@vgem_basic@unload:
    - shard-snb:          NOTRUN -> [INCOMPLETE][74] ([i915#3744])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-snb5/igt@vgem_basic@unload.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-contexts-10ms:
    - {shard-rkl}:        [TIMEOUT][75] ([i915#3063]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-rkl-1/igt@gem_eio@in-flight-contexts-10ms.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-rkl-5/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][77] ([i915#2369] / [i915#3063] / [i915#3648]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-tglb3/igt@gem_eio@unwedge-stress.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-tglb2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][79] ([i915#2842]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [SKIP][81] ([fdo#109271]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_schedule@submit-early-slice@vecs0:
    - shard-skl:          [INCOMPLETE][83] -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-skl7/igt@gem_exec_schedule@submit-early-slice@vecs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-skl8/igt@gem_exec_schedule@submit-early-slice@vecs0.html

  * igt@gem_mmap_offset@clear:
    - {shard-rkl}:        [FAIL][85] ([i915#3160]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-rkl-1/igt@gem_mmap_offset@clear.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-rkl-5/igt@gem_mmap_offset@clear.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][87] ([i915#1436] / [i915#716]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-glk6/igt@gen9_exec_parse@allowed-all.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-glk8/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_selftest@live@gt_pm:
    - {shard-rkl}:        [DMESG-FAIL][89] ([i915#1021]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-rkl-6/igt@i915_selftest@live@gt_pm.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-rkl-6/igt@i915_selftest@live@gt_pm.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [DMESG-WARN][91] ([i915#1982]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-skl10/igt@kms_color@pipe-b-ctm-0-25.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-skl7/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:
    - shard-skl:          [FAIL][93] ([i915#3444]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-random:
    - shard-iclb:         [FAIL][95] -> [PASS][96] +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-iclb3/igt@kms_cursor_crc@pipe-c-cursor-256x85-random.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-iclb6/igt@kms_cursor_crc@pipe-c-cursor-256x85-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][97] ([i915#2346]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][99] ([i915#79]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1:
    - shard-glk:          [FAIL][101] ([i915#2122]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-glk4/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-glk6/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1.html

  * igt@kms_flip_tiling@flip-changes-tiling-yf@edp-1-pipe-a:
    - shard-skl:          [FAIL][103] ([i915#699]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-skl6/igt@kms_flip_tiling@flip-changes-tiling-yf@edp-1-pipe-a.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-skl7/igt@kms_flip_tiling@flip-changes-tiling-yf@edp-1-pipe-a.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc:
    - {shard-rkl}:        [FAIL][105] -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
    - shard-skl:          [FAIL][107] ([i915#49]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-skl6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-skl7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][109] ([i915#180]) -> [PASS][110] +2 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [SKIP][111] ([fdo#109441]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-iclb8/igt@kms_psr@psr2_dpms.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-iclb2/igt@kms_psr@psr2_dpms.html

  * igt@kms_vblank@pipe-c-accuracy-idle:
    - shard-glk:          [FAIL][113] ([i915#43]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-glk6/igt@kms_vblank@pipe-c-accuracy-idle.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-glk5/igt@kms_vblank@pipe-c-accuracy-idle.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [FAIL][115] ([i915#1542]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-glk2/igt@perf@polling-parameterized.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-glk2/igt@perf@polling-parameterized.html
    - shard-skl:          [FAIL][117] ([i915#1542]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-skl4/igt@perf@polling-parameterized.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-skl4/igt@perf@polling-parameterized.html

  * igt@perf_pmu@module-unload:
    - shard-skl:          [DMESG-WARN][119] ([i915#1982] / [i915#262]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-skl10/igt@perf_pmu@module-unload.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-skl10/igt@perf_pmu@module-unload.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-tglb:         [FAIL][121] ([i915#2849]) -> [FAIL][122] ([i915#2842])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-tglb2/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-tglb3/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][123] ([i915#2684]) -> [FAIL][124] ([i915#2680])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
    - shard-iclb:         [SKIP][125] ([i915#2920]) -> [SKIP][126] ([i915#658]) +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-iclb6/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][127] ([i915#658]) -> [SKIP][128] ([i915#2920])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2505] / [i915#2722] / [i915#3002] / [i915#3363] / [i915#3744]) -> ([FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143]) ([i915#180] / [i915#1814] / [i915#2722] / [i915#3002] / [i915#3363] / [i915#3744] / [i915#602] / [i915#92])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-kbl6/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-kbl2/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-kbl3/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-kbl2/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-kbl1/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-kbl1/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-kbl1/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-kbl7/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-kbl3/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-kbl3/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-kbl3/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-kbl2/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-kbl7/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-kbl3/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-kbl7/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][144], [FAIL][145], [FAIL][146]) ([i915#1814] / [i915#2722] / [i915#3002] / [i915#3744]) -> ([FAIL][147], [FAIL][148]) ([i915#2722] / [i915#3002] / [i915#3744])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-iclb6/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-iclb6/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-iclb8/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-iclb4/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-iclb1/igt@runner@aborted.html
    - shard-apl:          [FAIL][149] ([i915#2722] / [i915#3363] / [i915#3744]) -> ([FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#2722] / [i915#3363] / [i915#3744])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-apl8/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-apl1/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-apl3/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-apl1/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-apl2/igt@runner@aborted.html
    - shard-snb:          [FAIL][154] ([i915#3002]) -> ([FAIL][155], [FAIL][156]) ([i915#2722] / [i915#3002] / [i915#3744])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-snb6/igt@runner@aborted.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-snb5/igt@runner@aborted.html
   [156]: https://

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/index.html

--===============1731394577492173483==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915: Silence=
 __iomem sparse warn</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/92443/">https://patchwork.freedesktop.org/series/92443/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20577/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20577/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10334_full -&gt; Patchwork_20577_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20577_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@idempotent:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-snb2/igt@gem_ctx_persistence@idempotent=
.html">SKIP</a> ([fdo#109271] / [i915#1099]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/s=
hard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842]) +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-iclb5/igt@gem_exec_fair@basic-none-shar=
e@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-kbl1/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/s=
hard-kbl7/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_205=
77/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#=
2849])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-odd:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-glk7/igt@gem_mmap_gtt@big-copy-odd.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-=
glk4/igt@gem_mmap_gtt@big-copy-odd.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577=
/shard-iclb8/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">FAIL</a> ([i915#2428=
])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-snb5/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-iclb7/igt@gen9_exec_parse@batch-without=
-end.html">SKIP</a> ([fdo#112306])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fen=
ce.html">WARN</a> ([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-snb6/igt@i915_selftest@live@hangcheck.h=
tml">INCOMPLETE</a> ([i915#2782])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-glk5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2057=
7/shard-glk7/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">DMESG-WARN</a> ([i=
915#118] / [i915#95]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-apl1/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-64bpp-rotate-0.html">SKIP</a> ([fdo#109271]) +166 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-snb2/igt@kms_chamelium@hdmi-hpd-enable-=
disable-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +19 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-apl7/igt@kms_chamelium@vga-edid-read.ht=
ml">SKIP</a> ([fdo#109271] / [fdo#111827]) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-skl3/igt@kms_chamelium@vga-hpd.html">SK=
IP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-without-ddc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-iclb5/igt@kms_chamelium@vga-hpd-without=
-ddc.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-skl7/igt@kms_color@pipe-a-ctm-0-5.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-s=
kl5/igt@kms_color@pipe-a-ctm-0-5.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-gamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-kbl6/igt@kms_color_chamelium@pipe-b-gam=
ma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20577/shard-glk6/igt@kms_color_chamelium@pipe-d-ctm-=
blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</=
p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20577/shard-iclb7/igt@kms_color_chamelium@pipe-d-ctm=
-blue-to-red.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20577/shard-kbl1/igt@kms_content_protection@atomic.h=
tml">TIMEOUT</a> ([i915#1319])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20577/shard-iclb7/igt@kms_content_protection@atomic.=
html">SKIP</a> ([fdo#109300] / [fdo#111066])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20577/shard-apl7/igt@kms_content_protection@atomic.h=
tml">TIMEOUT</a> ([i915#1319]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x64-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-6=
4x64-random.html">FAIL</a> ([i915#3444])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-3=
2x10-onscreen.html">SKIP</a> ([fdo#109271]) +55 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-iclb7/igt@kms_cursor_crc@pipe-c-cursor-=
512x512-random.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-=
512x170-offscreen.html">SKIP</a> ([fdo#109278]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_20577/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">FAIL<=
/a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20577/shard-kbl6/igt@kms_cursor_legacy@pipe-d-tortur=
e-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20577/shard-apl2/igt@kms_cursor_legacy@pipe-d-tortur=
e-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-=
kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#155] / [i915=
#180] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_20577/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-inte=
rruptible@b-hdmi-a2.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-apl1/igt@kms_flip@flip-vs-suspend-inter=
ruptible@c-dp1.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
b-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20577/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interru=
ptible@b-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-snb7/igt@kms_flip_scaled_crc@flip-32bpp=
-ytileccs-to-64bpp-ytile.html">SKIP</a> ([fdo#109271]) +397 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-skl3/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-skl3/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-pri-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +68 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-pri-indfb-multidraw:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-glk6/igt@kms_frontbuffer_tracking@fbcps=
r-2p-pri-indfb-multidraw.html">SKIP</a> ([fdo#109271]) +14 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-iclb5/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109280]) +3 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-sk=
l1/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20577/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-al=
pha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20577/shard-kbl6/igt@kms_plane_alpha_blend@pipe-a-al=
pha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-a-tiling-yf:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-glk5/igt@kms_plane_multiple@atomic-pipe-a-tiling-yf.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20577/shard-glk7/igt@kms_plane_multiple@atomic-pipe-a-tiling-yf.html">=
FAIL</a> ([i915#1779])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20577/shard-kbl1/igt@kms_psr2_sf@overlay-plane-updat=
e-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658]) +3 similar issue=
s</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20577/shard-iclb7/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-1.html">SKIP</a> ([i915#658])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20577/shard-glk6/igt@kms_psr2_sf@overlay-plane-updat=
e-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-apl7/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +3 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-skl3/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-iclb2/igt@kms_psr@psr2_basic.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-iclb6/=
igt@kms_psr@psr2_basic.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu=
.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-apl1/igt@kms_sysfs_edid_timing.html">FA=
IL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-kbl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_20577/shard-kbl7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html">DM=
ESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-apl7/igt@kms_writeback@writeback-pixel-=
formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-ctx-flip-detection:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-iclb7/igt@nouveau_crc@pipe-c-ctx-flip-d=
etection.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_double_export:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-iclb7/igt@prime_nv_api@i915_nv_double_e=
xport.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-apl7/igt@sysfs_clients@recycle.html">SK=
IP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-snb5/igt@vgem_basic@unload.html">INCOMP=
LETE</a> ([i915#3744])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-rkl-1/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT=
</a> ([i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20577/shard-rkl-5/igt@gem_eio@in-flight-contexts-10ms.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-tglb3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i9=
15#2369] / [i915#3063] / [i915#3648]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20577/shard-tglb2/igt@gem_eio@unwedge-stress=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20577/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">SKIP</a> (=
[fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20577/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-early-slice@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-skl7/igt@gem_exec_schedule@submit-early-slice@vecs0.htm=
l">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20577/shard-skl8/igt@gem_exec_schedule@submit-early-slice@vecs0.=
html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-rkl-1/igt@gem_mmap_offset@clear.html">FAIL</a> ([i915#3=
160]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0577/shard-rkl-5/igt@gem_mmap_offset@clear.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-glk6/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</=
a> ([i915#1436] / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20577/shard-glk8/igt@gen9_exec_parse@allowed-all.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-rkl-6/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a>=
 ([i915#1021]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20577/shard-rkl-6/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-25:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-skl10/igt@kms_color@pipe-b-ctm-0-25.html">DMESG-WARN</a=
> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20577/shard-skl7/igt@kms_color@pipe-b-ctm-0-25.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.=
html">FAIL</a> ([i915#3444]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_20577/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-128=
x42-offscreen.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-256x85-random:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-iclb3/igt@kms_cursor_crc@pipe-c-cursor-256x85-random.ht=
ml">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20577/shard-iclb6/igt@kms_cursor_crc@pipe-c-cursor-256x85-random.html=
">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_20577/shard-skl8/igt@kms_cursor_legacy@flip-vs-=
cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">=
FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_20577/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.=
html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-glk4/igt@kms_flip@plain-flip-ts-check-interruptible@a-h=
dmi-a1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_20577/shard-glk6/igt@kms_flip@plain-flip-ts-ch=
eck-interruptible@a-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-changes-tiling-yf@edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-skl6/igt@kms_flip_tiling@flip-changes-tiling-yf@edp-1-p=
ipe-a.html">FAIL</a> ([i915#699]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_20577/shard-skl7/igt@kms_flip_tiling@flip-change=
s-tiling-yf@edp-1-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-=
indfb-draw-mmap-wc.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_20577/shard-rkl-6/igt@kms_frontbuffer_tracking@f=
bc-1p-primscrn-spr-indfb-draw-mmap-wc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-skl6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-re=
nder.html">FAIL</a> ([i915#49]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20577/shard-skl7/igt@kms_frontbuffer_tracking@psr-=
rgb101010-draw-render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.htm=
l">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20577/shard-kbl4/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-a.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-iclb8/igt@kms_psr@psr2_dpms.html">SKIP</a> ([fdo#109441=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2057=
7/shard-iclb2/igt@kms_psr@psr2_dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-accuracy-idle:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-glk6/igt@kms_vblank@pipe-c-accuracy-idle.html">FAIL</a>=
 ([i915#43]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20577/shard-glk5/igt@kms_vblank@pipe-c-accuracy-idle.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10334/shard-glk2/igt@perf@polling-parameterized.html">FAIL</a> ([i91=
5#1542]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_20577/shard-glk2/igt@perf@polling-parameterized.html">PASS</a></p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10334/shard-skl4/igt@perf@polling-parameterized.html">FAIL</a> ([i91=
5#1542]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_20577/shard-skl4/igt@perf@polling-parameterized.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-skl10/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (=
[i915#1982] / [i915#262]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_20577/shard-skl10/igt@perf_pmu@module-unload.html">PASS<=
/a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-tglb2/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL=
</a> ([i915#2849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20577/shard-tglb3/igt@gem_exec_fair@basic-none-solo@rcs0.html">=
FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 ([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20577/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a>=
 ([i915#2680])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html">SK=
IP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_20577/shard-iclb6/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.ht=
ml">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
2.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20577/shard-iclb2/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-2.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-kbl2/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10334/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-kbl2/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10334/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-kbl1/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0334/shard-kbl1/igt@runner@aborted.html">FAIL</a>) ([i915#1436] / [i915#180=
] / [i915#1814] / [i915#2505] / [i915#2722] / [i915#3002] / [i915#3363] / [=
i915#3744]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20577/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-kbl3/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20577/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-kbl3/igt@runner=
@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20577/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-kbl7/igt@run=
ner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20577/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-kbl7/igt=
@runner@aborted.html">FAIL</a>) ([i915#180] / [i915#1814] / [i915#2722] / [=
i915#3002] / [i915#3363] / [i915#3744] / [i915#602] / [i915#92])</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10334/shard-iclb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10334/shard-iclb6/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10334/shard-iclb8/igt@runner@aborted.html">FAIL</a>) ([i915#1814] / =
[i915#2722] / [i915#3002] / [i915#3744]) -&gt; (<a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_20577/shard-iclb4/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20577/shard-iclb1/igt@runner@aborted.html">FAIL</a>) ([i915#2722] / [i915#3=
002] / [i915#3744])</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10334/shard-apl8/igt@runner@aborted.html">FAIL</a> ([i915#2722] / [i=
915#3363] / [i915#3744]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_20577/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-apl3/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_20577/shard-apl1/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/shard-ap=
l2/igt@runner@aborted.html">FAIL</a>) ([fdo#109271] / [i915#180] / [i915#18=
14] / [i915#2722] / [i915#3363] / [i915#3744])</p>
</li>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10334/shard-snb6/igt@runner@aborted.html">FAIL</a> ([i915#3002]) -&g=
t; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20577/sha=
rd-snb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://">FAIL</a>) (=
[i915#2722] / [i915#3002] / [i915#3744])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============1731394577492173483==--

--===============0047500764==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0047500764==--
