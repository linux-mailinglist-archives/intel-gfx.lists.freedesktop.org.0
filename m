Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B06A21C0AF
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jul 2020 01:21:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A99676E20D;
	Fri, 10 Jul 2020 23:21:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0E4EE6E1CF;
 Fri, 10 Jul 2020 23:21:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 07667A47E0;
 Fri, 10 Jul 2020 23:21:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Fri, 10 Jul 2020 23:21:16 -0000
Message-ID: <159442327600.20498.2248683436488389618@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200710193144.94751-1-lyude@redhat.com>
In-Reply-To: <20200710193144.94751-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/probe=5Fhelper=2C_i915=3A_Validate_MST_modes_against_PBN_limit?=
 =?utf-8?q?s_=28rev3=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/probe_helper, i915: Validate MST modes against PBN limits (rev3)
URL   : https://patchwork.freedesktop.org/series/77670/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8730_full -> Patchwork_18135_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18135_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-forked:
    - shard-glk:          [PASS][1] -> [DMESG-WARN][2] ([i915#118] / [i915#95])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-glk2/igt@gem_exec_whisper@basic-forked.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-glk2/igt@gem_exec_whisper@basic-forked.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#1436] / [i915#716])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-glk4/igt@gen9_exec_parse@allowed-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-glk7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-skl:          [PASS][5] -> [DMESG-WARN][6] ([i915#1982]) +13 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-skl5/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-skl3/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@mock@requests:
    - shard-iclb:         [PASS][7] -> [INCOMPLETE][8] ([i915#2110])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-iclb1/igt@i915_selftest@mock@requests.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-iclb2/igt@i915_selftest@mock@requests.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-kbl3/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-kbl4/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +5 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
    - shard-hsw:          [PASS][13] -> [FAIL][14] ([i915#57])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-hsw5/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
    - shard-skl:          [PASS][15] -> [DMESG-FAIL][16] ([i915#1982])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1635] / [i915#95]) +18 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-apl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-apl8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#1188])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#108145] / [i915#265]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping:
    - shard-iclb:         [PASS][23] -> [DMESG-WARN][24] ([i915#1982])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-iclb4/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-iclb3/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][27] -> [FAIL][28] ([i915#31])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-kbl2/igt@kms_setmode@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-kbl7/igt@kms_setmode@basic.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-c:
    - shard-tglb:         [PASS][29] -> [DMESG-WARN][30] ([i915#1982])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-tglb6/igt@kms_universal_plane@universal-plane-gen9-features-pipe-c.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-tglb5/igt@kms_universal_plane@universal-plane-gen9-features-pipe-c.html

  
#### Possible fixes ####

  * igt@gem_exec_whisper@basic-fds-all:
    - shard-glk:          [DMESG-WARN][31] ([i915#118] / [i915#95]) -> [PASS][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-glk3/igt@gem_exec_whisper@basic-fds-all.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-glk5/igt@gem_exec_whisper@basic-fds-all.html

  * igt@gem_partial_pwrite_pread@write-uncached:
    - shard-apl:          [DMESG-WARN][33] ([i915#1635] / [i915#95]) -> [PASS][34] +15 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-apl6/igt@gem_partial_pwrite_pread@write-uncached.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-apl8/igt@gem_partial_pwrite_pread@write-uncached.html

  * igt@gem_pipe_control_store_loop@fresh-buffer:
    - shard-tglb:         [DMESG-WARN][35] ([i915#402]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-tglb8/igt@gem_pipe_control_store_loop@fresh-buffer.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-tglb7/igt@gem_pipe_control_store_loop@fresh-buffer.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][37] ([i915#454]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [FAIL][39] ([i915#96]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-hsw2/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_flip@2x-dpms-vs-vblank-race@ab-vga1-hdmi-a1:
    - shard-hsw:          [DMESG-WARN][41] ([i915#1982]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-hsw6/igt@kms_flip@2x-dpms-vs-vblank-race@ab-vga1-hdmi-a1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-hsw8/igt@kms_flip@2x-dpms-vs-vblank-race@ab-vga1-hdmi-a1.html

  * igt@kms_flip@blocking-wf_vblank@a-dp1:
    - shard-kbl:          [DMESG-WARN][43] ([i915#1982]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-kbl1/igt@kms_flip@blocking-wf_vblank@a-dp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-kbl3/igt@kms_flip@blocking-wf_vblank@a-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:
    - shard-glk:          [FAIL][45] ([i915#79]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +4 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-ts-check@a-hdmi-a1:
    - shard-glk:          [FAIL][49] ([i915#2122]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-glk3/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-glk8/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check@b-edp1:
    - shard-skl:          [FAIL][51] ([i915#2122]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-skl3/igt@kms_flip@plain-flip-ts-check@b-edp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-skl5/igt@kms_flip@plain-flip-ts-check@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-glk:          [DMESG-WARN][53] ([i915#1982]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-glk3/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-glk1/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:
    - shard-tglb:         [DMESG-WARN][55] ([i915#1982]) -> [PASS][56] +3 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][57] ([i915#1188]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-pipe-a-planes:
    - shard-skl:          [DMESG-WARN][59] ([i915#1982]) -> [PASS][60] +5 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-skl9/igt@kms_plane@plane-panning-bottom-right-pipe-a-planes.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-skl2/igt@kms_plane@plane-panning-bottom-right-pipe-a-planes.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][61] ([fdo#109642] / [fdo#111068]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-iclb1/igt@kms_psr2_su@page_flip.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][63] ([fdo#109441]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@sw_sync@alloc_merge_fence:
    - shard-kbl:          [DMESG-WARN][65] ([i915#93] / [i915#95]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-kbl1/igt@sw_sync@alloc_merge_fence.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-kbl3/igt@sw_sync@alloc_merge_fence.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-spin-others@vcs0:
    - shard-snb:          [WARN][67] ([i915#2036]) -> [WARN][68] ([i915#2021])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-snb1/igt@gem_exec_reloc@basic-spin-others@vcs0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-snb1/igt@gem_exec_reloc@basic-spin-others@vcs0.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][69] ([i915#588]) -> [SKIP][70] ([i915#658])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [FAIL][71] ([fdo#110321] / [fdo#110336] / [i915#1635]) -> [DMESG-FAIL][72] ([fdo#110321] / [i915#1635] / [i915#95])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-apl2/igt@kms_content_protection@legacy.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-apl7/igt@kms_content_protection@legacy.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          [DMESG-FAIL][73] ([fdo#108145] / [i915#1982]) -> [FAIL][74] ([fdo#108145] / [i915#265])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][75] ([i915#1911]) -> [SKIP][76] ([fdo#109642] / [fdo#111068])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-iclb7/igt@kms_psr2_su@frontbuffer.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][77], [FAIL][78]) ([i915#1610] / [i915#1635] / [i915#2110]) -> [FAIL][79] ([i915#1635] / [i915#2110])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-apl3/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-apl8/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-apl2/igt@runner@aborted.html
    - shard-glk:          [FAIL][80] ([i915#2110] / [k.org#202321]) -> [FAIL][81] ([k.org#202321])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-glk7/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-glk7/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][82], [FAIL][83], [FAIL][84]) ([i915#2110]) -> [FAIL][85] ([i915#1764] / [i915#2110])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-tglb7/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-tglb5/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8730/shard-tglb2/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/shard-tglb3/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1764]: https://gitlab.freedesktop.org/drm/intel/issues/1764
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2021]: https://gitlab.freedesktop.org/drm/intel/issues/2021
  [i915#2036]: https://gitlab.freedesktop.org/drm/intel/issues/2036
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8730 -> Patchwork_18135

  CI-20190529: 20190529
  CI_DRM_8730: 58bef391f51f0e59a93b0296c16d7bea9457416c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5731: 6c008a2fe5c8c46ad8c1871b030987eddaa17bd9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18135: 43dbf9998ef793a397fad92ba01c2436bf44ca69 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18135/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
