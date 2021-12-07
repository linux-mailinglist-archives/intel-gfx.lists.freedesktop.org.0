Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C9146B1C4
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Dec 2021 05:15:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A81D6EC17;
	Tue,  7 Dec 2021 04:15:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 501F46EC17;
 Tue,  7 Dec 2021 04:15:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4872AAADDD;
 Tue,  7 Dec 2021 04:15:36 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0238754233662110781=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Tue, 07 Dec 2021 04:15:36 -0000
Message-ID: <163885053626.10818.665635094875509175@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211207004542.24298-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20211207004542.24298-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/pmu=3A_Fix_wakeref_leak_in_PMU_busyness_during_reset?=
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

--===============0238754233662110781==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/pmu: Fix wakeref leak in PMU busyness during reset
URL   : https://patchwork.freedesktop.org/series/97635/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10965_full -> Patchwork_21768_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21768_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21768_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21768_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@vma:
    - shard-skl:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl4/igt@i915_selftest@live@vma.html

  
Known issues
------------

  Here are the changes found in Patchwork_21768_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_capture@pi@vcs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][2] ([i915#4547])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl8/igt@gem_exec_capture@pi@vcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [PASS][3] -> [FAIL][4] ([i915#2842])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl3/igt@gem_exec_fair@basic-none@vcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#2842])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-iclb:         [PASS][7] -> [FAIL][8] ([i915#2842])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb1/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][11] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html
    - shard-kbl:          [PASS][12] -> [SKIP][13] ([fdo#109271])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-tglb:         [PASS][14] -> [FAIL][15] ([i915#2842]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-tglb1/igt@gem_exec_fair@basic-pace@vecs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-tglb1/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-apl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#4613]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl7/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-skl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#4613])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl8/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_mmap_gtt@coherency:
    - shard-tglb:         NOTRUN -> [SKIP][18] ([fdo#111656])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-tglb8/igt@gem_mmap_gtt@coherency.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-apl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#3323])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl1/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gen7_exec_parse@cmd-crossing-page:
    - shard-tglb:         NOTRUN -> [SKIP][20] ([fdo#109289])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-tglb8/igt@gen7_exec_parse@cmd-crossing-page.html
    - shard-iclb:         NOTRUN -> [SKIP][21] ([fdo#109289])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb3/igt@gen7_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][22] -> [DMESG-WARN][23] ([i915#1436] / [i915#716])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl4/igt@gen9_exec_parse@allowed-single.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl1/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_sseu@full-enable:
    - shard-tglb:         NOTRUN -> [SKIP][24] ([i915#4387])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-tglb8/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][25] ([i915#1886] / [i915#2291])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl4/igt@i915_selftest@live@gt_pm.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-skl:          [PASS][26] -> [INCOMPLETE][27] ([i915#198])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl10/igt@i915_suspend@fence-restore-untiled.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl8/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3777]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
    - shard-tglb:         NOTRUN -> [SKIP][29] ([fdo#111615])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-tglb8/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#109278] / [i915#3886])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb3/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3886]) +4 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl3/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][32] ([i915#3689]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-tglb8/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#111615] / [i915#3689])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-tglb8/igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs.html

  * igt@kms_chamelium@dp-hpd-storm-disable:
    - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl8/igt@kms_chamelium@dp-hpd-storm-disable.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          NOTRUN -> [DMESG-WARN][35] ([i915#1982])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl8/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-b-gamma:
    - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#109284] / [fdo#111827])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb3/igt@kms_color_chamelium@pipe-b-gamma.html

  * igt@kms_color_chamelium@pipe-c-ctm-max:
    - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl1/igt@kms_color_chamelium@pipe-c-ctm-max.html

  * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
    - shard-tglb:         NOTRUN -> [SKIP][38] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-tglb8/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          NOTRUN -> [TIMEOUT][39] ([i915#1319])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl3/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][40] ([i915#3359])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x170-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][41] ([fdo#109279] / [i915#3359]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-tglb8/igt@kms_cursor_crc@pipe-d-cursor-512x170-onscreen.html

  * igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge:
    - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109278])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb3/igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-iclb:         [PASS][43] -> [FAIL][44] ([i915#2370])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb2/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - shard-glk:          [PASS][45] -> [FAIL][46] ([i915#4534])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk7/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-glk1/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][47] -> [INCOMPLETE][48] ([i915#180] / [i915#636])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-iclb:         [PASS][49] -> [SKIP][50] ([i915#3701])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-glk:          [PASS][51] -> [FAIL][52] ([i915#1888] / [i915#2546])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-glk3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109280])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-tglb:         NOTRUN -> [SKIP][54] ([fdo#111825]) +10 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][55] -> [FAIL][56] ([i915#1188])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#533])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl3/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][58] -> [DMESG-WARN][59] ([i915#180]) +3 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          NOTRUN -> [FAIL][60] ([fdo#108145] / [i915#265])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][61] ([fdo#108145] / [i915#265]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-a-scaler-with-clipping-clamping:
    - shard-iclb:         [PASS][62] -> [DMESG-WARN][63] ([i915#1226])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb1/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-a-scaler-with-clipping-clamping.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb2/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-a-scaler-with-clipping-clamping.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#658]) +2 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl7/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][65] -> [SKIP][66] ([fdo#109441]) +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-tglb:         NOTRUN -> [FAIL][67] ([i915#132] / [i915#3467])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-tglb8/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][68] -> [FAIL][69] ([i915#31])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl3/igt@kms_setmode@basic.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl1/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-apl:          [PASS][70] -> [DMESG-WARN][71] ([i915#180])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl8/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-skl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#533])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl4/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_vrr@flip-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][73] ([fdo#109502])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb3/igt@kms_vrr@flip-suspend.html

  * igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:
    - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271]) +32 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl8/igt@nouveau_crc@ctx-flip-threshold-reset-after-capture.html

  * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
    - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271]) +140 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl1/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html

  * igt@perf@polling-parameterized:
    - shard-iclb:         [PASS][76] -> [FAIL][77] ([i915#1542])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb5/igt@perf@polling-parameterized.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb4/igt@perf@polling-parameterized.html

  * igt@prime_nv_pcopy@test3_5:
    - shard-tglb:         NOTRUN -> [SKIP][78] ([fdo#109291])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-tglb8/igt@prime_nv_pcopy@test3_5.html

  * igt@prime_vgem@fence-read-hang:
    - shard-tglb:         NOTRUN -> [SKIP][79] ([fdo#109295])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-tglb8/igt@prime_vgem@fence-read-hang.html

  * igt@sysfs_clients@fair-3:
    - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#2994])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl8/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@pidname:
    - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#2994]) +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl1/igt@sysfs_clients@pidname.html

  * igt@sysfs_clients@split-25:
    - shard-iclb:         NOTRUN -> [SKIP][82] ([i915#2994])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb3/igt@sysfs_clients@split-25.html

  
#### Possible fixes ####

  * igt@drm_read@invalid-buffer:
    - {shard-rkl}:        [SKIP][83] ([i915#1845] / [i915#4098]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@drm_read@invalid-buffer.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-6/igt@drm_read@invalid-buffer.html

  * igt@fbdev@read:
    - {shard-rkl}:        [SKIP][85] ([i915#2582]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@fbdev@read.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-6/igt@fbdev@read.html

  * igt@gem_eio@unwedge-stress:
    - shard-skl:          [TIMEOUT][87] ([i915#3063]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl9/igt@gem_eio@unwedge-stress.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl6/igt@gem_eio@unwedge-stress.html
    - {shard-rkl}:        [TIMEOUT][89] ([i915#3063]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-4/igt@gem_eio@unwedge-stress.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-4/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          [INCOMPLETE][91] ([i915#4547]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl3/igt@gem_exec_capture@pi@rcs0.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl8/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [FAIL][93] ([i915#2842]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk2/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][95] ([i915#2842]) -> [PASS][96] +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [FAIL][97] ([i915#2842]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][99] ([i915#2842]) -> [PASS][100] +2 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-iclb:         [FAIL][101] ([i915#2842]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb3/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_workarounds@suspend-resume:
    - shard-skl:          [INCOMPLETE][103] ([i915#198]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl3/igt@gem_workarounds@suspend-resume.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl1/igt@gem_workarounds@suspend-resume.html

  * igt@i915_pm_dc@dc6-psr:
    - {shard-rkl}:        [SKIP][105] ([i915#658]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@i915_pm_dc@dc6-psr.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - {shard-rkl}:        [SKIP][107] ([i915#1397]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@i915_pm_rpm@dpms-lpsp.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-glk:          [DMESG-WARN][109] ([i915#118]) -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk8/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-glk5/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][111] ([i915#118] / [i915#1888]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-glk3/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-addfb-size-overflow:
    - {shard-rkl}:        [SKIP][113] ([i915#1845]) -> [PASS][114] +20 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_big_fb@y-tiled-addfb-size-overflow.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-6/igt@kms_big_fb@y-tiled-addfb-size-overflow.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - {shard-rkl}:        [SKIP][115] ([fdo#112022] / [i915#4070]) -> [PASS][116] +3 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen:
    - shard-glk:          [FAIL][117] ([i915#3444]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk1/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-glk9/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-iclb:         [FAIL][119] ([i915#2346]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - {shard-rkl}:        [SKIP][121] ([fdo#111825] / [i915#4070]) -> [PASS][122] +3 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled:
    - {shard-rkl}:        [SKIP][123] ([fdo#111314]) -> [PASS][124] +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - {shard-rkl}:        [SKIP][125] ([fdo#110189] / [i915#3955]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-apl:          [DMESG-WARN][127] ([i915#180]) -> [PASS][128] +5 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:
    - {shard-rkl}:        [SKIP][129] ([i915#1849]) -> [PASS][130] +16 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_invalid_mode@zero-hdisplay:
    - {shard-rkl}:        [SKIP][131] ([i915#4278]) -> [PASS][132] +1 similar issue
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_invalid_mode@zero-hdisplay.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-6/igt@kms_invalid_mode@zero-hdisplay.html

  * igt@kms_plane@plane-panning-bottom-right@pipe-b-planes:
    - {shard-rkl}:        [SKIP][133] ([i915#3558]) -> [PASS][134] +1 similar issue
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_plane@plane-panning-bottom-right@pipe-b-planes.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid:
    - {shard-rkl}:        [SKIP][135] ([i915#1849] / [i915#4070]) -> [PASS][136] +1 similar issue
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-y:
    - {shard-rkl}:        [SKIP][137] ([i915#3558] / [i915#4070]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html

  * igt@kms_psr@primary_mmap_gtt:
    - {shard-rkl}:        [SKIP][139] ([i915#1072]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_psr@primary_mmap_gtt.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-6/igt@kms_psr@primary_mmap_gtt.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][141] ([fdo#109441]) -> [PASS][142] +3 similar issues
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb1/igt@kms_psr@psr2_no_drrs.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_setmode@basic:
    - shard-glk:          [FAIL][143] ([i915#31]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk3/igt@kms_setmode@basic.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-glk7/igt@kms_setmode@basic.html

  * igt@perf@short-reads:
    - shard-skl:          [FAIL][145] ([i915#51]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl10/igt@perf@short-reads.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl8/igt@perf@short-reads.html

  
#### Warnings ####

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/index.html

--===============0238754233662110781==
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
<tr><td><b>Series:</b></td><td>drm/i915/pmu: Fix wakeref leak in PMU busyness during reset</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/97635/">https://patchwork.freedesktop.org/series/97635/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10965_full -&gt; Patchwork_21768_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21768_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21768_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21768_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@vma:<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl4/igt@i915_selftest@live@vma.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21768_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_capture@pi@vcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl8/igt@gem_exec_capture@pi@vcs0.html">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl3/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb1/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842])</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html">SKIP</a> ([fdo#109271])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-tglb1/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-tglb1/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl7/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl8/igt@gem_lmem_swapping@smem-oom.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-tglb8/igt@gem_mmap_gtt@coherency.html">SKIP</a> ([fdo#111656])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl1/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@cmd-crossing-page:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-tglb8/igt@gen7_exec_parse@cmd-crossing-page.html">SKIP</a> ([fdo#109289])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb3/igt@gen7_exec_parse@cmd-crossing-page.html">SKIP</a> ([fdo#109289])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl4/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl1/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-tglb8/igt@i915_pm_sseu@full-enable.html">SKIP</a> ([i915#4387])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl4/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> ([i915#1886] / [i915#2291])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl10/igt@i915_suspend@fence-restore-untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl8/igt@i915_suspend@fence-restore-untiled.html">INCOMPLETE</a> ([i915#198])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-tglb8/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb3/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl3/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-tglb8/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-tglb8/igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm-disable:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl8/igt@kms_chamelium@dp-hpd-storm-disable.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl8/igt@kms_color@pipe-a-ctm-0-5.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-gamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb3/igt@kms_color_chamelium@pipe-b-gamma.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl1/igt@kms_color_chamelium@pipe-c-ctm-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-tglb8/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl3/igt@kms_content_protection@legacy.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x170-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-tglb8/igt@kms_cursor_crc@pipe-d-cursor-512x170-onscreen.html">SKIP</a> ([fdo#109279] / [i915#3359]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb3/igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge.html">SKIP</a> ([fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb2/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">FAIL</a> ([i915#2370])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk7/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-glk1/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html">FAIL</a> ([i915#4534])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-glk3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">FAIL</a> ([i915#1888] / [i915#2546])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109280])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#111825]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl3/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-a-scaler-with-clipping-clamping:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb1/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-a-scaler-with-clipping-clamping.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb2/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-a-scaler-with-clipping-clamping.html">DMESG-WARN</a> ([i915#1226])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl7/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> ([fdo#109441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-tglb8/igt@kms_psr@psr2_cursor_render.html">FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl3/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl1/igt@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl8/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl4/igt@kms_vblank@pipe-d-wait-idle.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb3/igt@kms_vrr@flip-suspend.html">SKIP</a> ([fdo#109502])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl8/igt@nouveau_crc@ctx-flip-threshold-reset-after-capture.html">SKIP</a> ([fdo#109271]) +32 similar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl1/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html">SKIP</a> ([fdo#109271]) +140 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb5/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb4/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_5:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-tglb8/igt@prime_nv_pcopy@test3_5.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-tglb8/igt@prime_vgem@fence-read-hang.html">SKIP</a> ([fdo#109295])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl8/igt@sysfs_clients@fair-3.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl1/igt@sysfs_clients@pidname.html">SKIP</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb3/igt@sysfs_clients@split-25.html">SKIP</a> ([i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_read@invalid-buffer:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@drm_read@invalid-buffer.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-6/igt@drm_read@invalid-buffer.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@fbdev@read.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-6/igt@fbdev@read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl9/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#3063]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl6/igt@gem_eio@unwedge-stress.html">PASS</a></p>
</li>
<li>
<p>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-4/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#3063]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-4/igt@gem_eio@unwedge-stress.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl3/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> ([i915#4547]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl8/igt@gem_exec_capture@pi@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk2/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl3/igt@gem_workarounds@suspend-resume.html">INCOMPLETE</a> ([i915#198]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl1/igt@gem_workarounds@suspend-resume.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@i915_pm_dc@dc6-psr.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#1397]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk8/igt@kms_big_fb@linear-32bpp-rotate-180.html">DMESG-WARN</a> ([i915#118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-glk5/igt@kms_big_fb@linear-32bpp-rotate-180.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">DMESG-FAIL</a> ([i915#118] / [i915#1888]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-glk3/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-overflow:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_big_fb@y-tiled-addfb-size-overflow.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-6/igt@kms_big_fb@y-tiled-addfb-size-overflow.html">PASS</a> +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk1/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html">FAIL</a> ([i915#3444]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-glk9/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">SKIP</a> ([fdo#111825] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html">SKIP</a> ([fdo#111314]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> ([fdo#110189] / [i915#3955]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html">PASS</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-hdisplay:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_invalid_mode@zero-hdisplay.html">SKIP</a> ([i915#4278]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-6/igt@kms_invalid_mode@zero-hdisplay.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right@pipe-b-planes:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_plane@plane-panning-bottom-right@pipe-b-planes.html">SKIP</a> ([i915#3558]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right@pipe-b-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid.html">SKIP</a> ([i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-a-tiling-y:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html">SKIP</a> ([i915#3558] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> ([i915#1072]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-rkl-6/igt@kms_psr@primary_mmap_gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb1/igt@kms_psr@psr2_no_drrs.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk3/igt@kms_setmode@basic.html">FAIL</a> ([i915#31]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-glk7/igt@kms_setmode@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@short-reads:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl10/igt@perf@short-reads.html">FAIL</a> ([i915#51]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21768/shard-skl8/igt@perf@short-reads.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>

</body>
</html>

--===============0238754233662110781==--
