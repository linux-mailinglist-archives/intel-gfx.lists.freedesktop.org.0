Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF633465D75
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Dec 2021 05:36:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E57FE6EAA3;
	Thu,  2 Dec 2021 04:36:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 167536EAA3;
 Thu,  2 Dec 2021 04:36:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0BE38A00CC;
 Thu,  2 Dec 2021 04:36:38 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2115444966902583092=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tolakanahalli Pradeep,
 Madhumitha" <madhumitha.tolakanahalli.pradeep@intel.com>
Date: Thu, 02 Dec 2021 04:36:38 -0000
Message-ID: <163841979801.9457.9059399400697560344@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211201222404.690285-1-madhumitha.tolakanahalli.pradeep@intel.com>
In-Reply-To: <20211201222404.690285-1-madhumitha.tolakanahalli.pradeep@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgQnVt?=
 =?utf-8?q?p_DMC_to_v2=2E14_on_ADL-P_=28rev2=29?=
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

--===============2115444966902583092==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Bump DMC to v2.14 on ADL-P (rev2)
URL   : https://patchwork.freedesktop.org/series/97477/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10951_full -> Patchwork_21722_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (10 -> 9)
------------------------------

  Missing    (1): shard-rkl 

Known issues
------------

  Here are the changes found in Patchwork_21722_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2] ([i915#4547])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-skl4/igt@gem_exec_capture@pi@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-skl10/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          NOTRUN -> [FAIL][3] ([i915#2846])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-kbl3/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-tglb:         [PASS][4] -> [FAIL][5] ([i915#2842])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-tglb3/igt@gem_exec_fair@basic-pace@bcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-tglb3/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][6] ([i915#2842])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-glk:          NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#4613])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-glk4/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-kbl:          NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#4613]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-kbl3/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-apl:          NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#4613]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-apl4/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@random:
    - shard-tglb:         NOTRUN -> [SKIP][10] ([i915#4613])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-tglb6/igt@gem_lmem_swapping@random.html
    - shard-skl:          NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#4613]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-skl1/igt@gem_lmem_swapping@random.html
    - shard-iclb:         NOTRUN -> [SKIP][12] ([i915#4613])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-iclb8/igt@gem_lmem_swapping@random.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-kbl:          NOTRUN -> [WARN][13] ([i915#2658])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-kbl2/igt@gem_pwrite@basic-exhaustion.html
    - shard-apl:          NOTRUN -> [WARN][14] ([i915#2658])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-apl6/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@input-checking:
    - shard-skl:          NOTRUN -> [DMESG-WARN][15] ([i915#3002])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-skl7/igt@gem_userptr_blits@input-checking.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-iclb:         NOTRUN -> [SKIP][16] ([fdo#109289])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-iclb8/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1436] / [i915#716])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-skl10/igt@gen9_exec_parse@allowed-single.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-skl4/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_async_flips@crc:
    - shard-skl:          NOTRUN -> [FAIL][19] ([i915#4272])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-skl6/igt@kms_async_flips@crc.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#3777])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-apl6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
    - shard-skl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#3777])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-glk:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#3777])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-glk5/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-apl:          NOTRUN -> [SKIP][23] ([fdo#109271]) +149 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-apl4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#3886]) +4 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-apl2/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#3886]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-kbl2/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3886]) +2 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-glk4/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][27] ([fdo#109278] / [i915#3886])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-iclb8/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3886]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-skl6/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@hdmi-crc-single:
    - shard-glk:          NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-glk4/igt@kms_chamelium@hdmi-crc-single.html

  * igt@kms_chamelium@hdmi-hpd-storm:
    - shard-tglb:         NOTRUN -> [SKIP][30] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-tglb6/igt@kms_chamelium@hdmi-hpd-storm.html

  * igt@kms_chamelium@hdmi-mode-timings:
    - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-iclb8/igt@kms_chamelium@hdmi-mode-timings.html

  * igt@kms_chamelium@vga-hpd:
    - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-skl6/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color@pipe-b-ctm-0-5:
    - shard-skl:          [PASS][33] -> [DMESG-WARN][34] ([i915#1982])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-skl6/igt@kms_color@pipe-b-ctm-0-5.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-skl5/igt@kms_color@pipe-b-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-apl2/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-c-ctm-negative:
    - shard-kbl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-kbl2/igt@kms_color_chamelium@pipe-c-ctm-negative.html

  * igt@kms_content_protection@lic:
    - shard-iclb:         NOTRUN -> [SKIP][37] ([fdo#109300] / [fdo#111066])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-iclb8/igt@kms_content_protection@lic.html
    - shard-tglb:         NOTRUN -> [SKIP][38] ([fdo#111828])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-tglb6/igt@kms_content_protection@lic.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-iclb:         [PASS][39] -> [FAIL][40] ([i915#2370])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-iclb8/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#2346] / [i915#533])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-kbl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#533])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-kbl2/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [PASS][44] -> [DMESG-WARN][45] ([i915#180]) +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
    - shard-skl:          [PASS][46] -> [FAIL][47] ([i915#2122])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-iclb:         [PASS][48] -> [SKIP][49] ([i915#3701])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-kbl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#2672])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-kbl3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-glk:          [PASS][51] -> [FAIL][52] ([i915#2546])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-glk3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-glk7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
    - shard-skl:          NOTRUN -> [SKIP][53] ([fdo#109271]) +81 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-skl7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-kbl:          NOTRUN -> [SKIP][54] ([fdo#109271]) +85 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-kbl2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-glk:          NOTRUN -> [SKIP][55] ([fdo#109271]) +56 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-glk5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][56] -> [FAIL][57] ([i915#1188]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#533])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-skl7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][59] -> [DMESG-WARN][60] ([i915#180]) +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#533]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-glk:          NOTRUN -> [FAIL][62] ([fdo#108145] / [i915#265])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-glk4/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][63] ([i915#265])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
    - shard-kbl:          NOTRUN -> [FAIL][64] ([i915#265])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-kbl2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][65] ([fdo#108145] / [i915#265])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-glk:          NOTRUN -> [FAIL][66] ([i915#265])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-glk5/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][67] ([fdo#108145] / [i915#265]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
    - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#658]) +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-apl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-skl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#658]) +4 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-skl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [PASS][70] -> [SKIP][71] ([fdo#109441])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_selftest@all@check_plane_state:
    - shard-skl:          NOTRUN -> [INCOMPLETE][72] ([i915#4663])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-skl7/igt@kms_selftest@all@check_plane_state.html
    - shard-apl:          NOTRUN -> [INCOMPLETE][73] ([i915#4663])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-apl6/igt@kms_selftest@all@check_plane_state.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][74] -> [FAIL][75] ([i915#31])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-glk4/igt@kms_setmode@basic.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-glk1/igt@kms_setmode@basic.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][76] ([IGT#2])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-apl6/igt@kms_sysfs_edid_timing.html
    - shard-kbl:          NOTRUN -> [FAIL][77] ([IGT#2])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-kbl2/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-glk:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#533])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-glk4/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#2437])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-apl2/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@sysfs_clients@recycle:
    - shard-kbl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#2994]) +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-kbl2/igt@sysfs_clients@recycle.html
    - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#2994])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-apl6/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@sema-50:
    - shard-glk:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#2994])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-glk5/igt@sysfs_clients@sema-50.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][83] ([i915#658]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-iclb7/igt@feature_discovery@psr2.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [DMESG-WARN][85] ([i915#180]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-kbl1/igt@gem_eio@in-flight-suspend.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-kbl2/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][87] ([i915#2842]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][89] ([i915#2842]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][91] ([i915#1436] / [i915#716]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-glk5/igt@gen9_exec_parse@allowed-all.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-glk4/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][93] ([i915#454]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][95] ([i915#180]) -> [PASS][96] +5 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_flip@flip-vs-expired-vblank@c-dp1:
    - shard-kbl:          [FAIL][97] ([i915#79]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-kbl3/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-kbl3/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][99] ([i915#2122]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render:
    - shard-glk:          [FAIL][101] ([i915#2546]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-glk9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-glk7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][103] ([fdo#109441]) -> [PASS][104] +2 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-iclb1/igt@kms_psr@psr2_suspend.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][105] ([i915#31]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-apl1/igt@kms_setmode@basic.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-apl3/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglb:         [FAIL][107] ([i915#2842]) -> [FAIL][108] ([i915#2851])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-tglb3/igt@gem_exec_fair@basic-pace@rcs0.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-tglb3/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][109] ([i915#2684]) -> [WARN][110] ([i915#1804] / [i915#2684])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-move:
    - shard-skl:          [SKIP][111] ([fdo#109271] / [i915#1888]) -> [SKIP][112] ([fdo#109271])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-skl1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-move.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-skl6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-move.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
    - shard-iclb:         [SKIP][113] ([i915#2920]) -> [SKIP][114] ([i915#658])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-iclb:         [SKIP][115] ([i915#658]) -> [SKIP][116] ([i915#2920]) +2 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#4312]) -> ([FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130]) ([fdo#109271] / [i915#180] / [i915#2426] / [i915#3002] / [i915#3363] / [i915#4312])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-apl2/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-apl2/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-apl6/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-apl4/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-apl2/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-apl3/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-apl2/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-apl6/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-apl8/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-apl6/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-apl4/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-apl7/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-apl8/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-apl3/igt@runner@aborted.html
    - shard-skl:          ([FAIL][131], [FAIL][132]) ([i915#1814] / [i915#3002] / [i915#3363] / [i915#4312]) -> ([FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137]) ([i915#1436] / [i915#1814] / [i915#2426] / [i915#3002] / [i915#3363] / [i915#4312])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-skl6/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-skl4/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-skl7/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-skl1/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-skl7/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-skl4/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-skl10/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111066]: https://bugs.freedesktop.org/show_bug.cgi?id=111066
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#111828]: https://bugs.freedesktop.org/show_bug.cgi?id=111828
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2370]: https://gitlab.freedesktop.org/drm/intel/issues/2370
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2842

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/index.html

--===============2115444966902583092==
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
<tr><td><b>Series:</b></td><td>Bump DMC to v2.14 on ADL-P (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/97477/">https://patchwork.freedesktop.org/series/97477/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21722/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21722/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10951_full -&gt; Patchwork_21722_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (10 -&gt; 9)</h2>
<p>Missing    (1): shard-rkl </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21722_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-skl4/igt@gem_exec_capture@pi@rcs0.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-s=
kl10/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-kbl3/igt@gem_exec_fair@basic-deadline.h=
tml">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-tglb3/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/s=
hard-tglb3/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1=
.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-glk4/igt@gem_lmem_swapping@heavy-verify=
-multi.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-kbl3/igt@gem_lmem_swapping@heavy-verify=
-random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-apl4/igt@gem_lmem_swapping@parallel-mul=
ti.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / [i915#4613]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21722/shard-tglb6/igt@gem_lmem_swapping@random.html"=
>SKIP</a> ([i915#4613])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21722/shard-skl1/igt@gem_lmem_swapping@random.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / [i915#4613]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21722/shard-iclb8/igt@gem_lmem_swapping@random.html"=
>SKIP</a> ([i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21722/shard-kbl2/igt@gem_pwrite@basic-exhaustion.htm=
l">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/265=
8">i915#2658</a>)</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21722/shard-apl6/igt@gem_pwrite@basic-exhaustion.htm=
l">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/265=
8">i915#2658</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-skl7/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-iclb8/igt@gen7_exec_parse@oacontrol-tra=
cking.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-skl10/igt@gen9_exec_parse@allowed-single.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/=
shard-skl4/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / [=
i915#716])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-skl6/igt@kms_async_flips@crc.html">FAIL=
</a> ([i915#4272])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21722/shard-apl6/igt@kms_big_fb@x-tiled-max-hw-strid=
e-32bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3777])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21722/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-strid=
e-32bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3777])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-glk5/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-apl4/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-64bpp-rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a>) +149 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-apl2/igt@kms_ccs@pipe-a-ccs-on-another-=
bo-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886]) +4 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-kbl2/igt@kms_ccs@pipe-a-crc-primary-rot=
ation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886]) +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-glk4/igt@kms_ccs@pipe-b-bad-aux-stride-=
y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886]) +2 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-iclb8/igt@kms_ccs@pipe-b-crc-primary-ba=
sic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109278">fdo#109278</a> / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-skl6/igt@kms_ccs@pipe-c-bad-rotation-90=
-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886]) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-single:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-glk4/igt@kms_chamelium@hdmi-crc-single.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-tglb6/igt@kms_chamelium@hdmi-hpd-storm.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-mode-timings:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-iclb8/igt@kms_chamelium@hdmi-mode-timin=
gs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-skl6/igt@kms_chamelium@vga-hpd.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11827">fdo#111827</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-5:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-skl6/igt@kms_color@pipe-b-ctm-0-5.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-s=
kl5/igt@kms_color@pipe-b-ctm-0-5.html">DMESG-WARN</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-apl2/igt@kms_color_chamelium@pipe-a-ctm=
-limited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111827">fdo#111827</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-negative:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-kbl2/igt@kms_color_chamelium@pipe-c-ctm=
-negative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21722/shard-iclb8/igt@kms_content_protection@lic.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1093=
00">fdo#109300</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D111066">fdo#111066</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21722/shard-tglb6/igt@kms_content_protection@lic.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1118=
28">fdo#111828</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-iclb8/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_21722/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2370">i915=
#2370</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_21722/shard-skl8/igt@kms_cursor_legacy@flip-vs-c=
ursor-atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-kbl2/igt@kms_cursor_legacy@pipe-d-singl=
e-bo.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21722/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/180">i915#180</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@b-e=
dp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21722/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptibl=
e@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp=
-ytileccs.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21722/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytil=
e-to-32bpp-ytileccs.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-kbl3/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-glk3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb=
-msflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21722/shard-glk7/igt@kms_frontbuffer_tracking@fbc-1p-pr=
imscrn-indfb-msflip-blt.html">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2546">i915#2546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-skl7/igt@kms_frontbuffer_tracking@fbc-2=
p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +81 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-kbl2/igt@kms_frontbuffer_tracking@psr-1=
p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +85 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-glk5/igt@kms_frontbuffer_tracking@psr-1=
p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +56 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-sk=
l10/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/1188">i915#1188</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-skl7/igt@kms_pipe_crc_basic@compare-crc=
-sanitycheck-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21722/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">=
DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
180">i915#180</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-apl6/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-glk4/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21722/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-al=
pha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/265">i915#265</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21722/shard-kbl2/igt@kms_plane_alpha_blend@pipe-a-al=
pha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/265">i915#265</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-c=
onstant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-glk5/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-c=
onstant-alpha-min.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-apl2/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-1.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-skl6/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-4.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +4 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/sh=
ard-iclb6/igt@kms_psr@psr2_cursor_mmap_gtt.html">SKIP</a> (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@all@check_plane_state:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21722/shard-skl7/igt@kms_selftest@all@check_plane_st=
ate.html">INCOMPLETE</a> ([i915#4663])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21722/shard-apl6/igt@kms_selftest@all@check_plane_st=
ate.html">INCOMPLETE</a> ([i915#4663])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-glk4/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-glk1/igt=
@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21722/shard-apl6/igt@kms_sysfs_edid_timing.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2=
">IGT#2</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21722/shard-kbl2/igt@kms_sysfs_edid_timing.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2=
">IGT#2</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-glk4/igt@kms_vblank@pipe-d-wait-idle.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-apl2/igt@kms_writeback@writeback-invali=
d-parameters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21722/shard-kbl2/igt@sysfs_clients@recycle.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / [i915#2994]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21722/shard-apl6/igt@sysfs_clients@recycle.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / [i915#2994])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21722/shard-glk5/igt@sysfs_clients@sema-50.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-iclb7/igt@feature_discovery@psr2.html">SKIP</a> ([i915#=
658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1722/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-kbl1/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
722/shard-kbl2/igt@gem_eio@in-flight-suspend.html">PASS</a> +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21722/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21722/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-glk5/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1=
436</a> / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21722/shard-glk4/igt@gen9_exec_parse@allowed-all.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2172=
2/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21722/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.=
html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-kbl3/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html">FA=
IL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21722/shard-kbl3/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21722/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-i=
nterruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-glk9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-i=
ndfb-draw-render.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2546">i915#2546</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_21722/shard-glk7/igt@kms_frontbuffer_trackin=
g@fbc-1p-primscrn-cur-indfb-draw-render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-iclb1/igt@kms_psr@psr2_suspend.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/s=
hard-iclb2/igt@kms_psr@psr2_suspend.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-apl1/igt@kms_setmode@basic.html">FAIL</a> ([i915#31]) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/sh=
ard-apl3/igt@kms_setmode@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-tglb3/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21722/shard-tglb3/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (=
[i915#2851])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#268=
4</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21722/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-skl1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-i=
ndfb-move.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_21722/shard-skl6/igt@kms_frontbuffer_tracki=
ng@fbc-2p-scndscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a-5.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21722/shard-iclb5/igt@kms_psr2_sf@overlay-primary=
-update-sf-dmg-area-5.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
5.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21722/shard-iclb2/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-5.html">SKIP</a> ([i915#2920]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-apl2/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10951/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-apl4/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10951/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-apl3/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0951/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-apl6/igt@runner@aborted.html=
">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1814">i915#1814</a> / [i915#3002] / [i915#3363] / [i915#4312]) -&g=
t; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/sha=
rd-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21722/shard-apl6/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/=
shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21722/shard-apl7/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_217=
22/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-apl3/igt@runner@aborted.htm=
l">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2426">i915#2426</a> / [i915#3002] / [i915#3363] / [i915#4312])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10951/shard-skl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/shard-skl4/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1814">i915#1814</a> / [i915#3002] / [i915#3363] / [i915#4312]) -&gt; =
(<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/shard-=
skl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_21722/shard-skl1/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/sha=
rd-skl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21722/shard-skl4/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21722/=
shard-skl10/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / [i915#300=
2] / [i915#3363] / [i915#4312])</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<p>[i915#2842</p>

</body>
</html>

--===============2115444966902583092==--
