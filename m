Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4AF533376
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 00:25:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4834610ED11;
	Tue, 24 May 2022 22:25:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 56C4A10ECF8;
 Tue, 24 May 2022 22:25:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 410FBA00A0;
 Tue, 24 May 2022 22:25:06 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3296184757145042071=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 24 May 2022 22:25:06 -0000
Message-ID: <165343110623.14318.11861888407113875352@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1653381821.git.jani.nikula@intel.com>
In-Reply-To: <cover.1653381821.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/edid=3A_expand_on_struct_drm=5Fedid_usage_=28rev2=29?=
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

--===============3296184757145042071==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/edid: expand on struct drm_edid usage (rev2)
URL   : https://patchwork.freedesktop.org/series/104309/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11694_full -> Patchwork_104309v2_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_104309v2_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_color@pipe-b-deep-color:
    - {shard-rkl}:        [SKIP][1] ([i915#4070] / [i915#4098]) -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-rkl-2/igt@kms_color@pipe-b-deep-color.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-rkl-6/igt@kms_color@pipe-b-deep-color.html

  * {igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-1}:
    - {shard-dg1}:        NOTRUN -> [SKIP][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-dg1-17/igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-1.html

  * {igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-1}:
    - shard-glk:          [SKIP][4] ([fdo#109271]) -> [FAIL][5] +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-glk8/igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-1.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-glk4/igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-1.html

  
Known issues
------------

  Here are the changes found in Patchwork_104309v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ccs@block-copy-uncompressed:
    - shard-iclb:         NOTRUN -> [SKIP][6] ([i915#5327])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@gem_ccs@block-copy-uncompressed.html

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#4793])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-skl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-skl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#5784])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-tglb7/igt@gem_eio@kms.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-tglb2/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         NOTRUN -> [SKIP][11] ([i915#4525])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][12] -> [FAIL][13] ([i915#2842]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-glk:          [PASS][14] -> [FAIL][15] ([i915#2842])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fence@basic-wait@bcs0:
    - shard-kbl:          NOTRUN -> [SKIP][16] ([fdo#109271]) +44 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl3/igt@gem_exec_fence@basic-wait@bcs0.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-kbl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#4613])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl3/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-skl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#4613])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-skl6/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@verify:
    - shard-iclb:         NOTRUN -> [SKIP][19] ([i915#4613])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@gem_lmem_swapping@verify.html
    - shard-glk:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#4613])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-glk7/igt@gem_lmem_swapping@verify.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-iclb:         NOTRUN -> [SKIP][21] ([i915#4270])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][22] ([i915#768]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@gem_softpin@evict-snoop:
    - shard-iclb:         NOTRUN -> [SKIP][23] ([fdo#109312])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@gem_softpin@evict-snoop.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-iclb:         NOTRUN -> [SKIP][24] ([i915#3297]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-kbl:          NOTRUN -> [FAIL][25] ([i915#3318])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl3/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-iclb:         NOTRUN -> [SKIP][26] ([i915#2856]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         NOTRUN -> [SKIP][27] ([i915#658])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][28] ([i915#5286]) +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][29] ([fdo#110725] / [fdo#111614]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#3886]) +3 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-skl6/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3886])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-apl3/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#109278] / [i915#3886]) +3 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
    - shard-glk:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3886])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-glk7/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3886])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl6/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-snb:          NOTRUN -> [SKIP][35] ([fdo#109271]) +77 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-snb4/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - shard-snb:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-snb4/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-5:
    - shard-kbl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl6/igt@kms_color_chamelium@pipe-a-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-25:
    - shard-skl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-skl10/igt@kms_color_chamelium@pipe-c-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-5:
    - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109284] / [fdo#111827]) +4 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@kms_color_chamelium@pipe-c-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-glk:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-glk7/igt@kms_color_chamelium@pipe-d-ctm-0-25.html
    - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-iclb:         NOTRUN -> [SKIP][42] ([i915#3116])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@uevent:
    - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109300] / [fdo#111066])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen:
    - shard-iclb:         NOTRUN -> [SKIP][44] ([fdo#109278] / [fdo#109279]) +3 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-32x32-offscreen:
    - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-apl3/igt@kms_cursor_crc@pipe-d-cursor-32x32-offscreen.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge:
    - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109278]) +23 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109274] / [fdo#109278]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-iclb:         [PASS][48] -> [FAIL][49] ([i915#2346])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-iclb4/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-4tiled:
    - shard-iclb:         NOTRUN -> [SKIP][50] ([i915#5287]) +2 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-4tiled.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109274]) +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][52] -> [DMESG-WARN][53] ([i915#180]) +6 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][54] ([i915#3614])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-iclb:         [PASS][55] -> [SKIP][56] ([i915#3701]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:
    - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271]) +109 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-skl10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109280]) +17 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:
    - shard-iclb:         NOTRUN -> [SKIP][59] ([fdo#109289]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#533]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-skl6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#533])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-apl:          [PASS][62] -> [DMESG-WARN][63] ([i915#180]) +2 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][64] -> [FAIL][65] ([fdo#108145] / [i915#265])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-glk:          NOTRUN -> [FAIL][66] ([i915#265])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-glk7/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_cursor@pipe-d-viewport-size-256:
    - shard-glk:          NOTRUN -> [SKIP][67] ([fdo#109271]) +31 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-glk7/igt@kms_plane_cursor@pipe-d-viewport-size-256.html

  * igt@kms_plane_lowres@pipe-b-tiling-x:
    - shard-iclb:         NOTRUN -> [SKIP][68] ([i915#3536])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@kms_plane_lowres@pipe-b-tiling-x.html

  * igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format:
    - shard-iclb:         [PASS][69] -> [SKIP][70] ([i915#5176]) +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-iclb3/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html

  * igt@kms_plane_scaling@downscale-with-rotation-factor-0-75@pipe-c-edp-1-downscale-with-rotation:
    - shard-iclb:         NOTRUN -> [SKIP][71] ([i915#5176]) +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@kms_plane_scaling@downscale-with-rotation-factor-0-75@pipe-c-edp-1-downscale-with-rotation.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-skl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#658]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-skl10/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][73] -> [SKIP][74] ([fdo#109441]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb4/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#109441])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_vrr@flip-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][76] ([i915#3555]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@kms_vrr@flip-dpms.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-skl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#2437])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-skl6/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@pipe-d-source-rg:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#109278] / [i915#2530])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@nouveau_crc@pipe-d-source-rg.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [PASS][79] -> [FAIL][80] ([i915#5639])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-glk5/igt@perf@polling-parameterized.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-glk2/igt@perf@polling-parameterized.html

  * igt@prime_nv_pcopy@test3_3:
    - shard-iclb:         NOTRUN -> [SKIP][81] ([fdo#109291]) +3 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@prime_nv_pcopy@test3_3.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-iclb:         NOTRUN -> [SKIP][82] ([fdo#109295])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@prime_vgem@fence-flip-hang.html

  * igt@syncobj_timeline@invalid-transfer-non-existent-point:
    - shard-skl:          NOTRUN -> [DMESG-WARN][83] ([i915#5098])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-skl8/igt@syncobj_timeline@invalid-transfer-non-existent-point.html

  * igt@sysfs_clients@fair-0:
    - shard-skl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#2994]) +2 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-skl6/igt@sysfs_clients@fair-0.html

  * igt@sysfs_clients@fair-7:
    - shard-kbl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#2994])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl6/igt@sysfs_clients@fair-7.html

  * igt@sysfs_clients@pidname:
    - shard-glk:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#2994])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-glk7/igt@sysfs_clients@pidname.html

  * igt@sysfs_clients@split-10:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([i915#2994]) +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@sysfs_clients@split-10.html

  
#### Possible fixes ####

  * igt@fbdev@unaligned-write:
    - {shard-rkl}:        [SKIP][88] ([i915#2582]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-rkl-2/igt@fbdev@unaligned-write.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-rkl-6/igt@fbdev@unaligned-write.html

  * igt@gem_busy@close-race:
    - shard-glk:          [INCOMPLETE][90] ([i915#5753]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-glk2/igt@gem_busy@close-race.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-glk7/igt@gem_busy@close-race.html

  * igt@gem_ctx_persistence@many-contexts:
    - shard-iclb:         [INCOMPLETE][92] -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-iclb7/igt@gem_ctx_persistence@many-contexts.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@in-flight-10ms:
    - shard-tglb:         [TIMEOUT][94] ([i915#3063]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-tglb3/igt@gem_eio@in-flight-10ms.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-tglb2/igt@gem_eio@in-flight-10ms.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-skl:          [TIMEOUT][96] ([i915#3063]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-skl10/igt@gem_eio@in-flight-contexts-immediate.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-skl8/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [TIMEOUT][98] ([i915#3070]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-iclb3/igt@gem_eio@unwedge-stress.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb3/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - {shard-tglu}:       [FAIL][100] ([i915#2842]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-tglu-6/igt@gem_exec_fair@basic-none-share@rcs0.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-tglu-8/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][102] ([i915#2842]) -> [PASS][103] +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
    - shard-glk:          [FAIL][104] ([i915#2842]) -> [PASS][105] +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-glk1/igt@gem_exec_fair@basic-none@vcs0.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-glk4/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [FAIL][106] ([i915#2842]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-iclb:         [FAIL][108] ([i915#2842]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-iclb4/igt@gem_exec_fair@basic-pace@vecs0.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - {shard-rkl}:        [SKIP][110] ([i915#3012]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-rkl-1/igt@i915_pm_backlight@fade_with_suspend.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-rkl-6/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [SKIP][112] ([i915#4281]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb2/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - {shard-rkl}:        [SKIP][114] ([i915#1397]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-rkl-4/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-kbl:          [FAIL][116] ([i915#2521]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-kbl1/igt@kms_async_flips@alternate-sync-async-flip.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl3/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - {shard-rkl}:        [SKIP][118] ([i915#1845] / [i915#4098]) -> [PASS][119] +38 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-rkl-2/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-rkl-6/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - {shard-rkl}:        [SKIP][120] ([i915#1149] / [i915#4070] / [i915#4098]) -> [PASS][121] +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-rkl-4/igt@kms_color@pipe-a-ctm-0-25.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          [DMESG-WARN][122] ([i915#180]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:
    - {shard-rkl}:        [SKIP][124] ([fdo#112022] / [i915#4070]) -> [PASS][125] +14 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-rkl-2/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
    - {shard-rkl}:        [SKIP][126] ([fdo#111825] / [i915#4070]) -> [PASS][127] +4 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled:
    - {shard-rkl}:        [SKIP][128] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][129] +6 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled:
    - {shard-rkl}:        [SKIP][130] ([i915#4098] / [i915#4369]) -> [PASS][131] +2 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:
    - {shard-rkl}:        [SKIP][132] ([i915#1849] / [i915#4098]) -> [PASS][133] +29 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][134] ([i915#180]) -> [PASS][135] +3 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_invalid_mode@int-max-clock:
    - {shard-rkl}:        [SKIP][136] ([i915#4278]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-rkl-2/igt@kms_invalid_mode@int-max-clock.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-rkl-6/igt@kms_invalid_mode@int-max-clock.html

  * igt@kms_plane@plane-position-hole@pipe-b-planes:
    - {shard-rkl}:        [SKIP][138] ([i915#1849] / [i915#3558]) -> [PASS][139] +3 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-rkl-2/igt@kms_plane@plane-position-hole@pipe-b-planes.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-rkl-6/igt@kms_plane@plane-position-hole@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - {shard-rkl}:        [SKIP][140] ([i915#4070] / [i915#4098]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-rkl-4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
    - {shard-rkl}:        [SKIP][142] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][143] +6 similar issues
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html

  * igt@kms_plane_cursor@pipe-c-overlay-size-64:
    - {shard-dg1}:        [SKIP][144] ([i915#1836]) -> [PASS][145] +3 similar issues
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-dg1-19/igt@kms_plane_cursor@pipe-c-overlay-size-64.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-dg1-18/igt@kms_plane_cursor@pipe-c-overlay-size-64.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
    - {shard-rkl}:        [SKIP][146] ([i915#3558] / [i915#4070]) -> [PASS][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-rkl-1/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html

  * igt@kms_prime@basic-crc@second-to-first:
    - {shard-rkl}:        [SKIP][148] ([i915#1849]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-rkl-2/igt@kms_prime@basic-crc@second-to-first.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-rkl-6/igt@kms_prime@basic-crc@second-to-first.html

  * igt@kms_properties@connector-properties-legacy:
    - {shard-dg1}:        [FAIL][150] -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-dg1-19/igt@kms_properties@connector-properties-legacy.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-dg1-18/igt@kms_properties@connector-properties-legacy.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][152] ([fdo#109441]) -> [PASS][153] +1 similar issue
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_psr@sprite_plane_move:
    - {shard-rkl}:        [SKIP][154] ([i915#1072]) -> [PASS][155] +3 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-rkl-1/igt@kms_psr@sprite_plane_move.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-rkl-6/igt@kms_psr@sprite_plane_move.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - {shard-rkl}:        [SKIP][156] ([i915#5461]) -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-rkl-4/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_universal_plane@universal-plane-pipe-a-functional:
    - {shard-rkl}:        [SKIP][158] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][159]
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-rkl-1/igt@kms_universal_plane@universal-plane-pipe-a-functional.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-rkl-6/igt@kms_universal_plane@universal-plane-pipe-a-functional.html

  * igt@perf@polling-small-buf:
    - {shard-rkl}:        [FAIL][160] ([i915#1722]) -> [PASS][161]
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-rkl-1/igt@perf@polling-small-buf.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-rkl-6/igt@perf@polling-small-buf.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [SKIP][162] ([i915#4525]) -> [DMESG-WARN][163] ([i915#5614]) +1 similar issue
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-iclb5/igt@gem_exec_balancer@parallel.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb1/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [DMESG-WARN][164] ([i915#5614]) -> [SKIP][165] ([i915#4525])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][166] ([i915#2684]) -> [FAIL][167] ([i915#2680] / [i915#2684])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-skl:          [SKIP][168] ([fdo#109271] / [i915#1888] / [i915#3886]) -> [SKIP][169] ([fdo#109271] / [i915#3886])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-skl2/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-skl4/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs:
    - shard-skl:          [SKIP][170] ([fdo#109271] / [i915#1888]) -> [SKIP][171] ([fdo#109271]) +1 similar issue
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-skl2/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-skl4/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][172] ([i915#2920]) -> [SKIP][173] ([fdo#111068] / [i915#658])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-iclb:         [SKIP][174] ([i915#658]) -> [SKIP][175] ([i915#2920])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][176], [FAIL][177], [FAIL][178], [FAIL][179], [FAIL][180], [FAIL][181], [FAIL][182], [FAIL][183], [FAIL][184], [FAIL][185], [FAIL][186], [FAIL][187]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][188], [FAIL][189], [FAIL][190], [FAIL][191], [FAIL][192], [FAIL][193], [FAIL][194], [FAIL][195], [FAIL][196], [FAIL][197], [FAIL][198], [FAIL][199], [FAIL][200], [FAIL][201], [FAIL][202]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-kbl4/igt@runner@aborted.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-kbl4/igt@runner@aborted.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-kbl4/igt@runner@aborted.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-kbl7/igt@runner@aborted.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-kbl1/igt@runner@aborted.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-kbl1/igt@runner@aborted.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-kbl7/igt@runner@aborted.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-kbl1/igt@runner@aborted.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-kbl1/igt@runner@aborted.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-kbl3/igt@runner@aborted.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-kbl1/igt@runner@aborted.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-kbl1/igt@runner@aborted.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl7/igt@runner@aborted.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl1/igt@runner@aborted.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl1/igt@runner@aborted.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl4/igt@runner@aborted.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl3/igt@runner@aborted.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl1/igt@runner@aborted.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl3/igt@runner@aborted.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl1/igt@runner@aborted.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl4/igt@runner@aborted.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl6/igt@runner@aborted.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl1/igt@runner@aborted.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl4/igt@runner@aborted.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl1/igt@runner@aborted.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl4/igt@runner@aborted.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl4/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
  [fdo#111066]: https://bugs.freedesktop.org/show_bug.cgi?id=111066
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2232]: https://gitlab.freedesktop.org/drm/intel/issues/2232
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2680]: https://gitlab.freedesktop.org/drm/intel/issues/2680
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3614]: https://gitlab.freedesktop.org/drm/intel/issues/3614
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3987]: https://gitlab.freedesktop.org/drm/intel/issues/3987
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4793]: https://gitlab.freedesktop.org/drm/intel/issues/4793
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
  [i915#4929]: https://gitlab.freedesktop.org/drm/intel/issues/4929
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5030]: https://gitlab.freedesktop.org/drm/intel/issues/5030
  [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#5721]: https://gitlab.freedesktop.org/drm/intel/issues/5721
  [i915#5753]: https://gitlab.freedesktop.org/drm/intel/issues/5753
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768


Build changes
-------------

  * Linux: CI_DRM_11694 -> Patchwork_104309v2

  CI-20190529: 20190529
  CI_DRM_11694: ba77f2196526253b70968472d78ced6dd09bdd4d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6486: f91af0ee70ed290890d122ece6b3857222f985b0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_104309v2: ba77f2196526253b70968472d78ced6dd09bdd4d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/index.html

--===============3296184757145042071==
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
<tr><td><b>Series:</b></td><td>drm/edid: expand on struct drm_edid usage (r=
ev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/104309/">https://patchwork.freedesktop.org/series/104309/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104309v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_104309v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11694_full -&gt; Patchwork_104309v=
2_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
104309v2_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_color@pipe-b-deep-color:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-rkl-2/igt@kms_color@pipe-b-deep-color.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#=
4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_104309v2/shard-rkl-6/igt@kms_color@pipe-b-deep-color.html">INCOMPLETE</a=
></li>
</ul>
</li>
<li>
<p>{igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-1}:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-dg1-17/igt@kms_hdr@bpc-switch-suspen=
d@pipe-a-hdmi-a-1.html">SKIP</a></li>
</ul>
</li>
<li>
<p>{igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-1}:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-glk8/igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-1.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#=
109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_104309v2/shard-glk4/igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-1.html">FAIL<=
/a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_104309v2_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ccs@block-copy-uncompressed:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@gem_ccs@block-copy-uncompr=
essed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/5327">i915#5327</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-skl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_104309v2/shard-skl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html">INCOM=
PLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4793"=
>i915#4793</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-tglb7/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-tglb2/igt@=
gem_eio@kms.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@gem_exec_balancer@parallel=
-ordering.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11694/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4309v2/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) +1 similar issue</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11694/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104=
309v2/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a=
>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait@bcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-kbl3/igt@gem_exec_fence@basic-wait@b=
cs0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +44 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-kbl3/igt@gem_lmem_swapping@heavy-ver=
ify-random-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-skl6/igt@gem_lmem_swapping@parallel-=
random-verify.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@gem_lmem_swapping@verify.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/46=
13">i915#4613</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104309v2/shard-glk7/igt@gem_lmem_swapping@verify.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4613">i915#4613</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@gem_pxp@verify-pxp-stale-b=
uf-optout-execution.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@gem_render_copy@x-tiled-to=
-vebox-yf-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/768">i915#768</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@gem_softpin@evict-snoop.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
312">fdo#109312</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@gem_userptr_blits@unsync-u=
nmap-cycles.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3297">i915#3297</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-kbl3/igt@gem_userptr_blits@vma-merge=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3318">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@gen9_exec_parse@allowed-si=
ngle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2856">i915#2856</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simul=
ation.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@kms_big_fb@4-tiled-32bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/5286">i915#5286</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@kms_big_fb@x-tiled-8bpp-ro=
tate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D110725">fdo#110725</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111614">fdo#111614</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-skl6/igt@kms_ccs@pipe-b-bad-aux-stri=
de-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-apl3/igt@kms_ccs@pipe-b-bad-pixel-fo=
rmat-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@kms_ccs@pipe-b-random-ccs-d=
ata-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar issues<=
/p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104309v2/shard-glk7/igt@kms_ccs@pipe-b-random-ccs-da=
ta-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-kbl6/igt@kms_ccs@pipe-c-bad-pixel-fo=
rmat-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-snb4/igt@kms_ccs@pipe-c-bad-pixel-fo=
rmat-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +77 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-snb4/igt@kms_chamelium@hdmi-hpd-fast=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111827">fdo#111827</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-kbl6/igt@kms_color_chamelium@pipe-a-=
ctm-0-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-skl10/igt@kms_color_chamelium@pipe-c=
-ctm-0-25.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111827">fdo#111827</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-5:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@kms_color_chamelium@pipe-c=
-ctm-0-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104309v2/shard-glk7/igt@kms_color_chamelium@pipe-d-c=
tm-0-25.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@kms_color_chamelium@pipe-d-=
ctm-0-25.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109278">fdo#109278</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@kms_content_protection@dp-=
mst-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@kms_content_protection@uev=
ent.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109300">fdo#109300</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111066">fdo#111066</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@kms_cursor_crc@pipe-b-curs=
or-512x512-onscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109279">fdo#109279</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-32x32-offscreen:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-apl3/igt@kms_cursor_crc@pipe-d-curso=
r-32x32-offscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@kms_cursor_edge_walk@pipe-=
d-128x128-top-edge.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109278">fdo#109278</a>) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@kms_cursor_legacy@cursorb-=
vs-flipb-varying-size.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109278">fdo#109278</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-iclb4/igt@kms_cursor_legacy@flip-vs-cursor-varying-size=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_104309v2/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-=
size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-4tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@kms_draw_crc@draw-method-x=
rgb2101010-mmap-wc-4tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5287">i915#5287</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@kms_flip@2x-flip-vs-rmfb-i=
nterruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109274">fdo#109274</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_104309v2/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/180">i915#180</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-=
dp1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3614">i915#3614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp=
-ytile-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_104309v2/shard-iclb2/igt@kms_flip_scaled_crc@fli=
p-32bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3701">i915#3701</a>) +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-skl10/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-indfb-msflip-blt.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +109 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +17 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@kms_pipe_b_c_ivb@pipe-b-dp=
ms-off-modeset-pipe-c.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109289">fdo#109289</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-skl6/igt@kms_pipe_crc_basic@compare-=
crc-sanitycheck-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/533">i915#533</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-kbl6/igt@kms_pipe_crc_basic@suspend-=
read-crc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend@p=
ipe-b-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_104309v2/shard-apl2/igt@kms_plane@plane-panning-bottom=
-right-suspend@pipe-b-planes.html">DMESG-WARN</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/180">i915#180</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_104309v2/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1081=
45">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-glk7/igt@kms_plane_alpha_blend@pipe-=
b-alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-d-viewport-size-256:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-glk7/igt@kms_plane_cursor@pipe-d-vie=
wport-size-256.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a>) +31 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@kms_plane_lowres@pipe-b-ti=
ling-x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3536">i915#3536</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-=
1-downscale-with-pixel-format:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-iclb3/igt@kms_plane_scaling@downscale-with-pixel-format=
-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard=
-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-=
edp-1-downscale-with-pixel-format.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@downscale-with-rotation-factor-0-75@pipe-c-edp-1-d=
ownscale-with-rotation:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@kms_plane_scaling@downscal=
e-with-rotation-factor-0-75@pipe-c-edp-1-downscale-with-rotation.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915=
#5176</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-skl10/igt@kms_psr2_sf@cursor-plane-u=
pdate-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/s=
hard-iclb4/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@kms_psr@psr2_no_drrs.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441=
">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@kms_vrr@flip-dpms.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i9=
15#3555</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-skl6/igt@kms_writeback@writeback-pix=
el-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-rg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-iclb7/igt@nouveau_crc@pipe-d-source-=
rg.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109278">fdo#109278</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-glk5/igt@perf@polling-parameterized.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/sh=
ard-glk2/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_3:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@prime_nv_pcopy@test3_3.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
91">fdo#109291</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@prime_vgem@fence-flip-hang=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109295">fdo#109295</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-transfer-non-existent-point:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-skl8/igt@syncobj_timeline@invalid-tr=
ansfer-non-existent-point.html">DMESG-WARN</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5098">i915#5098</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-skl6/igt@sysfs_clients@fair-0.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-kbl6/igt@sysfs_clients@fair-7.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-glk7/igt@sysfs_clients@pidname.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-iclb8/igt@sysfs_clients@split-10.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/299=
4">i915#2994</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-rkl-2/igt@fbdev@unaligned-write.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/=
shard-rkl-6/igt@fbdev@unaligned-write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_busy@close-race:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-glk2/igt@gem_busy@close-race.html">INCOMPLETE</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5753">i915#5753</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309=
v2/shard-glk7/igt@gem_busy@close-race.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-iclb7/igt@gem_ctx_persistence@many-contexts.html">INCOM=
PLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_104309v2/shard-iclb8/igt@gem_ctx_persistence@many-contexts.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-10ms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-tglb3/igt@gem_eio@in-flight-10ms.html">TIMEOUT</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10430=
9v2/shard-tglb2/igt@gem_eio@in-flight-10ms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-skl10/igt@gem_eio@in-flight-contexts-immediate.html">TI=
MEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063"=
>i915#3063</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_104309v2/shard-skl8/igt@gem_eio@in-flight-contexts-immediate.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-iclb3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3070">i915#3070</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10430=
9v2/shard-iclb3/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-tglu-6/igt@gem_exec_fair@basic-none-share@rcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i9=
15#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_104309v2/shard-tglu-8/igt@gem_exec_fair@basic-none-share@rcs0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11694/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104=
309v2/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +1 simila=
r issue</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11694/shard-glk1/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104=
309v2/shard-glk4/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +1 simila=
r issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
04309v2/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-iclb4/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#284=
2</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
104309v2/shard-iclb7/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade_with_suspend:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-rkl-1/igt@i915_pm_backlight@fade_with_suspend.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3012">i91=
5#3012</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_104309v2/shard-rkl-6/igt@i915_pm_backlight@fade_with_suspend.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4281">i915#4281</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/=
shard-iclb2/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-rkl-4/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397"=
>i915#1397</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_104309v2/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-kbl1/igt@kms_async_flips@alternate-sync-async-flip.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2521=
">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_104309v2/shard-kbl3/igt@kms_async_flips@alternate-sync-async-flip=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-rkl-2/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1=
845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">=
i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_104309v2/shard-rkl-6/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html">PAS=
S</a> +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-25:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-rkl-4/igt@kms_color@pipe-a-ctm-0-25.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1149">i915#1149</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#40=
70</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i=
915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_104309v2/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-25.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180=
">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_104309v2/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-rkl-2/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
12022">fdo#112022</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_104309v2/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor=
-128x128-sliding.html">PASS</a> +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11=
1825">fdo#111825</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_104309v2/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cur=
sor-crc-atomic.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu=
-ytiled.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111314">fdo#111314</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4369">i915#4369</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-rkl-6/igt@kms_draw_crc@d=
raw-method-xrgb2101010-mmap-cpu-ytiled.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-unt=
iled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4369">i915#4369</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_104309v2/shard-rkl-6/igt@kms_draw_crc@draw-method-=
xrgb8888-mmap-wc-untiled.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap=
-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104309v2/shard-rkl-6/igt@kms_frontbuffer_tracking@f=
bc-rgb565-draw-mmap-wc.html">PASS</a> +29 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180=
">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_104309v2/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html"=
>PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-rkl-2/igt@kms_invalid_mode@int-max-clock.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4278">i915#427=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
104309v2/shard-rkl-6/igt@kms_invalid_mode@int-max-clock.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole@pipe-b-planes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-rkl-2/igt@kms_plane@plane-position-hole@pipe-b-planes.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3558">i915#3558</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_104309v2/shard-rkl-6/igt@kms_plane@plane-position-hole@p=
ipe-b-planes.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-rkl-4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
70">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_104309v2/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-cov=
erage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849"=
>i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_104309v2/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-=
alpha-7efc.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-c-overlay-size-64:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-dg1-19/igt@kms_plane_cursor@pipe-c-overlay-size-64.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1836=
">i915#1836</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_104309v2/shard-dg1-18/igt@kms_plane_cursor@pipe-c-overlay-size-64=
.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-b-tiling-y:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-rkl-1/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/355=
8">i915#3558</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_104309v2/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-b-=
tiling-y.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc@second-to-first:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-rkl-2/igt@kms_prime@basic-crc@second-to-first.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i91=
5#1849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_104309v2/shard-rkl-6/igt@kms_prime@basic-crc@second-to-first.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_properties@connector-properties-legacy:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-dg1-19/igt@kms_properties@connector-properties-legacy.h=
tml">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_104309v2/shard-dg1-18/igt@kms_properties@connector-properties-legacy=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#1094=
41</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_104309v2/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_move:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-rkl-1/igt@kms_psr@sprite_plane_move.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10430=
9v2/shard-rkl-6/igt@kms_psr@sprite_plane_move.html">PASS</a> +3 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-rkl-4/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5461">i915#5461</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_104309v2/shard-rkl-6/igt@kms_psr_stress_test@flip-prim=
ary-invalidate-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pipe-a-functional:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-rkl-1/igt@kms_universal_plane@universal-plane-pipe-a-fu=
nctional.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-rkl-6/igt@kms_universal_p=
lane@universal-plane-pipe-a-functional.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-rkl-1/igt@perf@polling-small-buf.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1722">i915#1722</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2=
/shard-rkl-6/igt@perf@polling-small-buf.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-iclb5/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1043=
09v2/shard-iclb1/igt@gem_exec_balancer@parallel.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5614">i915#5614</a>) =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html">DM=
ESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/56=
14">i915#5614</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_104309v2/shard-iclb8/igt@gem_exec_balancer@parallel-out-fence.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#268=
4</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
104309v2/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2680">i915#2680</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#26=
84</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-skl2/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_=
mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1888">i915#1888</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3886">i915#3886</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-skl4/igt@kms_ccs@pipe-a-b=
ad-pixel-format-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-skl2/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12=
_rc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/1888">i915#1888</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_104309v2/shard-skl4/igt@kms_ccs@pipe-b-ccs-on=
-another-bo-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_104309v2/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-=
dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11694/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_104309v2/shard-iclb2/igt@kms_psr2_sf@primary-plane-updat=
e-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11694/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-kbl4/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11694/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-kbl7/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11694/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-kbl1/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11694/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-kbl1/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_116=
94/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_11694/shard-kbl3/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/=
shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11694/shard-kbl1/igt@runner@aborted.html">FAI=
L</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5257">i915#5257</a>) -&gt; (<a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl7/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4309v2/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl1/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_104309v2/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl3/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_104309v2/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kb=
l3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_104309v2/shard-kbl1/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2=
/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl6/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_104309v2/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl4/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_104309v2/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v2/shard-kbl4/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_104309v2/shard-kbl4/igt@runner@aborted.html">FAIL</a>) (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3=
002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">=
i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
5257">i915#5257</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11694 -&gt; Patchwork_104309v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11694: ba77f2196526253b70968472d78ced6dd09bdd4d @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6486: f91af0ee70ed290890d122ece6b3857222f985b0 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_104309v2: ba77f2196526253b70968472d78ced6dd09bdd4d @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============3296184757145042071==--
