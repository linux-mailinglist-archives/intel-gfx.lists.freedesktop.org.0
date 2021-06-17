Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FAA3ABF50
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jun 2021 01:23:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC75C6E82A;
	Thu, 17 Jun 2021 23:23:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E716A6E0BC;
 Thu, 17 Jun 2021 23:23:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D8F02AA0EB;
 Thu, 17 Jun 2021 23:23:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Date: Thu, 17 Jun 2021 23:23:37 -0000
Message-ID: <162397221785.3752.12213620501618470306@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210617211225.13549-1-anusha.srivatsa@intel.com>
In-Reply-To: <20210617211225.13549-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgUGlw?=
 =?utf-8?q?e_DMC_bits_+_PSR_fix?=
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
Content-Type: multipart/mixed; boundary="===============1213841712=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1213841712==
Content-Type: multipart/alternative;
 boundary="===============9170060777594217346=="

--===============9170060777594217346==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Pipe DMC bits + PSR fix
URL   : https://patchwork.freedesktop.org/series/91647/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10239_full -> Patchwork_20403_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20403_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20403_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20403_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-apl:          NOTRUN -> [FAIL][1] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-apl2/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][2] -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  
Known issues
------------

  Here are the changes found in Patchwork_20403_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-apl:          NOTRUN -> [DMESG-WARN][4] ([i915#3002])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-apl3/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#1099]) +4 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-snb2/igt@gem_ctx_persistence@engines-mixed.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [PASS][6] -> [FAIL][7] ([i915#2842])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-glk8/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#2842] / [i915#3468])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-glk3/igt@gem_exec_fair@basic-none@vecs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-glk9/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][10] -> [FAIL][11] ([i915#2842]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][12] ([i915#2842])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_params@secure-non-root:
    - shard-iclb:         NOTRUN -> [SKIP][13] ([fdo#112283])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@gem_exec_params@secure-non-root.html

  * igt@gem_huc_copy@huc-copy:
    - shard-kbl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#2190])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-kbl3/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@big-copy-odd:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#307])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-glk2/igt@gem_mmap_gtt@big-copy-odd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-glk9/igt@gem_mmap_gtt@big-copy-odd.html

  * igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][17] ([i915#768])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html

  * igt@gem_vm_create@destroy-race:
    - shard-tglb:         NOTRUN -> [TIMEOUT][18] ([i915#2795])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-tglb7/igt@gem_vm_create@destroy-race.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-tglb:         NOTRUN -> [SKIP][19] ([fdo#109289]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-tglb7/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@i915_module_load@reload:
    - shard-skl:          [PASS][20] -> [DMESG-WARN][21] ([i915#1982]) +2 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl7/igt@i915_module_load@reload.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-skl4/igt@i915_module_load@reload.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-skl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#658])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-skl3/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         NOTRUN -> [WARN][23] ([i915#2684])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-skl:          NOTRUN -> [SKIP][24] ([fdo#109271]) +36 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-skl6/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][25] ([fdo#110725] / [fdo#111614])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-glk:          [PASS][26] -> [DMESG-WARN][27] ([i915#118] / [i915#95]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-glk1/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-glk3/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
    - shard-iclb:         [PASS][28] -> [FAIL][29] ([i915#3601])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-iclb7/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-iclb4/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
    - shard-iclb:         [PASS][30] -> [DMESG-WARN][31] ([i915#3621])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-iclb5/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-iclb1/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][32] ([fdo#111614])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-tglb7/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-tglb7/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@hdmi-aspect-ratio:
    - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-skl6/igt@kms_chamelium@hdmi-aspect-ratio.html

  * igt@kms_chamelium@hdmi-audio-edid:
    - shard-kbl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-kbl3/igt@kms_chamelium@hdmi-audio-edid.html

  * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
    - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +30 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-apl2/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color_chamelium@pipe-c-ctm-green-to-red:
    - shard-snb:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +16 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-snb2/igt@kms_color_chamelium@pipe-c-ctm-green-to-red.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          NOTRUN -> [TIMEOUT][39] ([i915#1319])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-apl6/igt@kms_content_protection@atomic.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109278] / [fdo#109279]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][41] -> [INCOMPLETE][42] ([i915#2405] / [i915#300])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x32-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][43] ([i915#3319])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-32x32-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][44] ([fdo#109278]) +7 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
    - shard-snb:          NOTRUN -> [SKIP][45] ([fdo#109271]) +275 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-snb2/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
    - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109274] / [fdo#109278])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([i915#2346] / [i915#533])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-apl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#533]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-apl3/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][50] -> [FAIL][51] ([i915#79])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@b-dp1:
    - shard-apl:          [PASS][52] -> [DMESG-WARN][53] ([i915#180])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-apl3/igt@kms_flip@flip-vs-suspend@b-dp1.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-apl1/igt@kms_flip@flip-vs-suspend@b-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][54] -> [DMESG-WARN][55] ([i915#180]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#2642])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-apl7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_flip_tiling@flip-yf-tiled:
    - shard-tglb:         NOTRUN -> [SKIP][57] ([fdo#111615])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-tglb7/igt@kms_flip_tiling@flip-yf-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-render:
    - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109280]) +7 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-kbl:          NOTRUN -> [SKIP][59] ([fdo#109271]) +85 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-kbl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-blt:
    - shard-tglb:         NOTRUN -> [SKIP][60] ([fdo#111825]) +10 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-tglb7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][61] -> [FAIL][62] ([i915#1188])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][63] ([i915#1187])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-kbl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#533]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-kbl3/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][65] ([fdo#108145] / [i915#265])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][66] ([fdo#108145] / [i915#265]) +4 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][67] ([i915#265]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
    - shard-kbl:          NOTRUN -> [FAIL][68] ([i915#265])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][69] -> [FAIL][70] ([fdo#108145] / [i915#265])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][71] ([fdo#108145] / [i915#265])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-iclb:         NOTRUN -> [SKIP][72] ([i915#658]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
    - shard-kbl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#658]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-kbl2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
    - shard-tglb:         NOTRUN -> [SKIP][74] ([i915#2920])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-tglb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#658]) +6 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-apl1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         NOTRUN -> [SKIP][76] ([fdo#109441])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][77] -> [SKIP][78] ([fdo#109441]) +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#2437]) +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-apl6/igt@kms_writeback@writeback-check-output.html
    - shard-kbl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#2437])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-kbl2/igt@kms_writeback@writeback-check-output.html
    - shard-tglb:         NOTRUN -> [SKIP][81] ([i915#2437])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-tglb7/igt@kms_writeback@writeback-check-output.html

  * igt@nouveau_crc@pipe-a-source-rg:
    - shard-iclb:         NOTRUN -> [SKIP][82] ([i915#2530])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@nouveau_crc@pipe-a-source-rg.html

  * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
    - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271]) +293 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-apl2/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html

  * igt@nouveau_crc@pipe-b-source-outp-inactive:
    - shard-tglb:         NOTRUN -> [SKIP][84] ([i915#2530])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-tglb7/igt@nouveau_crc@pipe-b-source-outp-inactive.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][85] -> [FAIL][86] ([i915#1542])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl1/igt@perf@polling-parameterized.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-skl8/igt@perf@polling-parameterized.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#109289]) +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@perf@unprivileged-single-ctx-counters.html

  * igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#109291])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name.html

  * igt@prime_vgem@coherency-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][89] ([fdo#109292])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@prime_vgem@coherency-gtt.html

  * igt@sysfs_clients@create:
    - shard-apl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#2994]) +2 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-apl2/igt@sysfs_clients@create.html
    - shard-kbl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#2994])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-kbl6/igt@sysfs_clients@create.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][92] ([i915#2842]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [SKIP][94] ([fdo#109271]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-iclb:         [FAIL][96] ([i915#2842]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-iclb7/igt@gem_exec_fair@basic-pace@vecs0.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-iclb4/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding:
    - shard-skl:          [FAIL][98] ([i915#3444]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-apl:          [DMESG-WARN][100] ([i915#180]) -> [PASS][101] +4 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][102] ([fdo#108145] / [i915#265]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][104] ([fdo#109441]) -> [PASS][105] +2 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-iclb6/igt@kms_psr@psr2_no_drrs.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][106] ([i915#180] / [i915#295]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-apl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][108] ([i915#180]) -> [PASS][109] +2 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-kbl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][110] ([i915#198] / [i915#2405]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl8/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-skl3/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@prime_vgem@sync@vcs0:
    - shard-skl:          [INCOMPLETE][112] ([i915#409]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl6/igt@prime_vgem@sync@vcs0.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-skl6/igt@prime_vgem@sync@vcs0.html

  
#### Warnings ####

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-iclb:         [SKIP][114] ([i915#658]) -> [SKIP][115] ([i915#2920]) +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-iclb6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-1:
    - shard-iclb:         [SKIP][116] ([i915#2920]) -> [SKIP][117] ([i915#658]) +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-iclb6/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#602] / [i915#92]) -> ([FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127]) ([i915#180] / [i915#2505] / [i915#3002] / [i915#3363] / [i915#92])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-kbl1/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-kbl4/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-kbl4/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-kbl3/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-kbl4/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-kbl3/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-kbl6/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-kbl6/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-kbl1/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-kbl1/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][128], [FAIL][129]) ([i915#3002]) -> ([FAIL][130], [FAIL][131], [FAIL][132]) ([i915#1814] / [i915#3002])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-iclb5/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-iclb7/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-iclb1/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-iclb7/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-iclb5/igt@runner@aborted.html
    - shard-apl:          ([FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363]) -> ([FAIL][141], [FAIL][142], [FAIL][143]) ([i915#180] / [i915#3002] / [i915#3363])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-apl2/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-apl6/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-apl7/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-apl6/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-apl6/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-apl3/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-apl8/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-apl7/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-apl8/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-apl3/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-apl1/igt@runner@aborted.html
    - shard-skl:          ([FAIL][144], [FAIL][145], [FAIL][146]) ([i915#2426] / [i915#3002] / [i915#3363] / [i915#409]) -> ([FAIL][147], [FAIL][148]) ([i915#3002] / [i915#3363])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl6/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl5/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl6/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-skl9/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-skl9/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109279]: htt

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/index.html

--===============9170060777594217346==
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
<tr><td><b>Series:</b></td><td>Pipe DMC bits + PSR fix</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/91647/">https://patchwork.freedesktop.org/series/91647/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20403/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20403/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10239_full -&gt; Patchwork_20403_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20403_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_20403_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
20403_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-apl2/igt@gem_exec_reloc@basic-wide-acti=
ve@bcs0.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-iclb3/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-iclb2/=
igt@i915_pm_dc@dc6-psr.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20403_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-apl3/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-snb2/igt@gem_ctx_persistence@engines-mi=
xed.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / [i915#1099]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_204=
03/shard-glk8/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#=
2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-glk3/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/s=
hard-glk9/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842] / =
[i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0403/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i=
915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1=
.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@gem_exec_params@secure-non-ro=
ot.html">SKIP</a> ([fdo#112283])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-kbl3/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-odd:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-glk2/igt@gem_mmap_gtt@big-copy-odd.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-=
glk9/igt@gem_mmap_gtt@big-copy-odd.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@gem_render_copy@yf-tiled-to-v=
ebox-yf-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_vm_create@destroy-race:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-tglb7/igt@gem_vm_create@destroy-race.ht=
ml">TIMEOUT</a> ([i915#2795])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-tglb7/igt@gen7_exec_parse@oacontrol-tra=
cking.html">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-skl7/igt@i915_module_load@reload.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-sk=
l4/igt@i915_module_load@reload.html">DMESG-WARN</a> ([i915#1982]) +2 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-skl3/igt@i915_pm_dc@dc3co-vpb-simulatio=
n.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idl=
e.html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-skl6/igt@kms_big_fb@linear-64bpp-rotate=
-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +36 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@kms_big_fb@x-tiled-32bpp-rota=
te-90.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10239/shard-glk1/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403=
/shard-glk3/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">DMESG-WARN</a> ([i9=
15#118] / [i915#95]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10239/shard-iclb7/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2040=
3/shard-iclb4/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">FAIL</a> ([i915#3=
601])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-iclb5/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0403/shard-iclb1/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html">DMESG-WARN</=
a> ([i915#3621])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-tglb7/igt@kms_big_fb@y-tiled-8bpp-rotat=
e-270.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-tglb7/igt@kms_chamelium@dp-crc-multiple=
.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-aspect-ratio:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-skl6/igt@kms_chamelium@hdmi-aspect-rati=
o.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-audio-edid:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-kbl3/igt@kms_chamelium@hdmi-audio-edid.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@kms_chamelium@hdmi-hpd-with-e=
nabled-mode.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</=
li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-apl2/igt@kms_chamelium@vga-hpd.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / [fdo#111827]) +30 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-green-to-red:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-snb2/igt@kms_color_chamelium@pipe-c-ctm=
-green-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / [fdo#111827]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-apl6/igt@kms_content_protection@atomic.=
html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@kms_cursor_crc@pipe-a-cursor-=
512x512-offscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"htt">fdo#109279</a>) +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0403/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">INCOMPLETE</=
a> ([i915#2405] / [i915#300])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x32-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-=
32x32-offscreen.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@kms_cursor_crc@pipe-d-cursor-=
64x64-sliding.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109278">fdo#109278</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-snb2/igt@kms_cursor_edge_walk@pipe-d-12=
8x128-right-edge.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a>) +275 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@kms_cursor_legacy@2x-cursor-v=
s-flip-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_20403/shard-skl6/igt@kms_cursor_legacy@flip-vs-c=
ursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#5=
33])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-apl3/igt@kms_cursor_legacy@pipe-d-tortu=
re-bo.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20403/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interru=
ptible@a-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-apl3/igt@kms_flip@flip-vs-suspend@b-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/s=
hard-apl1/igt@kms_flip@flip-vs-suspend@b-dp1.html">DMESG-WARN</a> ([i915#18=
0])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/s=
hard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#18=
0]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-apl7/igt@kms_flip_scaled_crc@flip-32bpp=
-ytileccs-to-64bpp-ytile.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-yf-tiled:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-tglb7/igt@kms_flip_tiling@flip-yf-tiled=
.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-pri-indfb-draw-render.html">SKIP</a> ([fdo#109280]) +7 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-kbl3/igt@kms_frontbuffer_tracking@psr-1=
p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +85 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-tglb7/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-pri-indfb-draw-blt.html">SKIP</a> ([fdo#111825]) +10 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-sk=
l7/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@kms_hdr@static-toggle-suspend=
.html">SKIP</a> ([i915#1187])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-kbl3/igt@kms_pipe_crc_basic@nonblocking=
-crc-pipe-d-frame-sequence.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533]) +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-7efc.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D108145">fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D108145">fdo#108145</a> / [i915#265]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20403/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-al=
pha-transparent-fb.html">FAIL</a> ([i915#265]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20403/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-al=
pha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20403/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">=
FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145"=
>fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-c=
onstant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@kms_psr2_sf@overlay-plane-upd=
ate-sf-dmg-area-2.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20403/shard-kbl2/igt@kms_psr2_sf@primary-plane-updat=
e-sf-dmg-area-1.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20403/shard-tglb7/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-1.html">SKIP</a> ([i915#2920])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-apl1/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@kms_psr@psr2_cursor_plane_ono=
ff.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/=
shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> ([fdo#109441]=
) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20403/shard-apl6/igt@kms_writeback@writeback-check-o=
utput.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / [i915#2437]) +2 similar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20403/shard-kbl2/igt@kms_writeback@writeback-check-o=
utput.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / [i915#2437])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20403/shard-tglb7/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> ([i915#2437])</p>
</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-rg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@nouveau_crc@pipe-a-source-rg.=
html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-apl2/igt@nouveau_crc@pipe-b-ctx-flip-sk=
ip-current-frame.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a>) +293 similar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-source-outp-inactive:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-tglb7/igt@nouveau_crc@pipe-b-source-out=
p-inactive.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-skl1/igt@perf@polling-parameterized.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard=
-skl8/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@perf@unprivileged-single-ctx-=
counters.html">SKIP</a> ([fdo#109289]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@prime_nv_api@nv_i915_reimport=
_twice_check_flink_name.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20403/shard-iclb8/igt@prime_vgem@coherency-gtt.html=
">SKIP</a> ([fdo#109292])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20403/shard-apl2/igt@sysfs_clients@create.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo=
#109271</a> / [i915#2994]) +2 similar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20403/shard-kbl6/igt@sysfs_clients@create.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo=
#109271</a> / [i915#2994])</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20403/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10927=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20403/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-iclb7/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a>=
 ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20403/shard-iclb4/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding.htm=
l">FAIL</a> ([i915#3444]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_20403/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x64-=
sliding.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20403/shard-apl2/igt@kms_flip@flip-vs-suspend-int=
erruptible@a-dp1.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1081=
45">fdo#108145</a> / [i915#265]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20403/shard-skl2/igt@kms_plane_alpha_blend@pipe-c=
-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-iclb6/igt@kms_psr@psr2_no_drrs.html">SKIP</a> ([fdo#109=
441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0403/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> +2 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-apl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">DMESG-WARN</a> ([i915#180] / [i915#295]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-apl6/igt@kms_vblank@pipe-a-=
ts-continuation-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html=
">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20403/shard-kbl3/igt@kms_vblank@pipe-b-ts-continuati=
on-suspend.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-skl8/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend=
.html">INCOMPLETE</a> ([i915#198] / [i915#2405]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-skl3/igt@kms_vblank@p=
ipe-c-ts-continuation-dpms-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-skl6/igt@prime_vgem@sync@vcs0.html">INCOMPLETE</a> ([i9=
15#409]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_20403/shard-skl6/igt@prime_vgem@sync@vcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-iclb6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a-3.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20403/shard-iclb2/igt@kms_psr2_sf@overlay-primary-=
update-sf-dmg-area-3.html">SKIP</a> ([i915#2920]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html">SK=
IP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_20403/shard-iclb6/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.ht=
ml">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-kbl4/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10239/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-kbl3/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10239/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-kbl3/igt@runner@aborted.h=
tml">FAIL</a>) ([i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i91=
5#602] / [i915#92]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_20403/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-kbl6/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_20403/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-kbl1/=
igt@runner@aborted.html">FAIL</a>) ([i915#180] / [i915#2505] / [i915#3002] =
/ [i915#3363] / [i915#92])</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-iclb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-iclb7/igt@runner@a=
borted.html">FAIL</a>) ([i915#3002]) -&gt; (<a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20403/shard-iclb1/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2040=
3/shard-iclb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_20403/shard-iclb5/igt@runner@aborted.ht=
ml">FAIL</a>) ([i915#1814] / [i915#3002])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-apl6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10239/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-apl6/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10239/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-apl3/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0239/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-apl7/igt@runner@aborted.html=
">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363]) =
-&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403/=
shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_20403/shard-apl3/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_204=
03/shard-apl1/igt@runner@aborted.html">FAIL</a>) ([i915#180] / [i915#3002] =
/ [i915#3363])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10239/shard-skl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl5/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10239/shard-skl6/igt@runner@aborted.html">FAIL</a>) ([i915#2426] / [i9=
15#3002] / [i915#3363] / [i915#409]) -&gt; (<a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20403/shard-skl9/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20403=
/shard-skl9/igt@runner@aborted.html">FAIL</a>) ([i915#3002] / [i915#3363])<=
/p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============9170060777594217346==--

--===============1213841712==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1213841712==--
