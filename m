Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6454D4E4D0C
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 08:06:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9E4010E5CE;
	Wed, 23 Mar 2022 07:06:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D32DE10E3CB;
 Wed, 23 Mar 2022 07:06:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CDC8AAADD6;
 Wed, 23 Mar 2022 07:06:30 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1881965758193059041=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 23 Mar 2022 07:06:30 -0000
Message-ID: <164801919083.17991.16378821484264449250@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1647985054.git.jani.nikula@intel.com>
In-Reply-To: <cover.1647985054.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/edid=3A_overhaul_CEA_data_block_iteration?=
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

--===============1881965758193059041==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/edid: overhaul CEA data block iteration
URL   : https://patchwork.freedesktop.org/series/101659/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11397_full -> Patchwork_22648_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (12 -> 12)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22648_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_fence@expired-history:
    - {shard-rkl}:        [PASS][1] -> [INCOMPLETE][2] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@gem_exec_fence@expired-history.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-5/igt@gem_exec_fence@expired-history.html

  * igt@syncobj_timeline@wait-all-for-submit-snapshot:
    - {shard-rkl}:        [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-6/igt@syncobj_timeline@wait-all-for-submit-snapshot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-5/igt@syncobj_timeline@wait-all-for-submit-snapshot.html

  
Known issues
------------

  Here are the changes found in Patchwork_22648_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-hang@blt:
    - shard-skl:          NOTRUN -> [SKIP][5] ([fdo#109271]) +231 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl9/igt@gem_ctx_persistence@legacy-engines-hang@blt.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [PASS][6] -> [TIMEOUT][7] ([i915#2481] / [i915#3070])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-iclb1/igt@gem_eio@unwedge-stress.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-iclb4/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          [PASS][8] -> [INCOMPLETE][9] ([i915#4547])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-skl9/igt@gem_exec_capture@pi@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl8/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [PASS][10] -> [FAIL][11] ([i915#2842])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#2842]) +2 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-glk4/igt@gem_exec_fair@basic-pace@vecs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-glk5/igt@gem_exec_fair@basic-pace@vecs0.html
    - shard-iclb:         [PASS][14] -> [FAIL][15] ([i915#2842])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-iclb7/igt@gem_exec_fair@basic-pace@vecs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-iclb3/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][16] -> [SKIP][17] ([i915#2190])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-tglb2/igt@gem_huc_copy@huc-copy.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-skl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#4613]) +3 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl9/igt@gem_lmem_swapping@parallel-random.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][19] -> [DMESG-WARN][20] ([i915#1436] / [i915#716])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-glk8/igt@gen9_exec_parse@allowed-all.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-glk5/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][21] -> [DMESG-WARN][22] ([i915#1436] / [i915#716])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-skl1/igt@gen9_exec_parse@allowed-single.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl2/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#454])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][25] ([i915#5286])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-iclb6/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-tglb:         NOTRUN -> [SKIP][26] ([i915#5286])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][27] ([fdo#111614])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][28] ([i915#3743]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#3777]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#3886]) +10 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl4/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
    - shard-tglb:         NOTRUN -> [SKIP][31] ([i915#3689] / [i915#3886])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][32] ([fdo#111615] / [i915#3689]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3886])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-kbl7/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][34] ([i915#3689])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_ccs.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +16 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl6/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@dp-hpd-after-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-kbl7/igt@kms_chamelium@dp-hpd-after-suspend.html

  * igt@kms_color_chamelium@pipe-d-ctm-max:
    - shard-tglb:         NOTRUN -> [SKIP][37] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@kms_color_chamelium@pipe-d-ctm-max.html

  * igt@kms_content_protection@uevent:
    - shard-tglb:         NOTRUN -> [SKIP][38] ([i915#1063])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x32-random:
    - shard-tglb:         NOTRUN -> [SKIP][39] ([i915#3319])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-32x32-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][40] ([fdo#109279] / [i915#3359])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@kms_cursor_crc@pipe-b-cursor-512x512-offscreen.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-tglb:         NOTRUN -> [SKIP][41] ([fdo#109274] / [fdo#111825]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-iclb:         [PASS][42] -> [FAIL][43] ([i915#2346])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-4tiled:
    - shard-tglb:         NOTRUN -> [SKIP][44] ([i915#5287])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-4tiled.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [PASS][45] -> [DMESG-WARN][46] ([i915#180]) +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@plain-flip-ts-check@c-edp1:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([i915#2122]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-skl7/igt@kms_flip@plain-flip-ts-check@c-edp1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl10/igt@kms_flip@plain-flip-ts-check@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt:
    - shard-tglb:         NOTRUN -> [SKIP][49] ([fdo#109280] / [fdo#111825]) +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-tglb:         NOTRUN -> [SKIP][50] ([i915#3555])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#533]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - shard-kbl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#533])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-kbl7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][53] ([fdo#108145] / [i915#265]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][54] ([i915#265])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-d-constant-alpha-min:
    - shard-kbl:          NOTRUN -> [SKIP][55] ([fdo#109271]) +4 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-kbl7/igt@kms_plane_alpha_blend@pipe-d-constant-alpha-min.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale:
    - shard-iclb:         [PASS][56] -> [SKIP][57] ([i915#5235]) +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-iclb5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-iclb:         [PASS][58] -> [SKIP][59] ([fdo#109642] / [fdo#111068] / [i915#658])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-iclb7/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-tglb:         NOTRUN -> [SKIP][60] ([i915#1911])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-skl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#658]) +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl9/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][62] -> [SKIP][63] ([fdo#109441])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-iclb5/igt@kms_psr@psr2_dpms.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-tglb:         NOTRUN -> [SKIP][64] ([fdo#111615])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_vblank@pipe-a-query-forked:
    - shard-snb:          [PASS][65] -> [SKIP][66] ([fdo#109271]) +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-snb5/igt@kms_vblank@pipe-a-query-forked.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-snb7/igt@kms_vblank@pipe-a-query-forked.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-skl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#2437]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl10/igt@kms_writeback@writeback-pixel-formats.html

  * igt@prime_nv_api@nv_i915_import_twice_check_flink_name:
    - shard-tglb:         NOTRUN -> [SKIP][68] ([fdo#109291])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@prime_nv_api@nv_i915_import_twice_check_flink_name.html

  * igt@sysfs_clients@fair-0:
    - shard-skl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#2994]) +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl4/igt@sysfs_clients@fair-0.html
    - shard-tglb:         NOTRUN -> [SKIP][70] ([i915#2994])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@sysfs_clients@fair-0.html

  
#### Possible fixes ####

  * igt@drm_import_export@flink:
    - {shard-rkl}:        [DMESG-WARN][71] ([i915#5041]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@drm_import_export@flink.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-4/igt@drm_import_export@flink.html

  * igt@fbdev@nullptr:
    - {shard-rkl}:        [SKIP][73] ([i915#2582]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@fbdev@nullptr.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@fbdev@nullptr.html

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][75] ([i915#658]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-iclb5/igt@feature_discovery@psr2.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_ctx_persistence@many-contexts:
    - {shard-rkl}:        [FAIL][77] ([i915#2410]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@gem_ctx_persistence@many-contexts.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@unwedge-stress:
    - {shard-rkl}:        [TIMEOUT][79] ([i915#3063]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-6/igt@gem_eio@unwedge-stress.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [SKIP][81] ([i915#4525]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-iclb5/igt@gem_exec_balancer@parallel-balancer.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-apl:          [SKIP][83] ([fdo#109271]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-apl1/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          [FAIL][85] ([i915#2842]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - {shard-rkl}:        [FAIL][87] ([i915#2842]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [FAIL][89] ([i915#2851]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-kbl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_nop@basic-series:
    - shard-glk:          [DMESG-WARN][91] ([i915#118]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-glk3/igt@gem_exec_nop@basic-series.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-glk1/igt@gem_exec_nop@basic-series.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - {shard-rkl}:        [SKIP][93] ([i915#1397]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@i915_pm_rpm@i2c:
    - {shard-rkl}:        [SKIP][95] ([fdo#109308]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@i915_pm_rpm@i2c.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@i915_pm_rpm@i2c.html

  * igt@i915_selftest@live@hangcheck:
    - {shard-rkl}:        [INCOMPLETE][97] ([i915#2373]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@i915_selftest@live@hangcheck.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - {shard-tglu}:       [DMESG-WARN][99] ([i915#402]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-tglu-5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglu-3/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs:
    - {shard-rkl}:        ([SKIP][101], [SKIP][102]) ([i915#1845] / [i915#4098]) -> [PASS][103]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-4/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs.html

  * igt@kms_color@pipe-c-invalid-degamma-lut-sizes:
    - {shard-rkl}:        [SKIP][104] ([i915#4070]) -> [PASS][105] +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-1/igt@kms_color@pipe-c-invalid-degamma-lut-sizes.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-5/igt@kms_color@pipe-c-invalid-degamma-lut-sizes.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-random:
    - {shard-rkl}:        [SKIP][106] ([fdo#112022]) -> [PASS][107] +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-4/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html

  * igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge:
    - {shard-rkl}:        [SKIP][108] ([i915#1849] / [i915#4098]) -> [PASS][109] +2 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - {shard-rkl}:        [SKIP][110] ([fdo#111825]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-iclb:         [FAIL][112] ([i915#2346]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-iclb3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled:
    - {shard-rkl}:        [SKIP][114] ([i915#4098] / [i915#4369]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-4/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled:
    - {shard-rkl}:        ([SKIP][116], [SKIP][117]) ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][118]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled:
    - {shard-rkl}:        [SKIP][119] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][120] +4 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-iclb:         [SKIP][121] ([i915#3701]) -> [PASS][122] +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling:
    - {shard-rkl}:        [INCOMPLETE][123] ([i915#3701]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt:
    - {shard-rkl}:        ([SKIP][125], [SKIP][126]) ([i915#1849] / [i915#4098]) -> [PASS][127] +2 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:
    - {shard-rkl}:        [SKIP][128] ([i915#4098]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - {shard-rkl}:        [SKIP][130] ([i915#1849]) -> [PASS][131] +6 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_invalid_mode@bad-htotal:
    - {shard-rkl}:        [SKIP][132] ([i915#4278]) -> [PASS][133] +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@kms_invalid_mode@bad-htotal.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@kms_invalid_mode@bad-htotal.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-64:
    - {shard-rkl}:        [SKIP][134] ([i915#1845] / [i915#4098]) -> [PASS][135] +19 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@kms_plane_cursor@pipe-a-overlay-size-64.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@kms_plane_cursor@pipe-a-overlay-size-64.html

  * igt@kms_psr@dpms:
    - {shard-rkl}:        [SKIP][136] ([i915#1072]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@kms_psr@dpms.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@kms_psr@dpms.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][138] ([fdo#109441]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-iclb5/igt@kms_psr@psr2_cursor_render.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@perf@polling-parameterized:
    - {shard-rkl}:        [FAIL][140] ([i915#1542]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-1/igt@perf@polling-parameterized.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-5/igt@perf@polling-parameterized.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [FAIL][142] ([i915#1722]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-skl7/igt@perf@polling-small-buf.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl4/igt@perf@polling-small-buf.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-apl:          [FAIL][144] ([i915#1755]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-apl2/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-apl1/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Warnings ####

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [FAIL][146] ([i915#232]) -> [TIMEOUT][147] ([i915#3063] / [i915#3648])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-tglb3/igt@gem_eio@unwedge-stress.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/index.html

--===============1881965758193059041==
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
<tr><td><b>Series:</b></td><td>drm/edid: overhaul CEA data block iteration</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101659/">https://patchwork.freedesktop.org/series/101659/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11397_full -&gt; Patchwork_22648_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (12 -&gt; 12)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22648_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_fence@expired-history:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@gem_exec_fence@expired-history.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-5/igt@gem_exec_fence@expired-history.html">INCOMPLETE</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-for-submit-snapshot:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-6/igt@syncobj_timeline@wait-all-for-submit-snapshot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-5/igt@syncobj_timeline@wait-all-for-submit-snapshot.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22648_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hang@blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl9/igt@gem_ctx_persistence@legacy-engines-hang@blt.html">SKIP</a> ([fdo#109271]) +231 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-iclb1/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-iclb4/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2481] / [i915#3070])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-skl9/igt@gem_exec_capture@pi@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl8/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-glk4/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-glk5/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) +2 similar issues</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-iclb7/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-iclb3/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-tglb2/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl9/igt@gem_lmem_swapping@parallel-random.html">SKIP</a> ([fdo#109271] / [i915#4613]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-glk8/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-glk5/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-skl1/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl2/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-iclb1/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-iclb4/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-iclb6/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@kms_big_fb@linear-64bpp-rotate-90.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl4/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +10 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-kbl7/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_ccs.html">SKIP</a> ([i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl6/igt@kms_chamelium@dp-crc-multiple.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-after-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-kbl7/igt@kms_chamelium@dp-hpd-after-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-max:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@kms_color_chamelium@pipe-d-ctm-max.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@kms_content_protection@uevent.html">SKIP</a> ([i915#1063])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x32-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-32x32-random.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@kms_cursor_crc@pipe-b-cursor-512x512-offscreen.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html">SKIP</a> ([fdo#109274] / [fdo#111825]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-4tiled:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-4tiled.html">SKIP</a> ([i915#5287])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-skl7/igt@kms_flip@plain-flip-ts-check@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl10/igt@kms_flip@plain-flip-ts-check@c-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html">SKIP</a> ([fdo#109280] / [fdo#111825]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-kbl7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-constant-alpha-min:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-kbl7/igt@kms_plane_alpha_blend@pipe-d-constant-alpha-min.html">SKIP</a> ([fdo#109271]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-iclb5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html">SKIP</a> ([i915#5235]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-iclb7/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> ([fdo#109642] / [fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> ([i915#1911])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl9/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-iclb2/igt@kms_psr@psr2_dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-iclb5/igt@kms_psr@psr2_dpms.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-query-forked:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-snb5/igt@kms_vblank@pipe-a-query-forked.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-snb7/igt@kms_vblank@pipe-a-query-forked.html">SKIP</a> ([fdo#109271]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl10/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> ([fdo#109271] / [i915#2437]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@nv_i915_import_twice_check_flink_name:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@prime_nv_api@nv_i915_import_twice_check_flink_name.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl4/igt@sysfs_clients@fair-0.html">SKIP</a> ([fdo#109271] / [i915#2994]) +2 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglb8/igt@sysfs_clients@fair-0.html">SKIP</a> ([i915#2994])</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_import_export@flink:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@drm_import_export@flink.html">DMESG-WARN</a> ([i915#5041]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-4/igt@drm_import_export@flink.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@fbdev@nullptr.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@fbdev@nullptr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-iclb5/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> ([i915#2410]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@gem_ctx_persistence@many-contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#3063]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-1/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-iclb5/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> ([i915#4525]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-apl1/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-kbl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2851]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_nop@basic-series:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-glk3/igt@gem_exec_nop@basic-series.html">DMESG-WARN</a> ([i915#118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-glk1/igt@gem_exec_nop@basic-series.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> ([i915#1397]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@i2c:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@i915_pm_rpm@i2c.html">SKIP</a> ([fdo#109308]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@i915_pm_rpm@i2c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#2373]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-0:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-tglu-5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">DMESG-WARN</a> ([i915#402]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-tglu-3/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-4/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs.html">SKIP</a>) ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-invalid-degamma-lut-sizes:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-1/igt@kms_color@pipe-c-invalid-degamma-lut-sizes.html">SKIP</a> ([i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-5/igt@kms_color@pipe-c-invalid-degamma-lut-sizes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-random:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-4/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html">SKIP</a> ([fdo#112022]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge.html">SKIP</a> ([i915#1849] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">SKIP</a> ([fdo#111825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-iclb3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-4/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html">SKIP</a> ([i915#4098] / [i915#4369]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html">SKIP</a>) ([fdo#111314] / [i915#4098] / [i915#4369]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html">SKIP</a> ([fdo#111314] / [i915#4098] / [i915#4369]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#3701]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html">INCOMPLETE</a> ([i915#3701]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html">SKIP</a>) ([i915#1849] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html">SKIP</a> ([i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-htotal:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@kms_invalid_mode@bad-htotal.html">SKIP</a> ([i915#4278]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@kms_invalid_mode@bad-htotal.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-overlay-size-64:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@kms_plane_cursor@pipe-a-overlay-size-64.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@kms_plane_cursor@pipe-a-overlay-size-64.html">PASS</a> +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@dpms:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-5/igt@kms_psr@dpms.html">SKIP</a> ([i915#1072]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-6/igt@kms_psr@dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-iclb5/igt@kms_psr@psr2_cursor_render.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-rkl-1/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-rkl-5/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-skl7/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1722]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-skl4/igt@perf@polling-small-buf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@vecs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-apl2/igt@sysfs_timeslice_duration@timeout@vecs0.html">FAIL</a> ([i915#1755]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-apl1/igt@sysfs_timeslice_duration@timeout@vecs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_eio@unwedge-stress:<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/shard-tglb3/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#232]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/shard-">TIMEOUT</a> ([i915#3063] / [i915#3648])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============1881965758193059041==--
