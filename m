Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA5E46A1B6
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Dec 2021 17:46:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B86D46FA12;
	Mon,  6 Dec 2021 16:46:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5B0076F999;
 Mon,  6 Dec 2021 16:46:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 534BFA0118;
 Mon,  6 Dec 2021 16:46:36 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3243383439536412450=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Mon, 06 Dec 2021 16:46:36 -0000
Message-ID: <163880919630.15873.11251798890649607119@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211206112539.3149779-1-matthew.auld@intel.com>
In-Reply-To: <20211206112539.3149779-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915/migrate=3A_don=27t_check_t?=
 =?utf-8?q?he_scratch_page?=
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

--===============3243383439536412450==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/4] drm/i915/migrate: don't check the scratch page
URL   : https://patchwork.freedesktop.org/series/97610/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10965_full -> Patchwork_21762_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21762_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21762_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21762_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@vma:
    - shard-skl:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@i915_selftest@live@vma.html

  
Known issues
------------

  Here are the changes found in Patchwork_21762_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - shard-kbl:          [PASS][2] -> [DMESG-WARN][3] ([i915#203] / [i915#262] / [i915#62] / [i915#92])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl7/igt@debugfs_test@read_all_entries.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@debugfs_test@read_all_entries.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-tglb:         [PASS][4] -> [TIMEOUT][5] ([i915#3063])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-tglb3/igt@gem_eio@in-flight-contexts-10ms.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb8/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_exec_capture@pi@bcs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][6] ([i915#4547])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl10/igt@gem_exec_capture@pi@bcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#2842])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-iclb:         [PASS][9] -> [FAIL][10] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb2/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#2842]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][13] ([i915#2842]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-tglb:         [PASS][14] -> [FAIL][15] ([i915#2842])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-tglb1/igt@gem_exec_fair@basic-pace@vecs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb2/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-kbl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#4613])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-apl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#4613])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl6/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-skl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#4613])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_mmap_gtt@coherency:
    - shard-tglb:         NOTRUN -> [SKIP][19] ([fdo#111656])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@gem_mmap_gtt@coherency.html

  * igt@gen7_exec_parse@cmd-crossing-page:
    - shard-tglb:         NOTRUN -> [SKIP][20] ([fdo#109289])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@gen7_exec_parse@cmd-crossing-page.html
    - shard-iclb:         NOTRUN -> [SKIP][21] ([fdo#109289])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb6/igt@gen7_exec_parse@cmd-crossing-page.html

  * igt@i915_module_load@reload-no-display:
    - shard-kbl:          [PASS][22] -> [DMESG-WARN][23] ([i915#203])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl7/igt@i915_module_load@reload-no-display.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@i915_module_load@reload-no-display.html

  * igt@i915_pm_sseu@full-enable:
    - shard-tglb:         NOTRUN -> [SKIP][24] ([i915#4387])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][25] ([i915#1886] / [i915#2291])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@i915_selftest@live@gt_pm.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3777]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
    - shard-tglb:         NOTRUN -> [SKIP][27] ([fdo#111615])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][28] ([fdo#109278] / [i915#3886])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html
    - shard-tglb:         NOTRUN -> [SKIP][29] ([i915#3689] / [i915#3886])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#3886])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3886]) +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl6/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][32] ([i915#3689]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#111615] / [i915#3689])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-apl:          NOTRUN -> [SKIP][34] ([fdo#109271]) +64 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl6/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium@dp-hpd-storm-disable:
    - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@kms_chamelium@dp-hpd-storm-disable.html

  * igt@kms_chamelium@hdmi-hpd-storm-disable:
    - shard-kbl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@kms_chamelium@hdmi-hpd-storm-disable.html

  * igt@kms_color_chamelium@pipe-b-gamma:
    - shard-iclb:         NOTRUN -> [SKIP][37] ([fdo#109284] / [fdo#111827])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb6/igt@kms_color_chamelium@pipe-b-gamma.html

  * igt@kms_color_chamelium@pipe-c-ctm-max:
    - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl7/igt@kms_color_chamelium@pipe-c-ctm-max.html

  * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
    - shard-tglb:         NOTRUN -> [SKIP][39] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          NOTRUN -> [TIMEOUT][40] ([i915#1319])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl6/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][41] -> [DMESG-WARN][42] ([i915#180]) +7 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][43] ([i915#3359])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x170-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][44] ([fdo#109279] / [i915#3359]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-512x170-onscreen.html

  * igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109278])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb6/igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge.html

  * igt@kms_cursor_legacy@pipe-c-single-bo:
    - shard-kbl:          [PASS][46] -> [DMESG-WARN][47] ([i915#203] / [i915#62] / [i915#92]) +5 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl7/igt@kms_cursor_legacy@pipe-c-single-bo.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@kms_cursor_legacy@pipe-c-single-bo.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:
    - shard-glk:          [PASS][48] -> [FAIL][49] ([i915#2122])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [PASS][50] -> [DMESG-WARN][51] ([i915#180])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-skl:          [PASS][52] -> [FAIL][53] ([i915#2122])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-glk:          [PASS][54] -> [FAIL][55] ([i915#1888] / [i915#2546])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-glk3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-iclb:         NOTRUN -> [SKIP][56] ([fdo#109280])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-tglb:         NOTRUN -> [SKIP][57] ([fdo#111825]) +10 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render:
    - shard-kbl:          NOTRUN -> [SKIP][58] ([fdo#109271]) +9 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][59] -> [FAIL][60] ([i915#1188])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#533])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][62] ([fdo#108145] / [i915#265])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid:
    - shard-kbl:          [PASS][63] -> [DMESG-WARN][64] ([i915#180] / [i915#203] / [i915#62] / [i915#92]) +10 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][65] -> [FAIL][66] ([fdo#108145] / [i915#265])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
    - shard-kbl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#658])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#658])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl6/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][69] -> [SKIP][70] ([fdo#109441]) +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-tglb:         NOTRUN -> [FAIL][71] ([i915#132] / [i915#3467])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][72] -> [FAIL][73] ([i915#31])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl3/igt@kms_setmode@basic.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl1/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][74] -> [DMESG-WARN][75] ([i915#180] / [i915#295])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-skl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#533])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_vrr@flip-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([fdo#109502])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb6/igt@kms_vrr@flip-suspend.html

  * igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:
    - shard-skl:          NOTRUN -> [SKIP][78] ([fdo#109271]) +32 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@nouveau_crc@ctx-flip-threshold-reset-after-capture.html

  * igt@perf_pmu@module-unload:
    - shard-skl:          [PASS][79] -> [DMESG-WARN][80] ([i915#1982] / [i915#262])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl8/igt@perf_pmu@module-unload.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl6/igt@perf_pmu@module-unload.html

  * igt@prime_nv_pcopy@test3_5:
    - shard-tglb:         NOTRUN -> [SKIP][81] ([fdo#109291])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@prime_nv_pcopy@test3_5.html

  * igt@prime_vgem@fence-read-hang:
    - shard-tglb:         NOTRUN -> [SKIP][82] ([fdo#109295])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@prime_vgem@fence-read-hang.html

  * igt@sysfs_clients@fair-3:
    - shard-skl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#2994])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@recycle:
    - shard-apl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#2994]) +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl2/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@split-25:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([i915#2994])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb6/igt@sysfs_clients@split-25.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr2:
    - {shard-rkl}:        [SKIP][86] ([i915#658]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-4/igt@feature_discovery@psr2.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-6/igt@feature_discovery@psr2.html

  * igt@gem_eio@unwedge-stress:
    - {shard-rkl}:        [TIMEOUT][88] ([i915#3063]) -> ([PASS][89], [PASS][90])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-4/igt@gem_eio@unwedge-stress.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-2/igt@gem_eio@unwedge-stress.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-4/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          [INCOMPLETE][91] ([i915#4547]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl3/igt@gem_exec_capture@pi@rcs0.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl10/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][93] ([i915#2846]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk8/igt@gem_exec_fair@basic-deadline.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-glk4/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-apl:          [SKIP][95] ([fdo#109271]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl7/igt@gem_exec_fair@basic-none-share@rcs0.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl7/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - {shard-rkl}:        ([FAIL][97], [FAIL][98]) ([i915#2842] / [i915#2849]) -> [PASS][99]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-4/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-1/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [FAIL][100] ([i915#2842]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [FAIL][102] ([i915#2842]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][104] ([i915#2849]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_whisper@basic-forked-all:
    - shard-glk:          [DMESG-WARN][106] ([i915#118]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk2/igt@gem_exec_whisper@basic-forked-all.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-glk7/igt@gem_exec_whisper@basic-forked-all.html

  * igt@gem_workarounds@suspend-resume:
    - shard-skl:          [INCOMPLETE][108] ([i915#198]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl3/igt@gem_workarounds@suspend-resume.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl8/igt@gem_workarounds@suspend-resume.html

  * igt@i915_pm_rpm@pm-tiling:
    - {shard-rkl}:        [SKIP][110] ([fdo#109308]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-2/igt@i915_pm_rpm@pm-tiling.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-6/igt@i915_pm_rpm@pm-tiling.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][112] ([i915#118] / [i915#1888]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-glk3/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs:
    - {shard-rkl}:        [SKIP][114] ([i915#1845]) -> [PASS][115] +5 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-2/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-6/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][116] ([i915#2346]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-iclb:         [FAIL][118] ([i915#2346]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@pipe-c-torture-move:
    - {shard-rkl}:        [SKIP][120] ([i915#4070]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-2/igt@kms_cursor_legacy@pipe-c-torture-move.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-4/igt@kms_cursor_legacy@pipe-c-torture-move.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][122] ([i915#180]) -> [PASS][123] +1 similar issue
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-apl:          [DMESG-WARN][124] ([i915#180]) -> [PASS][125] +3 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [FAIL][126] ([i915#2122]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
    - {shard-rkl}:        [SKIP][128] ([i915#4098]) -> [PASS][129] +4 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt:
    - {shard-rkl}:        [SKIP][130] ([i915#1849]) -> [PASS][131] +2 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][132] ([i915#1188]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][134] ([fdo#108145] / [i915#265]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@cursor_render:
    - {shard-rkl}:        [SKIP][136] ([i915#1072]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-4/igt@kms_psr@cursor_render.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-6/igt@kms_psr@cursor_render.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][138] ([fdo#109441]) -> [PASS][139] +3 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb6/igt@kms_psr@psr2_cursor_plane_onoff.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_setmode@basic:
    - shard-glk:          [FAIL][140] ([i915#31]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk3/igt@kms_setmode@basic.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-glk1/igt@kms_setmode@basic.html

  * igt@perf@short-reads:
    - shard-skl:          [FAIL][142] ([i915#51]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl10/igt@perf@short-reads.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl7/igt@perf@short-reads.html

  
#### Warnings ####

  * igt@gen9_exec_parse@bb-oversize:
    - shard-skl:          [SKIP][144] ([fdo#109271]) -> [SKIP][145] ([fdo#109271] / [i915#1888])
   [144]: https://intel-gf

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/index.html

--===============3243383439536412450==
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
<tr><td><b>Series:</b></td><td>series starting with [1/4] drm/i915/migrate: don&#39;t check the scratch page</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/97610/">https://patchwork.freedesktop.org/series/97610/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10965_full -&gt; Patchwork_21762_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21762_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21762_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21762_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@vma:<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@i915_selftest@live@vma.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21762_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl7/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> ([i915#203] / [i915#262] / [i915#62] / [i915#92])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-tglb3/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb8/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT</a> ([i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@bcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl10/igt@gem_exec_capture@pi@bcs0.html">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb2/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-tglb1/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb2/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@gem_lmem_swapping@heavy-verify-random.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl6/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@gem_lmem_swapping@smem-oom.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@gem_mmap_gtt@coherency.html">SKIP</a> ([fdo#111656])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@cmd-crossing-page:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@gen7_exec_parse@cmd-crossing-page.html">SKIP</a> ([fdo#109289])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb6/igt@gen7_exec_parse@cmd-crossing-page.html">SKIP</a> ([fdo#109289])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-no-display:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl7/igt@i915_module_load@reload-no-display.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@i915_module_load@reload-no-display.html">DMESG-WARN</a> ([i915#203])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@i915_pm_sseu@full-enable.html">SKIP</a> ([i915#4387])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> ([i915#1886] / [i915#2291])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl6/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl6/igt@kms_cdclk@mode-transition.html">SKIP</a> ([fdo#109271]) +64 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm-disable:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@kms_chamelium@dp-hpd-storm-disable.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@kms_chamelium@hdmi-hpd-storm-disable.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-gamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb6/igt@kms_color_chamelium@pipe-b-gamma.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl7/igt@kms_color_chamelium@pipe-c-ctm-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl6/igt@kms_content_protection@legacy.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</a> ([i915#180]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x170-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-512x170-onscreen.html">SKIP</a> ([fdo#109279] / [i915#3359]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb6/igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge.html">SKIP</a> ([fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-c-single-bo:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl7/igt@kms_cursor_legacy@pipe-c-single-bo.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@kms_cursor_legacy@pipe-c-single-bo.html">DMESG-WARN</a> ([i915#203] / [i915#62] / [i915#92]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-glk3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">FAIL</a> ([i915#1888] / [i915#2546])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109280])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#111825]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render.html">SKIP</a> ([fdo#109271]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid.html">DMESG-WARN</a> ([i915#180] / [i915#203] / [i915#62] / [i915#92]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl6/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> ([fdo#109441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_psr@psr2_cursor_render.html">FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl3/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl1/igt@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DMESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@kms_vblank@pipe-d-wait-idle.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb6/igt@kms_vrr@flip-suspend.html">SKIP</a> ([fdo#109502])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@nouveau_crc@ctx-flip-threshold-reset-after-capture.html">SKIP</a> ([fdo#109271]) +32 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl8/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl6/igt@perf_pmu@module-unload.html">DMESG-WARN</a> ([i915#1982] / [i915#262])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_5:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@prime_nv_pcopy@test3_5.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@prime_vgem@fence-read-hang.html">SKIP</a> ([fdo#109295])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@sysfs_clients@fair-3.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl2/igt@sysfs_clients@recycle.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb6/igt@sysfs_clients@split-25.html">SKIP</a> ([i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-4/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-6/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-4/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#3063]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-2/igt@gem_eio@unwedge-stress.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-4/igt@gem_eio@unwedge-stress.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl3/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> ([i915#4547]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl10/igt@gem_exec_capture@pi@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk8/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-glk4/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl7/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl7/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-4/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a>) ([i915#2842] / [i915#2849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-1/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk2/igt@gem_exec_whisper@basic-forked-all.html">DMESG-WARN</a> ([i915#118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-glk7/igt@gem_exec_whisper@basic-forked-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl3/igt@gem_workarounds@suspend-resume.html">INCOMPLETE</a> ([i915#198]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl8/igt@gem_workarounds@suspend-resume.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@pm-tiling:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-2/igt@i915_pm_rpm@pm-tiling.html">SKIP</a> ([fdo#109308]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-6/igt@i915_pm_rpm@pm-tiling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">DMESG-FAIL</a> ([i915#118] / [i915#1888]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-glk3/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-2/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-6/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-c-torture-move:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-2/igt@kms_cursor_legacy@pipe-c-torture-move.html">SKIP</a> ([i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-4/igt@kms_cursor_legacy@pipe-c-torture-move.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html">SKIP</a> ([i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_render:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-4/igt@kms_psr@cursor_render.html">SKIP</a> ([i915#1072]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-6/igt@kms_psr@cursor_render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb6/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk3/igt@kms_setmode@basic.html">FAIL</a> ([i915#31]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-glk1/igt@kms_setmode@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@short-reads:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl10/igt@perf@short-reads.html">FAIL</a> ([i915#51]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl7/igt@perf@short-reads.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gen9_exec_parse@bb-oversize:<ul>
<li>shard-skl:          <a href="https://intel-gf">SKIP</a> ([fdo#109271]) -&gt; [SKIP][145] ([fdo#109271] / [i915#1888])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3243383439536412450==--
