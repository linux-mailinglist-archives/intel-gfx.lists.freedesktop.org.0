Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F7F310BA1
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 14:15:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A3066E250;
	Fri,  5 Feb 2021 13:15:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 21A2B6E05C;
 Fri,  5 Feb 2021 13:15:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 18D9EAA0EA;
 Fri,  5 Feb 2021 13:15:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sagar Ghuge" <sagar.ghuge@intel.com>
Date: Fri, 05 Feb 2021 13:15:26 -0000
Message-ID: <161253092606.1864.1159798332334675804@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210205003310.282664-1-sagar.ghuge@intel.com>
In-Reply-To: <20210205003310.282664-1-sagar.ghuge@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/icl=2C_tgl=3A_whitelist_COMMON=5FSLICE=5FCHICKEN3_registe?=
 =?utf-8?q?r?=
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
Content-Type: multipart/mixed; boundary="===============1095605200=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1095605200==
Content-Type: multipart/alternative;
 boundary="===============1250089510418073023=="

--===============1250089510418073023==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/icl, tgl: whitelist COMMON_SLICE_CHICKEN3 register
URL   : https://patchwork.freedesktop.org/series/86733/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9735_full -> Patchwork_19598_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19598_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19598_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19598_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip_tiling@flip-yf-tiled@edp-1-pipe-c:
    - shard-skl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-skl7/igt@kms_flip_tiling@flip-yf-tiled@edp-1-pipe-c.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-skl6/igt@kms_flip_tiling@flip-yf-tiled@edp-1-pipe-c.html

  
