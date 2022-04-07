Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2AD14F760B
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 08:30:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDB1010EE9D;
	Thu,  7 Apr 2022 06:30:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9742C10EE9D;
 Thu,  7 Apr 2022 06:30:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9430CAA0EA;
 Thu,  7 Apr 2022 06:30:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5755631354347868627=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Date: Thu, 07 Apr 2022 06:30:16 -0000
Message-ID: <164931301657.14671.4617149564165424678@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220406174311.82104-1-vinod.govindapillai@intel.com>
In-Reply-To: <20220406174311.82104-1-vinod.govindapillai@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_program_wm_blocks_to_at_least_blocks_required_per_line?=
 =?utf-8?q?_=28rev3=29?=
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

--===============5755631354347868627==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: program wm blocks to at least blocks required per line (rev3)
URL   : https://patchwork.freedesktop.org/series/102149/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11467_full -> Patchwork_22799_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_22799_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-iclb:         NOTRUN -> [SKIP][1] ([i915#5327])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb8/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-skl:          NOTRUN -> [FAIL][2] ([i915#2846])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-skl10/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [PASS][3] -> [FAIL][4] ([i915#2842])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#2842])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk3/igt@gem_exec_fair@basic-none@vcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-glk4/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_flush@basic-wb-rw-before-default:
    - shard-snb:          [PASS][7] -> [SKIP][8] ([fdo#109271]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-snb4/igt@gem_exec_flush@basic-wb-rw-before-default.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-snb6/igt@gem_exec_flush@basic-wb-rw-before-default.html

  * igt@gem_exec_params@secure-non-root:
    - shard-tglb:         NOTRUN -> [SKIP][9] ([fdo#112283])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglb8/igt@gem_exec_params@secure-non-root.html
    - shard-iclb:         NOTRUN -> [SKIP][10] ([fdo#112283])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@gem_exec_params@secure-non-root.html

  * igt@gem_lmem_swapping@random:
    - shard-tglb:         NOTRUN -> [SKIP][11] ([i915#4613])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglb8/igt@gem_lmem_swapping@random.html
    - shard-skl:          NOTRUN -> [SKIP][12] ([fdo#109271] / [i915#4613])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-skl10/igt@gem_lmem_swapping@random.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-iclb:         NOTRUN -> [SKIP][13] ([i915#4613]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb8/igt@gem_lmem_swapping@smem-oom.html
    - shard-apl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#4613])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-apl6/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_mmap_gtt@coherency:
    - shard-iclb:         NOTRUN -> [SKIP][15] ([fdo#109292])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb8/igt@gem_mmap_gtt@coherency.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][16] ([i915#2658])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-apl6/igt@gem_pread@exhaustion.html
    - shard-iclb:         NOTRUN -> [WARN][17] ([i915#2658])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb8/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-iclb:         NOTRUN -> [SKIP][18] ([i915#4270])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@gem_pxp@create-protected-buffer.html
    - shard-tglb:         NOTRUN -> [SKIP][19] ([i915#4270])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglb8/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][20] ([i915#768]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          NOTRUN -> [DMESG-WARN][21] ([i915#5566])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-apl3/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-iclb:         NOTRUN -> [SKIP][22] ([i915#2856]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb8/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-tglb:         NOTRUN -> [SKIP][23] ([i915#2527] / [i915#2856])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglb8/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][24] -> [FAIL][25] ([i915#454])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-skl:          [PASS][26] -> [INCOMPLETE][27] ([i915#5420])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-skl1/igt@i915_pm_rpm@system-suspend.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-skl1/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-glk:          [PASS][28] -> [DMESG-WARN][29] ([i915#118] / [i915#1888])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk3/igt@i915_pm_rpm@system-suspend-modeset.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-glk4/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_pm_sseu@full-enable:
    - shard-iclb:         NOTRUN -> [SKIP][30] ([i915#4387])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@query-topology-unsupported:
    - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#109302])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb8/igt@i915_query@query-topology-unsupported.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][32] -> [DMESG-WARN][33] ([i915#180]) +4 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglb:         NOTRUN -> [SKIP][34] ([i915#5286]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglb8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-iclb:         NOTRUN -> [SKIP][35] ([i915#5286]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#110725] / [fdo#111614])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglb:         NOTRUN -> [SKIP][37] ([fdo#111615])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglb8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][38] ([fdo#109278] / [i915#3886])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_color@pipe-d-ctm-negative:
    - shard-kbl:          NOTRUN -> [SKIP][39] ([fdo#109271]) +16 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-kbl1/igt@kms_color@pipe-d-ctm-negative.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-5:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@kms_color_chamelium@pipe-c-ctm-0-5.html
    - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-skl10/igt@kms_color_chamelium@pipe-c-ctm-0-5.html
    - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#109284] / [fdo#111827])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglb8/igt@kms_color_chamelium@pipe-c-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-c-degamma:
    - shard-apl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-apl7/igt@kms_color_chamelium@pipe-c-degamma.html
    - shard-kbl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-kbl1/igt@kms_color_chamelium@pipe-c-degamma.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x170-random:
    - shard-tglb:         NOTRUN -> [SKIP][45] ([fdo#109279] / [i915#3359])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-512x170-random.html
    - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109278] / [fdo#109279]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@kms_cursor_crc@pipe-a-cursor-512x170-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-32x10-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][47] ([i915#3359])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglb8/igt@kms_cursor_crc@pipe-d-cursor-32x10-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x64-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109278]) +13 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@kms_cursor_crc@pipe-d-cursor-64x64-rapid-movement.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
    - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109274] / [fdo#109278]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][50] -> [FAIL][51] ([i915#2346])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@2x-nonexisting-fb:
    - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#109274]) +4 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@kms_flip@2x-nonexisting-fb.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [PASS][53] -> [FAIL][54] ([i915#2122])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-skl8/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
    - shard-glk:          [PASS][55] -> [FAIL][56] ([i915#1888] / [i915#2546])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:
    - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271]) +7 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-skl10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html
    - shard-tglb:         NOTRUN -> [SKIP][58] ([fdo#109280] / [fdo#111825]) +4 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt:
    - shard-apl:          NOTRUN -> [SKIP][59] ([fdo#109271]) +49 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-apl6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-iclb:         NOTRUN -> [SKIP][60] ([i915#5438])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-move:
    - shard-iclb:         NOTRUN -> [SKIP][61] ([fdo#109280]) +7 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-move.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][62] -> [FAIL][63] ([fdo#108145] / [i915#265])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][64] ([fdo#108145] / [i915#265])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
    - shard-apl:          NOTRUN -> [FAIL][65] ([fdo#108145] / [i915#265])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-25@pipe-a-edp-1-downscale-with-pixel-format:
    - shard-iclb:         NOTRUN -> [SKIP][66] ([i915#5176]) +2 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-25@pipe-a-edp-1-downscale-with-pixel-format.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][67] -> [SKIP][68] ([fdo#109441])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-skl:          [PASS][69] -> [INCOMPLETE][70] ([i915#2828])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-skl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-skl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@kms_vrr@flipline:
    - shard-iclb:         NOTRUN -> [SKIP][71] ([fdo#109502])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb8/igt@kms_vrr@flipline.html

  * igt@nouveau_crc@pipe-a-source-outp-complete:
    - shard-tglb:         NOTRUN -> [SKIP][72] ([i915#2530])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglb8/igt@nouveau_crc@pipe-a-source-outp-complete.html
    - shard-iclb:         NOTRUN -> [SKIP][73] ([i915#2530])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@nouveau_crc@pipe-a-source-outp-complete.html

  * igt@prime_nv_api@nv_self_import_to_different_fd:
    - shard-iclb:         NOTRUN -> [SKIP][74] ([fdo#109291])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb8/igt@prime_nv_api@nv_self_import_to_different_fd.html

  
#### Possible fixes ####

  * igt@fbdev@unaligned-write:
    - {shard-rkl}:        [SKIP][75] ([i915#2582]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@fbdev@unaligned-write.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-rkl-6/igt@fbdev@unaligned-write.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [FAIL][77] ([i915#232]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-tglb5/igt@gem_eio@unwedge-stress.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglb7/igt@gem_eio@unwedge-stress.html
    - {shard-tglu}:       [TIMEOUT][79] ([i915#3063] / [i915#3648]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-tglu-1/igt@gem_eio@unwedge-stress.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglu-5/igt@gem_eio@unwedge-stress.html
    - {shard-rkl}:        [TIMEOUT][81] ([i915#3063]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-1/igt@gem_eio@unwedge-stress.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-rkl-1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_endless@dispatch@vecs0:
    - shard-tglb:         [INCOMPLETE][83] ([i915#3778]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-tglb3/igt@gem_exec_endless@dispatch@vecs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglb6/igt@gem_exec_endless@dispatch@vecs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [FAIL][85] ([i915#2846]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-kbl7/igt@gem_exec_fair@basic-deadline.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-kbl4/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_flush@basic-batch-kernel-default-uc:
    - shard-snb:          [SKIP][87] ([fdo#109271]) -> [PASS][88] +5 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-snb5/igt@gem_exec_flush@basic-batch-kernel-default-uc.html

  * igt@gem_exec_suspend@basic-s3-devices@smem:
    - shard-kbl:          [DMESG-WARN][89] -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-kbl6/igt@gem_exec_suspend@basic-s3-devices@smem.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-kbl3/igt@gem_exec_suspend@basic-s3-devices@smem.html

  * igt@gem_exec_whisper@basic-queues-all:
    - shard-glk:          [DMESG-WARN][91] ([i915#118]) -> [PASS][92] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk5/igt@gem_exec_whisper@basic-queues-all.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-glk3/igt@gem_exec_whisper@basic-queues-all.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - {shard-rkl}:        [INCOMPLETE][93] -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@gem_exec_whisper@basic-queues-priority.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-rkl-2/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@gem_mmap_gtt@close-race:
    - {shard-rkl}:        [INCOMPLETE][95] ([i915#5080]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@gem_mmap_gtt@close-race.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-rkl-2/igt@gem_mmap_gtt@close-race.html

  * igt@gem_mmap_wc@set-cache-level:
    - {shard-rkl}:        [SKIP][97] ([i915#1850]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@gem_mmap_wc@set-cache-level.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-snb:          [DMESG-FAIL][99] ([i915#3692]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-snb6/igt@gem_ppgtt@blt-vs-render-ctxn.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-snb5/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@gem_softpin@allocator-evict-all-engines:
    - shard-glk:          [FAIL][101] ([i915#4171]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk3/igt@gem_softpin@allocator-evict-all-engines.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-glk4/igt@gem_softpin@allocator-evict-all-engines.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][103] ([i915#454]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc9-dpms:
    - {shard-tglu}:       [SKIP][105] ([i915#4281]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-tglu-3/igt@i915_pm_dc@dc9-dpms.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglu-2/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rpm@drm-resources-equal:
    - {shard-rkl}:        [SKIP][107] ([fdo#109308]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-2/igt@i915_pm_rpm@drm-resources-equal.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - {shard-rkl}:        [SKIP][109] ([i915#1397]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@i915_pm_rpm@modeset-lpsp.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-iclb:         [INCOMPLETE][111] ([i915#5096]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-iclb4/igt@i915_pm_rpm@system-suspend-execbuf.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - {shard-tglu}:       [DMESG-WARN][113] ([i915#402]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-tglu-6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglu-5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0:
    - {shard-rkl}:        [SKIP][115] ([i915#1845] / [i915#4098]) -> [PASS][116] +29 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_ccs:
    - shard-kbl:          [DMESG-WARN][117] ([i915#62] / [i915#92]) -> [PASS][118] +5 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-kbl6/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_ccs.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-kbl3/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_ccs.html

  * igt@kms_color@pipe-a-ctm-max:
    - {shard-rkl}:        [SKIP][119] ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][120] +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-2/igt@kms_color@pipe-a-ctm-max.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-rkl-6/igt@kms_color@pipe-a-ctm-max.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:
    - {shard-rkl}:        [SKIP][121] ([fdo#112022] / [i915#4070]) -> [PASS][122] +8 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][123] ([i915#2346] / [i915#533]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-iclb:         [FAIL][125] ([i915#2346]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb5/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size:
    - {shard-rkl}:        [SKIP][127] ([fdo#111825] / [i915#4070]) -> [PASS][128] +3 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-rkl-6/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled:
    - {shard-rkl}:        [SKIP][129] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][130] +10 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html

  * igt@kms_fbcon_fbt@psr:
    - {shard-rkl}:        [SKIP][131] ([fdo#110189] / [i915#3955]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@kms_fbcon_fbt@psr.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-rkl-6/igt@kms_fbcon_fbt@psr.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [DMESG-WARN][133] ([i915#180]) -> [PASS][134] +3 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
    - shard-kbl:          [INCOMPLETE][135] ([i915#636]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-wf_vblank-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][137] ([i915#1982] / [i915#62] / [i915#92]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-kbl6/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-dp1.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-kbl3/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-ts-check@a-edp1:
    - shard-skl:          [FAIL][139] ([i915#2122]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-skl10/igt@kms_flip@plain-flip-ts-check@a-edp1.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-skl6/igt@kms_flip@plain-flip-ts-check@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-glk:          [FAIL][141] ([i915#4911]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-glk2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
    - {shard-rkl}:        [INCOMPLETE][143] ([i915#3701]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-glk:          [FAIL][145] ([i915#2546]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-glk6/ig

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/index.html

--===============5755631354347868627==
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
<tr><td><b>Series:</b></td><td>drm/i915: program wm blocks to at least blocks required per line (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102149/">https://patchwork.freedesktop.org/series/102149/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11467_full -&gt; Patchwork_22799_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22799_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb8/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> ([i915#5327])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-skl10/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk3/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-glk4/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-before-default:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-snb4/igt@gem_exec_flush@basic-wb-rw-before-default.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-snb6/igt@gem_exec_flush@basic-wb-rw-before-default.html">SKIP</a> ([fdo#109271]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglb8/igt@gem_exec_params@secure-non-root.html">SKIP</a> ([fdo#112283])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@gem_exec_params@secure-non-root.html">SKIP</a> ([fdo#112283])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglb8/igt@gem_lmem_swapping@random.html">SKIP</a> ([i915#4613])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-skl10/igt@gem_lmem_swapping@random.html">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb8/igt@gem_lmem_swapping@smem-oom.html">SKIP</a> ([i915#4613]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-apl6/igt@gem_lmem_swapping@smem-oom.html">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb8/igt@gem_mmap_gtt@coherency.html">SKIP</a> ([fdo#109292])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-apl6/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb8/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@gem_pxp@create-protected-buffer.html">SKIP</a> ([i915#4270])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglb8/igt@gem_pxp@create-protected-buffer.html">SKIP</a> ([i915#4270])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html">SKIP</a> ([i915#768]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-apl3/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#5566])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb8/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> ([i915#2856]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglb8/igt@gen9_exec_parse@cmd-crossing-page.html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-iclb2/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb2/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-skl1/igt@i915_pm_rpm@system-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-skl1/igt@i915_pm_rpm@system-suspend.html">INCOMPLETE</a> ([i915#5420])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk3/igt@i915_pm_rpm@system-suspend-modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-glk4/igt@i915_pm_rpm@system-suspend-modeset.html">DMESG-WARN</a> ([i915#118] / [i915#1888])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@i915_pm_sseu@full-enable.html">SKIP</a> ([i915#4387])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb8/igt@i915_query@query-topology-unsupported.html">SKIP</a> ([fdo#109302])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html">DMESG-WARN</a> ([i915#180]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglb8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i915#5286]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> ([i915#5286]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglb8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-negative:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-kbl1/igt@kms_color@pipe-d-ctm-negative.html">SKIP</a> ([fdo#109271]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-5:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@kms_color_chamelium@pipe-c-ctm-0-5.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +3 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-skl10/igt@kms_color_chamelium@pipe-c-ctm-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglb8/igt@kms_color_chamelium@pipe-c-ctm-0-5.html">SKIP</a> ([fdo#109284] / [fdo#111827])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-degamma:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-apl7/igt@kms_color_chamelium@pipe-c-degamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-kbl1/igt@kms_color_chamelium@pipe-c-degamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x170-random:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-512x170-random.html">SKIP</a> ([fdo#109279] / [i915#3359])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@kms_cursor_crc@pipe-a-cursor-512x170-random.html">SKIP</a> ([fdo#109278] / [fdo#109279]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-32x10-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglb8/igt@kms_cursor_crc@pipe-d-cursor-32x10-onscreen.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x64-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@kms_cursor_crc@pipe-d-cursor-64x64-rapid-movement.html">SKIP</a> ([fdo#109278]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@kms_flip@2x-nonexisting-fb.html">SKIP</a> ([fdo#109274]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-skl8/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html">FAIL</a> ([i915#1888] / [i915#2546])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-skl10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> ([fdo#109271]) +7 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> ([fdo#109280] / [fdo#111825]) +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-apl6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt.html">SKIP</a> ([fdo#109271]) +49 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a> ([i915#5438])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-move.html">SKIP</a> ([fdo#109280]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-25@pipe-a-edp-1-downscale-with-pixel-format:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-25@pipe-a-edp-1-downscale-with-pixel-format.html">SKIP</a> ([i915#5176]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-skl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-skl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">INCOMPLETE</a> ([i915#2828])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb8/igt@kms_vrr@flipline.html">SKIP</a> ([fdo#109502])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-outp-complete:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglb8/igt@nouveau_crc@pipe-a-source-outp-complete.html">SKIP</a> ([i915#2530])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@nouveau_crc@pipe-a-source-outp-complete.html">SKIP</a> ([i915#2530])</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@nv_self_import_to_different_fd:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb8/igt@prime_nv_api@nv_self_import_to_different_fd.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@fbdev@unaligned-write.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-rkl-6/igt@fbdev@unaligned-write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-tglb5/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#232]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglb7/igt@gem_eio@unwedge-stress.html">PASS</a></p>
</li>
<li>
<p>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-tglu-1/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#3063] / [i915#3648]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglu-5/igt@gem_eio@unwedge-stress.html">PASS</a></p>
</li>
<li>
<p>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-1/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#3063]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-rkl-1/igt@gem_eio@unwedge-stress.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@vecs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-tglb3/igt@gem_exec_endless@dispatch@vecs0.html">INCOMPLETE</a> ([i915#3778]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglb6/igt@gem_exec_endless@dispatch@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-kbl7/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-kbl4/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-uc:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-uc.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-snb5/igt@gem_exec_flush@basic-batch-kernel-default-uc.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3-devices@smem:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-kbl6/igt@gem_exec_suspend@basic-s3-devices@smem.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-kbl3/igt@gem_exec_suspend@basic-s3-devices@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk5/igt@gem_exec_whisper@basic-queues-all.html">DMESG-WARN</a> ([i915#118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-glk3/igt@gem_exec_whisper@basic-queues-all.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@gem_exec_whisper@basic-queues-priority.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-rkl-2/igt@gem_exec_whisper@basic-queues-priority.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@close-race:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@gem_mmap_gtt@close-race.html">INCOMPLETE</a> ([i915#5080]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-rkl-2/igt@gem_mmap_gtt@close-race.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@gem_mmap_wc@set-cache-level.html">SKIP</a> ([i915#1850]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@blt-vs-render-ctxn:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-snb6/igt@gem_ppgtt@blt-vs-render-ctxn.html">DMESG-FAIL</a> ([i915#3692]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-snb5/igt@gem_ppgtt@blt-vs-render-ctxn.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict-all-engines:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk3/igt@gem_softpin@allocator-evict-all-engines.html">FAIL</a> ([i915#4171]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-glk4/igt@gem_softpin@allocator-evict-all-engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-tglu-3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglu-2/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@drm-resources-equal:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-2/igt@i915_pm_rpm@drm-resources-equal.html">SKIP</a> ([fdo#109308]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@i915_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915#1397]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-iclb4/igt@i915_pm_rpm@system-suspend-execbuf.html">INCOMPLETE</a> ([i915#5096]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb1/igt@i915_pm_rpm@system-suspend-execbuf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-0:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-tglu-6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">DMESG-WARN</a> ([i915#402]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-tglu-5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0.html">PASS</a> +29 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_ccs:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-kbl6/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_ccs.html">DMESG-WARN</a> ([i915#62] / [i915#92]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-kbl3/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_ccs.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-max:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-2/igt@kms_color@pipe-a-ctm-max.html">SKIP</a> ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-rkl-6/igt@kms_color@pipe-a-ctm-max.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html">PASS</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-iclb5/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html">SKIP</a> ([fdo#111825] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-rkl-6/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html">SKIP</a> ([fdo#111314] / [i915#4098] / [i915#4369]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html">PASS</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@kms_fbcon_fbt@psr.html">SKIP</a> ([fdo#110189] / [i915#3955]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-rkl-6/igt@kms_fbcon_fbt@psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">PASS</a> +3 similar issues</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">INCOMPLETE</a> ([i915#636]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-wf_vblank-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-kbl6/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#1982] / [i915#62] / [i915#92]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-kbl3/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-skl10/igt@kms_flip@plain-flip-ts-check@a-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-skl6/igt@kms_flip@plain-flip-ts-check@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">FAIL</a> ([i915#4911]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-glk2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html">INCOMPLETE</a> ([i915#3701]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html">FAIL</a> ([i915#2546]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/shard-glk6/ig">PASS</a></li>
</ul>
</li>
</ul>

</body>
</html>

--===============5755631354347868627==--
