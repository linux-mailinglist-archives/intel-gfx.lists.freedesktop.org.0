Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A106A457B0E
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Nov 2021 05:13:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CBE26EB29;
	Sat, 20 Nov 2021 04:13:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A9B836EB28;
 Sat, 20 Nov 2021 04:13:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A0B08A47EB;
 Sat, 20 Nov 2021 04:13:07 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0314066069313575253=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Sat, 20 Nov 2021 04:13:07 -0000
Message-ID: <163738158762.27214.6207346485465407813@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211119154718.3705-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20211119154718.3705-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/ttm=3A_Async_migration_=28rev6=29?=
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

--===============0314066069313575253==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/ttm: Async migration (rev6)
URL   : https://patchwork.freedesktop.org/series/96798/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10908_full -> Patchwork_21642_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21642_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21642_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21642_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-kbl7/igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge.html

  
Known issues
------------

  Here are the changes found in Patchwork_21642_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][2] ([i915#3002])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-kbl1/igt@gem_create@create-massive.html

  * igt@gem_exec_create@forked@smem:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-glk5/igt@gem_exec_create@forked@smem.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-glk2/igt@gem_exec_create@forked@smem.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][5] ([i915#2842])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb8/igt@gem_exec_fair@basic-none-share@rcs0.html
    - shard-apl:          [PASS][6] -> [SKIP][7] ([fdo#109271])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-apl8/igt@gem_exec_fair@basic-none-share@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-apl6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#2842]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-tglb:         [PASS][10] -> [FAIL][11] ([i915#2842])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb2/igt@gem_exec_fair@basic-pace@vecs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb7/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_flush@basic-wb-ro-before-default:
    - shard-skl:          [PASS][12] -> [DMESG-WARN][13] ([i915#1982])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl4/igt@gem_exec_flush@basic-wb-ro-before-default.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl9/igt@gem_exec_flush@basic-wb-ro-before-default.html

  * igt@gem_exec_params@no-vebox:
    - shard-tglb:         NOTRUN -> [SKIP][14] ([fdo#109283])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb8/igt@gem_exec_params@no-vebox.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-tglb:         NOTRUN -> [SKIP][15] ([i915#4270])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb8/igt@gem_pxp@create-regular-context-2.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-tglb:         NOTRUN -> [SKIP][16] ([i915#2856])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb5/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [PASS][17] -> [INCOMPLETE][18] ([i915#3921])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-snb2/igt@i915_selftest@live@hangcheck.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-snb5/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#456] / [i915#750])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb7/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_async_flips@crc:
    - shard-skl:          NOTRUN -> [FAIL][21] ([i915#4272])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl9/igt@kms_async_flips@crc.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][22] ([fdo#111614])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb5/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-skl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#3777])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-tglb:         NOTRUN -> [SKIP][24] ([fdo#111615]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][25] ([i915#3689] / [i915#3886]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb5/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3886]) +3 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl10/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3886])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-apl4/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-random-ccs-data-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][28] ([fdo#111615] / [i915#3689]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb2/igt@kms_ccs@pipe-b-random-ccs-data-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][29] ([i915#3689])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb8/igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_cdclk@plane-scaling:
    - shard-tglb:         NOTRUN -> [SKIP][30] ([i915#3742])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb5/igt@kms_cdclk@plane-scaling.html

  * igt@kms_chamelium@vga-hpd:
    - shard-tglb:         NOTRUN -> [SKIP][31] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb8/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color_chamelium@pipe-c-ctm-negative:
    - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl10/igt@kms_color_chamelium@pipe-c-ctm-negative.html

  * igt@kms_content_protection@mei_interface:
    - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#111828])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb8/igt@kms_content_protection@mei_interface.html

  * igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][34] ([i915#3359])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x32-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][35] ([i915#3319]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb2/igt@kms_cursor_crc@pipe-c-cursor-32x32-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][36] ([fdo#109279] / [i915#3359]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-bottom-edge:
    - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271]) +5 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-apl4/igt@kms_cursor_edge_walk@pipe-d-128x128-bottom-edge.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][38] -> [INCOMPLETE][39] ([i915#180] / [i915#1982])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-tglb:         [PASS][40] -> [INCOMPLETE][41] ([i915#2411] / [i915#456])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb2/igt@kms_fbcon_fbt@psr-suspend.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb7/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:
    - shard-apl:          [PASS][42] -> [FAIL][43] ([i915#79])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [PASS][44] -> [FAIL][45] ([i915#2122])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][46] -> [DMESG-WARN][47] ([i915#180]) +4 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
    - shard-apl:          [PASS][48] -> [DMESG-WARN][49] ([i915#180]) +4 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          NOTRUN -> [DMESG-WARN][50] ([i915#180])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-apl4/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][51] -> [INCOMPLETE][52] ([i915#636])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-skl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#2672])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][54] ([fdo#109271]) +85 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-pwrite:
    - shard-kbl:          NOTRUN -> [SKIP][55] ([fdo#109271]) +11 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-kbl7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-tglb:         NOTRUN -> [SKIP][56] ([fdo#111825]) +18 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          NOTRUN -> [FAIL][57] ([i915#1188])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl6/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@static-swap:
    - shard-tglb:         NOTRUN -> [SKIP][58] ([i915#1187])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb2/igt@kms_hdr@static-swap.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-skl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#533])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl9/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-tglb:         [PASS][60] -> [INCOMPLETE][61] ([i915#456])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
    - shard-skl:          [PASS][62] -> [INCOMPLETE][63] ([i915#198]) +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl9/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][64] ([i915#265])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_lowres@pipe-c-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][65] ([fdo#111615] / [fdo#112054])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb8/igt@kms_plane_lowres@pipe-c-tiling-yf.html

  * igt@kms_plane_lowres@pipe-d-tiling-none:
    - shard-tglb:         NOTRUN -> [SKIP][66] ([i915#3536])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb8/igt@kms_plane_lowres@pipe-d-tiling-none.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-tglb:         NOTRUN -> [SKIP][67] ([i915#2920]) +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-skl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#658])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-tglb:         NOTRUN -> [FAIL][69] ([i915#132] / [i915#3467])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb8/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-tglb:         [PASS][70] -> [INCOMPLETE][71] ([i915#2828] / [i915#456])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-kbl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#2437])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-kbl7/igt@kms_writeback@writeback-fb-id.html

  * igt@nouveau_crc@pipe-c-source-outp-complete:
    - shard-tglb:         NOTRUN -> [SKIP][73] ([i915#2530]) +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb2/igt@nouveau_crc@pipe-c-source-outp-complete.html

  * igt@prime_udl:
    - shard-tglb:         NOTRUN -> [SKIP][74] ([fdo#109291])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb8/igt@prime_udl.html

  * igt@sysfs_clients@split-10:
    - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#2994])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl10/igt@sysfs_clients@split-10.html

  
#### Possible fixes ####

  * igt@fbdev@unaligned-write:
    - {shard-rkl}:        [SKIP][76] ([i915#2582]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@fbdev@unaligned-write.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-6/igt@fbdev@unaligned-write.html

  * igt@feature_discovery@psr1:
    - {shard-rkl}:        [SKIP][78] ([i915#658]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@feature_discovery@psr1.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-6/igt@feature_discovery@psr1.html

  * igt@gem_ctx_persistence@many-contexts:
    - {shard-rkl}:        ([PASS][80], [FAIL][81]) ([i915#2410]) -> [PASS][82]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-4/igt@gem_ctx_persistence@many-contexts.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][83] ([i915#2369] / [i915#3063] / [i915#3648]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb3/igt@gem_eio@unwedge-stress.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-tglb:         [FAIL][85] ([i915#2842]) -> [PASS][86] +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb2/igt@gem_exec_fair@basic-pace@bcs0.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb7/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [FAIL][87] ([i915#2842]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs0.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fence@parallel@bcs0:
    - shard-glk:          [DMESG-WARN][89] ([i915#118]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-glk1/igt@gem_exec_fence@parallel@bcs0.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-glk7/igt@gem_exec_fence@parallel@bcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][91] ([i915#2190]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb3/igt@gem_huc_copy@huc-copy.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][93] ([i915#1436] / [i915#716]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl4/igt@gen9_exec_parse@allowed-single.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl6/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][95] ([i915#454]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc9-dpms:
    - {shard-rkl}:        [FAIL][97] ([i915#4275]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-6/igt@i915_pm_dc@dc9-dpms.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-1/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [DMESG-WARN][99] ([i915#180]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-kbl7/igt@i915_suspend@fence-restore-untiled.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-kbl7/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [FAIL][101] ([i915#2521]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - {shard-rkl}:        [SKIP][103] ([i915#1845]) -> [PASS][104] +17 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_color@pipe-b-ctm-max:
    - {shard-rkl}:        [SKIP][105] ([i915#1149] / [i915#1849] / [i915#4070]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@kms_color@pipe-b-ctm-max.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-6/igt@kms_color@pipe-b-ctm-max.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-random:
    - {shard-rkl}:        [SKIP][107] ([fdo#112022] / [i915#4070]) -> [PASS][108] +3 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque:
    - {shard-rkl}:        ([SKIP][109], [SKIP][110]) ([fdo#112022] / [i915#4070]) -> [PASS][111]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-4/igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge:
    - shard-tglb:         [INCOMPLETE][112] -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb8/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb8/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-legacy:
    - {shard-rkl}:        [SKIP][114] ([fdo#111825] / [i915#4070]) -> [PASS][115] +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@kms_cursor_legacy@cursora-vs-flipa-legacy.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][116] ([i915#2346]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@pipe-c-torture-move:
    - {shard-rkl}:        [SKIP][118] ([i915#4070]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@kms_cursor_legacy@pipe-c-torture-move.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-4/igt@kms_cursor_legacy@pipe-c-torture-move.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled:
    - {shard-rkl}:        [SKIP][120] ([fdo#111314]) -> [PASS][121] +2 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:
    - shard-apl:          [FAIL][122] ([i915#79]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [DMESG-WARN][124] ([i915#180]) -> [PASS][125] +1 similar issue
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - {shard-rkl}:        ([PASS][126], [SKIP][127]) ([i915#4098]) -> [PASS][128] +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:
    - {shard-rkl}:        [SKIP][129] ([i915#1849]) -> [PASS][130] +16 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - {shard-rkl}:        ([SKIP][131], [SKIP][132]) ([i915#1849] / [i915#4098]) -> [PASS][133] +2 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - shard-skl:          [DMESG-WARN][134] ([i915#1982]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-rte.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@kms_invalid_mode@int-max-clock:
    - {shard-rkl}:        ([SKIP][136], [SKIP][137]) ([i915#4278]) -> [PASS][138]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@kms_invalid_mode@int-max-clock.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-4/igt@kms_invalid_mode@int-max-clock.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-6/igt@kms_invalid_mode@int-max-clock.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - {shard-rkl}:        [SKIP][139] ([i915#1849] / [i915#4070]) -> [PASS][140] +1 similar issue
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][141] ([fdo#108145] / [i915#265]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][143] ([fdo#109441]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html
   [144]: https://i

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/index.html

--===============0314066069313575253==
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
<tr><td><b>Series:</b></td><td>drm/i915/ttm: Async migration (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96798/">https://patchwork.freedesktop.org/series/96798/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10908_full -&gt; Patchwork_21642_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21642_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21642_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21642_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge:<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-kbl7/igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21642_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-kbl1/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@forked@smem:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-glk5/igt@gem_exec_create@forked@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-glk2/igt@gem_exec_create@forked@smem.html">DMESG-WARN</a> ([i915#118]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb8/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842])</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-apl8/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-apl6/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP</a> ([fdo#109271])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb2/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb7/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-before-default:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl4/igt@gem_exec_flush@basic-wb-ro-before-default.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl9/igt@gem_exec_flush@basic-wb-ro-before-default.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-vebox:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb8/igt@gem_exec_params@no-vebox.html">SKIP</a> ([fdo#109283])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb8/igt@gem_pxp@create-regular-context-2.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb5/igt@gen9_exec_parse@allowed-all.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-snb2/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-snb5/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#3921])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb6/igt@i915_suspend@fence-restore-tiled2untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb7/igt@i915_suspend@fence-restore-tiled2untiled.html">INCOMPLETE</a> ([i915#456] / [i915#750])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl9/igt@kms_async_flips@crc.html">FAIL</a> ([i915#4272])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb5/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html">SKIP</a> ([fdo#111615]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb5/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl10/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-apl4/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb2/igt@kms_ccs@pipe-b-random-ccs-data-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb8/igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb5/igt@kms_cdclk@plane-scaling.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb8/igt@kms_chamelium@vga-hpd.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-negative:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl10/igt@kms_color_chamelium@pipe-c-ctm-negative.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei_interface:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb8/igt@kms_content_protection@mei_interface.html">SKIP</a> ([fdo#111828])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x32-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb2/igt@kms_cursor_crc@pipe-c-cursor-32x32-rapid-movement.html">SKIP</a> ([i915#3319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen.html">SKIP</a> ([fdo#109279] / [i915#3359]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-bottom-edge:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-apl4/igt@kms_cursor_edge_walk@pipe-d-128x128-bottom-edge.html">SKIP</a> ([fdo#109271]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb2/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb7/igt@kms_fbcon_fbt@psr-suspend.html">INCOMPLETE</a> ([i915#2411] / [i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#180]) +4 similar issues</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#180]) +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-apl4/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html">INCOMPLETE</a> ([i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#109271]) +85 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-kbl7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([fdo#109271]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#111825]) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl6/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb2/igt@kms_hdr@static-swap.html">SKIP</a> ([i915#1187])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl9/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html">INCOMPLETE</a> ([i915#456])</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl9/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html">INCOMPLETE</a> ([i915#198]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb8/igt@kms_plane_lowres@pipe-c-tiling-yf.html">SKIP</a> ([fdo#111615] / [fdo#112054])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-d-tiling-none:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb8/igt@kms_plane_lowres@pipe-d-tiling-none.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html">SKIP</a> ([i915#2920]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb8/igt@kms_psr@psr2_sprite_blt.html">FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">INCOMPLETE</a> ([i915#2828] / [i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-kbl7/igt@kms_writeback@writeback-fb-id.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-outp-complete:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb2/igt@nouveau_crc@pipe-c-source-outp-complete.html">SKIP</a> ([i915#2530]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_udl:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb8/igt@prime_udl.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl10/igt@sysfs_clients@split-10.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@fbdev@unaligned-write.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-6/igt@fbdev@unaligned-write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr1:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@feature_discovery@psr1.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-6/igt@feature_discovery@psr1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-4/igt@gem_ctx_persistence@many-contexts.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html">FAIL</a>) ([i915#2410]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063] / [i915#3648]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb6/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb2/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb7/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@parallel@bcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-glk1/igt@gem_exec_fence@parallel@bcs0.html">DMESG-WARN</a> ([i915#118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-glk7/igt@gem_exec_fence@parallel@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb3/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl4/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1436] / [i915#716]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl6/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-6/igt@i915_pm_dc@dc9-dpms.html">FAIL</a> ([i915#4275]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-1/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-kbl7/igt@i915_suspend@fence-restore-untiled.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-kbl7/igt@i915_suspend@fence-restore-untiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> ([i915#2521]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html">PASS</a> +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-max:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@kms_color@pipe-b-ctm-max.html">SKIP</a> ([i915#1149] / [i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-6/igt@kms_color@pipe-b-ctm-max.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x64-random:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-4/igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque.html">SKIP</a>) ([fdo#112022] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb8/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-tglb8/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-legacy:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@kms_cursor_legacy@cursora-vs-flipa-legacy.html">SKIP</a> ([fdo#111825] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipa-legacy.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-c-torture-move:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@kms_cursor_legacy@pipe-c-torture-move.html">SKIP</a> ([i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-4/igt@kms_cursor_legacy@pipe-c-torture-move.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html">SKIP</a> ([fdo#111314]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html">SKIP</a>) ([i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html">PASS</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a>) ([i915#1849] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-rte:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-rte.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-rte.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@kms_invalid_mode@int-max-clock.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-4/igt@kms_invalid_mode@int-max-clock.html">SKIP</a>) ([i915#4278]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-6/igt@kms_invalid_mode@int-max-clock.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">SKIP</a> ([i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21642/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://i">PASS</a></li>
</ul>
</li>
</ul>

</body>
</html>

--===============0314066069313575253==--