Known issues
------------

  Here are the changes found in Patchwork_19598_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][3] ([i915#3002])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-kbl7/igt@gem_create@create-massive.html
    - shard-tglb:         NOTRUN -> [DMESG-WARN][4] ([i915#3002])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-tglb7/igt@gem_create@create-massive.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#2846])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-kbl4/igt@gem_exec_fair@basic-deadline.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-kbl4/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][7] -> [FAIL][8] ([i915#2842]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
    - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-apl3/igt@gem_exec_fair@basic-none@vcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-apl1/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-tglb1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-tglb1/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_reloc@basic-many-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][13] ([i915#2389])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-iclb2/igt@gem_exec_reloc@basic-many-active@vcs1.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-skl:          NOTRUN -> [FAIL][14] ([i915#2389]) +3 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-skl3/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_exec_schedule@u-fairslice@vecs0:
    - shard-tglb:         [PASS][15] -> [DMESG-WARN][16] ([i915#2803])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-tglb1/igt@gem_exec_schedule@u-fairslice@vecs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-tglb1/igt@gem_exec_schedule@u-fairslice@vecs0.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-glk:          [PASS][17] -> [DMESG-WARN][18] ([i915#118] / [i915#95])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-glk3/igt@gem_ppgtt@blt-vs-render-ctxn.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-glk2/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-apl4/igt@gem_softpin@noreloc-s3.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-apl6/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@mmap-offset-invalidate-active@wb:
    - shard-kbl:          NOTRUN -> [SKIP][21] ([fdo#109271]) +47 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-kbl6/igt@gem_userptr_blits@mmap-offset-invalidate-active@wb.html

  * igt@gem_userptr_blits@readonly-mmap-unsync@wb:
    - shard-tglb:         NOTRUN -> [SKIP][22] ([i915#1704]) +3 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-tglb7/igt@gem_userptr_blits@readonly-mmap-unsync@wb.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-tglb:         NOTRUN -> [SKIP][23] ([fdo#109289])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-tglb2/igt@gen7_exec_parse@basic-offset.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-iclb:         NOTRUN -> [SKIP][24] ([fdo#112306])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-iclb7/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [PASS][25] -> [INCOMPLETE][26] ([i915#2880])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_query@query-topology-unsupported:
    - shard-tglb:         NOTRUN -> [SKIP][27] ([fdo#109302])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-tglb2/igt@i915_query@query-topology-unsupported.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][28] ([fdo#111614]) +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-tglb2/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_ccs@pipe-c-bad-rotation-90:
    - shard-skl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111304])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-skl3/igt@kms_ccs@pipe-c-bad-rotation-90.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-tglb:         NOTRUN -> [SKIP][30] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-tglb2/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_color_chamelium@pipe-a-ctm-negative:
    - shard-kbl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-kbl4/igt@kms_color_chamelium@pipe-a-ctm-negative.html

  * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
    - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-skl9/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen:
    - shard-skl:          NOTRUN -> [FAIL][33] ([i915#54])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-random:
    - shard-skl:          [PASS][34] -> [FAIL][35] ([i915#54]) +5 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x170-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][36] ([fdo#109279]) +3 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-tglb2/igt@kms_cursor_crc@pipe-c-cursor-512x170-onscreen.html

  * igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge:
    - shard-skl:          [PASS][37] -> [DMESG-WARN][38] ([i915#1982])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-skl6/igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-skl10/igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#2346])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_cursor_legacy@pipe-d-torture-move:
    - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271]) +48 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-skl9/igt@kms_cursor_legacy@pipe-d-torture-move.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [PASS][42] -> [FAIL][43] ([i915#2122])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check@a-hdmi-a1:
    - shard-glk:          [PASS][44] -> [FAIL][45] ([i915#2122])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-glk8/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-glk6/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109280]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff:
    - shard-tglb:         NOTRUN -> [SKIP][47] ([fdo#111825]) +16 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([i915#1188])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@static-swap:
    - shard-iclb:         NOTRUN -> [SKIP][50] ([i915#1187])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-iclb7/igt@kms_hdr@static-swap.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a:
    - shard-skl:          [PASS][51] -> [FAIL][52] ([i915#53])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-skl10/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-skl8/igt@kms_pipe_crc_basic@read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][53] ([fdo#108145] / [i915#265]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
    - shard-skl:          NOTRUN -> [FAIL][54] ([fdo#108145] / [i915#265])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][55] ([fdo#111615])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-tglb2/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-kbl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#658]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-kbl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
    - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#658])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-skl9/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][58] -> [SKIP][59] ([fdo#109642] / [fdo#111068] / [i915#658])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-iclb5/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][60] -> [SKIP][61] ([fdo#109441]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_writeback@writeback-check-output:
    - shard-tglb:         NOTRUN -> [SKIP][62] ([i915#2437])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-tglb2/igt@kms_writeback@writeback-check-output.html

  * igt@nouveau_crc@pipe-a-source-rg:
    - shard-tglb:         NOTRUN -> [SKIP][63] ([i915#2530])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-tglb2/igt@nouveau_crc@pipe-a-source-rg.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [PASS][64] -> [FAIL][65] ([i915#1542])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-glk2/igt@perf@polling-parameterized.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-glk3/igt@perf@polling-parameterized.html
    - shard-tglb:         [PASS][66] -> [FAIL][67] ([i915#1542])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-tglb6/igt@perf@polling-parameterized.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-tglb3/igt@perf@polling-parameterized.html

  * igt@perf@short-reads:
    - shard-skl:          [PASS][68] -> [FAIL][69] ([i915#51])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-skl7/igt@perf@short-reads.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-skl3/igt@perf@short-reads.html

  * igt@prime_nv_api@i915_nv_double_export:
    - shard-iclb:         NOTRUN -> [SKIP][70] ([fdo#109291])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-iclb7/igt@prime_nv_api@i915_nv_double_export.html

  * igt@prime_nv_pcopy@test1_micro:
    - shard-tglb:         NOTRUN -> [SKIP][71] ([fdo#109291])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-tglb2/igt@prime_nv_pcopy@test1_micro.html

  * igt@sysfs_clients@split-10@bcs0:
    - shard-apl:          [PASS][72] -> [SKIP][73] ([fdo#109271] / [i915#3026])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-apl7/igt@sysfs_clients@split-10@bcs0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-apl3/igt@sysfs_clients@split-10@bcs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-apl:          [DMESG-WARN][74] ([i915#180]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-apl8/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-apl8/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [INCOMPLETE][76] ([i915#1895] / [i915#2295]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-iclb4/igt@gem_exec_balancer@hang.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-iclb7/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][78] ([i915#2842]) -> [PASS][79] +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-skl:          [DMESG-WARN][80] ([i915#1610] / [i915#2803]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-skl2/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-skl9/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@vecs0:
    - shard-kbl:          [DMESG-WARN][82] ([i915#1610] / [i915#2803]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-kbl2/igt@gem_exec_schedule@u-fairslice@vecs0.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-kbl4/igt@gem_exec_schedule@u-fairslice@vecs0.html

  * igt@gem_exec_whisper@basic-contexts:
    - shard-glk:          [DMESG-WARN][84] ([i915#118] / [i915#95]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-glk9/igt@gem_exec_whisper@basic-contexts.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-glk4/igt@gem_exec_whisper@basic-contexts.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [DMESG-WARN][86] ([i915#180]) -> [PASS][87] +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-kbl1/igt@i915_suspend@forcewake.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-kbl6/igt@i915_suspend@forcewake.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [FAIL][88] ([i915#2597]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-tglb8/igt@kms_async_flips@test-time-stamp.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-tglb2/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-skl:          [FAIL][90] ([i915#54]) -> [PASS][91] +5 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque:
    - shard-kbl:          [DMESG-WARN][92] ([i915#165] / [i915#180] / [i915#78]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][94] ([i915#2346]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [FAIL][96] ([i915#2122]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][98] ([fdo#108145] / [i915#265]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][100] ([fdo#109441]) -> [PASS][101] +2 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-tglb:         [INCOMPLETE][102] ([i915#2411] / [i915#456]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-tglb7/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-tglb2/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][104] ([i915#1542]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-skl5/igt@perf@polling-parameterized.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-skl9/igt@perf@polling-parameterized.html

  * igt@prime_vgem@sync@rcs0:
    - shard-tglb:         [INCOMPLETE][106] ([i915#409]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-tglb7/igt@prime_vgem@sync@rcs0.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-tglb7/igt@prime_vgem@sync@rcs0.html

  * igt@sysfs_clients@busy@vcs0:
    - shard-kbl:          [FAIL][108] ([i915#3009]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-kbl2/igt@sysfs_clients@busy@vcs0.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-kbl1/igt@sysfs_clients@busy@vcs0.html

  * igt@sysfs_clients@recycle:
    - shard-snb:          [FAIL][110] ([i915#3028]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-snb5/igt@sysfs_clients@recycle.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-snb7/igt@sysfs_clients@recycle.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][112] ([i915#2849]) -> [FAIL][113] ([i915#2842])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][114] ([i915#2684]) -> [WARN][115] ([i915#1804] / [i915#2684])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [INCOMPLETE][116] ([i915#300]) -> [FAIL][117] ([i915#54])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
    - shard-iclb:         [SKIP][118] ([i915#2920]) -> [SKIP][119] ([i915#658]) +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-iclb5/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
    - shard-iclb:         [SKIP][120] ([i915#658]) -> [SKIP][121] ([i915#2920]) +2 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126]) ([i915#1814] / [i915#2295] / [i915#2426] / [i915#3002] / [i915#602]) -> ([FAIL][127], [FAIL][128], [FAIL][129]) ([i915#2295] / [i915#3002])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-kbl2/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-kbl2/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-kbl2/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-kbl1/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-kbl1/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-kbl2/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-kbl7/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-kbl7/igt@runner@aborted.html
    - shard-apl:          ([FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134]) ([i915#2295] / [i915#3002]) -> ([FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140]) ([i915#1610] / [i915#2292] / [i915#2295] / [i915#3002])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-apl1/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-apl4/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-apl1/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-apl7/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-apl8/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-apl4/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-apl4/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-apl6/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-apl1/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-apl8/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-apl7/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][141], [FAIL][142], [FAIL][143]) ([i915#2295] / [i915#2426] / [i915#2667] / [i915#3002] / [i915#409]) -> ([FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147]) ([i915#2295] / [i915#2426] / [i915#2667] / [i915#2803] / [i915#3002])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-tglb7/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-tglb2/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-tglb2/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-tglb1/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-tglb7/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-tglb6/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-tglb7/igt@runner@aborted.html
    - shard-skl:          ([FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151]) ([i915#2295] / [i915#2426] / [i915#3002]) -> ([FAIL][152], [FAIL][153], [FAIL][154]) ([i915#2295] / [i915#3002])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-skl2/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-skl8/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-skl1/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-skl4/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-skl9/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-skl7/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-skl7/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111304]: https://bugs.freedesktop.org/show_bug.cgi?id=111304
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112306]: https://bugs.freedesktop.org/show_bug.cgi?id=112306
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/index.html

--===============1250089510418073023==
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
<tr><td><b>Series:</b></td><td>drm/i915/icl, tgl: whitelist COMMON_SLICE_CH=
ICKEN3 register</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/86733/">https://patchwork.freedesktop.org/series/86733/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19598/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19598/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9735_full -&gt; Patchwork_19598_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19598_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19598_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19598_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_flip_tiling@flip-yf-tiled@edp-1-pipe-c:<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-skl7/igt@kms_flip_tiling@flip-yf-tiled@edp-1-pipe-c.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19598/shard-skl6/igt@kms_flip_tiling@flip-yf-tiled@edp-1-pipe-c.html">F=
AIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19598_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19598/shard-kbl7/igt@gem_create@create-massive.html"=
>DMESG-WARN</a> ([i915#3002])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19598/shard-tglb7/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#3002])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-kbl4/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shar=
d-kbl4/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9735/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shar=
d-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) +1 si=
milar issue</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9735/shard-apl3/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shar=
d-apl1/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-tglb1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_195=
98/shard-tglb1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915=
#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19598/shard-iclb2/igt@gem_exec_reloc@basic-many-act=
ive@vcs1.html">FAIL</a> ([i915#2389])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19598/shard-skl3/igt@gem_exec_reloc@basic-wide-acti=
ve@bcs0.html">FAIL</a> ([i915#2389]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vecs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-tglb1/igt@gem_exec_schedule@u-fairslice@vecs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
598/shard-tglb1/igt@gem_exec_schedule@u-fairslice@vecs0.html">DMESG-WARN</a=
> ([i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@blt-vs-render-ctxn:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-glk3/igt@gem_ppgtt@blt-vs-render-ctxn.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shar=
d-glk2/igt@gem_ppgtt@blt-vs-render-ctxn.html">DMESG-WARN</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / [i915#95]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-apl4/igt@gem_softpin@noreloc-s3.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-apl6=
/igt@gem_softpin@noreloc-s3.html">DMESG-WARN</a> ([i915#180]) +2 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@mmap-offset-invalidate-active@wb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19598/shard-kbl6/igt@gem_userptr_blits@mmap-offset-=
invalidate-active@wb.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a>) +47 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-mmap-unsync@wb:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19598/shard-tglb7/igt@gem_userptr_blits@readonly-mm=
ap-unsync@wb.html">SKIP</a> ([i915#1704]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19598/shard-tglb2/igt@gen7_exec_parse@basic-offset.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19598/shard-iclb7/igt@gen9_exec_parse@cmd-crossing-=
page.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D112306">fdo#112306</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-snb4/igt@i915_module_load@reload-with-fault-injection.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19598/shard-snb5/igt@i915_module_load@reload-with-fault-injection.htm=
l">INCOMPLETE</a> ([i915#2880])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19598/shard-tglb2/igt@i915_query@query-topology-uns=
upported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109302">fdo#109302</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19598/shard-tglb2/igt@kms_big_fb@y-tiled-64bpp-rota=
te-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111614">fdo#111614</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19598/shard-skl3/igt@kms_ccs@pipe-c-bad-rotation-90=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111304">fdo#111304</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19598/shard-tglb2/igt@kms_chamelium@dp-crc-multiple=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-negative:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19598/shard-kbl4/igt@kms_color_chamelium@pipe-a-ctm=
-negative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19598/shard-skl9/igt@kms_color_chamelium@pipe-d-ctm=
-red-to-blue.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19598/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-2=
56x256-onscreen.html">FAIL</a> ([i915#54])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19598/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html">=
FAIL</a> ([i915#54]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x170-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19598/shard-tglb2/igt@kms_cursor_crc@pipe-c-cursor-=
512x170-onscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109279">fdo#109279</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-skl6/igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19598/shard-skl10/igt@kms_cursor_edge_walk@pipe-b-128x128-right-edg=
e.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19598/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</a=
> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-move:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19598/shard-skl9/igt@kms_cursor_legacy@pipe-d-tortu=
re-move.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a>) +48 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19598/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">FAIL</a> =
([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-glk8/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19598/shard-glk6/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html">FAIL</a> =
([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19598/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-indfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19598/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-cur-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-=
skl10/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19598/shard-iclb7/igt@kms_hdr@static-swap.html">SKI=
P</a> ([i915#1187])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-a:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-skl10/igt@kms_pipe_crc_basic@read-crc-pipe-a.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_195=
98/shard-skl8/igt@kms_pipe_crc_basic@read-crc-pipe-a.html">FAIL</a> ([i915#=
53])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19598/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-al=
pha-7efc.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D108145">fdo#108145</a> / [i915#265]) +1 similar issue</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19598/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-al=
pha-7efc.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D108145">fdo#108145</a> / [i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19598/shard-tglb2/igt@kms_plane_multiple@atomic-pip=
e-b-tiling-yf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19598/shard-kbl6/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-2.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19598/shard-skl9/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-2.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-ic=
lb5/igt@kms_psr2_su@frontbuffer.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> / <a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111068</a> / [i915#658])=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/s=
hard-iclb5/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19598/shard-tglb2/igt@kms_writeback@writeback-check=
-output.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-rg:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19598/shard-tglb2/igt@nouveau_crc@pipe-a-source-rg.=
html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9735/shard-glk2/igt@perf@polling-parameterized.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-g=
lk3/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9735/shard-tglb6/igt@perf@polling-parameterized.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-=
tglb3/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</p>
</li>
</ul>
</li>
<li>
<p>igt@perf@short-reads:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-skl7/igt@perf@short-reads.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-skl3/igt=
@perf@short-reads.html">FAIL</a> ([i915#51])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_double_export:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19598/shard-iclb7/igt@prime_nv_api@i915_nv_double_e=
xport.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test1_micro:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19598/shard-tglb2/igt@prime_nv_pcopy@test1_micro.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10@bcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-apl7/igt@sysfs_clients@split-10@bcs0.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard=
-apl3/igt@sysfs_clients@split-10@bcs0.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3026])<=
/li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-apl8/igt@gem_ctx_isolation@preservation-s3@bcs0.html">DM=
ESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19598/shard-apl8/igt@gem_ctx_isolation@preservation-s3@b=
cs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hang:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-iclb4/igt@gem_exec_balancer@hang.html">INCOMPLETE</a> ([=
i915#1895] / [i915#2295]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19598/shard-iclb7/igt@gem_exec_balancer@hang.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19598/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-skl2/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-=
WARN</a> ([i915#1610] / [i915#2803]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_19598/shard-skl9/igt@gem_exec_schedule@u-fair=
slice@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-kbl2/igt@gem_exec_schedule@u-fairslice@vecs0.html">DMESG=
-WARN</a> ([i915#1610] / [i915#2803]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_19598/shard-kbl4/igt@gem_exec_schedule@u-fai=
rslice@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-glk9/igt@gem_exec_whisper@basic-contexts.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915=
#118</a> / [i915#95]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19598/shard-glk4/igt@gem_exec_whisper@basic-contexts.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-kbl1/igt@i915_suspend@forcewake.html">DMESG-WARN</a> ([i=
915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19598/shard-kbl6/igt@i915_suspend@forcewake.html">PASS</a> +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-tglb8/igt@kms_async_flips@test-time-stamp.html">FAIL</a>=
 ([i915#2597]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19598/shard-tglb2/igt@kms_async_flips@test-time-stamp.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html=
">FAIL</a> ([i915#54]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19598/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x64-sli=
ding.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque.html"=
>DMESG-WARN</a> ([i915#165] / [i915#180] / [i915#78]) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-kbl7/igt@kms_cur=
sor_crc@pipe-b-cursor-alpha-opaque.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19598/shard-skl9/igt@kms_cursor_legacy@flip-vs-c=
ursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@c=
-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_19598/shard-skl3/igt@kms_flip@plain-flip-fb-rec=
reate-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min=
.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
108145">fdo#108145</a> / [i915#265]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_19598/shard-skl4/igt@kms_plane_alpha_blend@pi=
pe-c-constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#1094=
41</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19598/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-tglb7/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend=
.html">INCOMPLETE</a> ([i915#2411] / [i915#456]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-tglb2/igt@kms_vblank@=
pipe-c-ts-continuation-dpms-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-skl5/igt@perf@polling-parameterized.html">FAIL</a> ([i91=
5#1542]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19598/shard-skl9/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-tglb7/igt@prime_vgem@sync@rcs0.html">INCOMPLETE</a> ([i9=
15#409]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19598/shard-tglb7/igt@prime_vgem@sync@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-kbl2/igt@sysfs_clients@busy@vcs0.html">FAIL</a> ([i915#3=
009]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9598/shard-kbl1/igt@sysfs_clients@busy@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-snb5/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#302=
8]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_195=
98/shard-snb7/igt@sysfs_clients@recycle.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</=
a> ([i915#2849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19598/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">FAI=
L</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 ([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19598/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> ([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">INCO=
MPLETE</a> ([i915#300]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19598/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.=
html">FAIL</a> ([i915#54])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1=
.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19598/shard-iclb5/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-1.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1=
.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19598/shard-iclb2/igt@kms_psr2_sf@primary-plane-updat=
e-sf-dmg-area-1.html">SKIP</a> ([i915#2920]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-kbl2/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9735/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-kbl1/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_97=
35/shard-kbl1/igt@runner@aborted.html">FAIL</a>) ([i915#1814] / [i915#2295]=
 / [i915#2426] / [i915#3002] / [i915#602]) -&gt; (<a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-kbl2/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19598/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-kbl7/igt@runner@aborted=
.html">FAIL</a>) ([i915#2295] / [i915#3002])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-apl4/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9735/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-apl7/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_97=
35/shard-apl8/igt@runner@aborted.html">FAIL</a>) ([i915#2295] / [i915#3002]=
) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1959=
8/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_19598/shard-apl4/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9598/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-apl1/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19598/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-apl7/igt@runner@aborte=
d.html">FAIL</a>) ([i915#1610] / [i915#2292] / [i915#2295] / [i915#3002])</=
p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-tglb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-tglb2/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9735/shard-tglb2/igt@runner@aborted.html">FAIL</a>) ([i915#2295] / [i9=
15#2426] / [i915#2667] / [i915#3002] / [i915#409]) -&gt; (<a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-tglb1/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19598/shard-tglb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-tglb6/igt@run=
ner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19598/shard-tglb7/igt@runner@aborted.html">FAIL</a>) ([i915#=
2295] / [i915#2426] / [i915#2667] / [i915#2803] / [i915#3002])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9735/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-skl8/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9735/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/shard-skl4/igt@runner@aborted.ht=
ml">FAIL</a>) ([i915#2295] / [i915#2426] / [i915#3002]) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-skl9/igt@runn=
er@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19598/shard-skl7/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19598/shard-skl7/igt=
@runner@aborted.html">FAIL</a>) ([i915#2295] / [i915#3002])</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<p>[</p>

</body>
</html>

--===============1250089510418073023==--

--===============1095605200==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1095605200==--
