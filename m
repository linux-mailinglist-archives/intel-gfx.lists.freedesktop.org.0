Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 296DC4B195C
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 00:22:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC56410E1AA;
	Thu, 10 Feb 2022 23:22:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 895F610E1AA;
 Thu, 10 Feb 2022 23:22:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 84419A7DFB;
 Thu, 10 Feb 2022 23:22:27 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5176680081166746497=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michael Cheng" <michael.cheng@intel.com>
Date: Thu, 10 Feb 2022 23:22:27 -0000
Message-ID: <164453534751.24641.8876600687871516928@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220210183636.1187973-1-michael.cheng@intel.com>
In-Reply-To: <20220210183636.1187973-1-michael.cheng@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgVXNl?=
 =?utf-8?q?_drm=5Fclflush*_instead_of_clflush_=28rev9=29?=
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

--===============5176680081166746497==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Use drm_clflush* instead of clflush (rev9)
URL   : https://patchwork.freedesktop.org/series/99450/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11214_full -> Patchwork_22244_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_22244_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][1] -> [FAIL][2] ([i915#232])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-tglb7/igt@gem_eio@kms.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-tglb8/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][3] ([i915#5076])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-kbl1/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][4] ([i915#4547])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-skl9/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][5] -> [FAIL][6] ([i915#2842])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          NOTRUN -> [FAIL][7] ([i915#2842])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-kbl1/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-kbl:          [PASS][8] -> [FAIL][9] ([i915#2842]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl1/igt@gem_exec_fair@basic-none@vecs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-kbl6/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-iclb:         [PASS][10] -> [FAIL][11] ([i915#2842])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-iclb3/igt@gem_exec_fair@basic-pace@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-iclb5/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_schedule@submit-early-slice@vcs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][12] ([i915#3797])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-skl6/igt@gem_exec_schedule@submit-early-slice@vcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#2190])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-apl8/igt@gem_huc_copy@huc-copy.html
    - shard-kbl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#2190])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-kbl6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - shard-skl:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#4613]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-skl8/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-apl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#4613])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-apl8/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#644])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_pread@exhaustion:
    - shard-tglb:         NOTRUN -> [WARN][19] ([i915#2658])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-tglb1/igt@gem_pread@exhaustion.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-skl:          NOTRUN -> [FAIL][20] ([i915#3318])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-skl2/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][21] -> [DMESG-WARN][22] ([i915#1436] / [i915#716])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-skl4/igt@gen9_exec_parse@allowed-single.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-skl3/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([i915#4281])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-kbl7/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [PASS][27] -> [INCOMPLETE][28] ([i915#636])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-skl6/igt@i915_suspend@forcewake.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-skl7/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][29] ([i915#3743]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglb:         NOTRUN -> [SKIP][30] ([fdo#111615])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-tglb1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3777]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-apl8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-kbl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3777]) +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-kbl6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3777]) +4 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-skl1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3886]) +7 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-skl1/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3886]) +4 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-kbl6/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
    - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3886]) +3 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-apl8/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@dp-hpd-enable-disable-mode:
    - shard-tglb:         NOTRUN -> [SKIP][37] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-tglb1/igt@kms_chamelium@dp-hpd-enable-disable-mode.html

  * igt@kms_chamelium@hdmi-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-kbl4/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-5:
    - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-apl8/igt@kms_color_chamelium@pipe-a-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-d-degamma:
    - shard-skl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-skl1/igt@kms_color_chamelium@pipe-d-degamma.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          NOTRUN -> [INCOMPLETE][41] ([i915#300])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109278]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-iclb8/igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions:
    - shard-tglb:         NOTRUN -> [SKIP][43] ([fdo#109274] / [fdo#111825])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-tglb1/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][44] -> [INCOMPLETE][45] ([i915#180] / [i915#1982])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1:
    - shard-skl:          [PASS][46] -> [FAIL][47] ([i915#2122])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-skl8/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-skl1/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-apl:          [PASS][48] -> [DMESG-WARN][49] ([i915#180]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-iclb:         [PASS][50] -> [SKIP][51] ([i915#3701])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-skl:          NOTRUN -> [SKIP][52] ([fdo#109271]) +165 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-skl1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt:
    - shard-tglb:         NOTRUN -> [SKIP][53] ([fdo#109280] / [fdo#111825]) +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          NOTRUN -> [FAIL][54] ([i915#1188])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-skl1/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-tglb:         NOTRUN -> [SKIP][55] ([i915#1187])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-tglb1/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_panel_fitting@legacy:
    - shard-kbl:          NOTRUN -> [SKIP][56] ([fdo#109271]) +101 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-kbl1/igt@kms_panel_fitting@legacy.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#533])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-apl8/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#533]) +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][59] ([fdo#108145] / [i915#265])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][60] ([fdo#108145] / [i915#265]) +2 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][61] ([i915#265])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][62] ([fdo#108145] / [i915#265]) +2 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#2733])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-apl8/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html
    - shard-kbl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#2733])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-kbl6/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#658])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-apl8/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#658])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-skl1/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][67] -> [SKIP][68] ([fdo#109441]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         NOTRUN -> [SKIP][69] ([fdo#109441])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-iclb7/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][70] ([IGT#2])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-apl8/igt@kms_sysfs_edid_timing.html
    - shard-kbl:          NOTRUN -> [FAIL][71] ([IGT#2])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-kbl6/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-d-wait-forked-hang:
    - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271]) +71 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-apl8/igt@kms_vblank@pipe-d-wait-forked-hang.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#2437])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-skl1/igt@kms_writeback@writeback-invalid-parameters.html
    - shard-kbl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#2437])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-kbl4/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([i915#2530])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-iclb8/igt@nouveau_crc@ctx-flip-threshold-reset-after-capture.html

  * igt@nouveau_crc@pipe-a-source-outp-inactive:
    - shard-tglb:         NOTRUN -> [SKIP][76] ([i915#2530]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-tglb1/igt@nouveau_crc@pipe-a-source-outp-inactive.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-tglb:         NOTRUN -> [SKIP][77] ([fdo#109289])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-tglb1/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [PASS][78] -> [FAIL][79] ([i915#1542])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-glk2/igt@perf@polling-parameterized.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-glk5/igt@perf@polling-parameterized.html

  * igt@prime_nv_api@i915_nv_import_twice:
    - shard-tglb:         NOTRUN -> [SKIP][80] ([fdo#109291])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-tglb2/igt@prime_nv_api@i915_nv_import_twice.html

  * igt@sysfs_clients@create:
    - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#2994])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-apl8/igt@sysfs_clients@create.html
    - shard-kbl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#2994])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-kbl6/igt@sysfs_clients@create.html

  * igt@sysfs_clients@fair-1:
    - shard-skl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#2994])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-skl1/igt@sysfs_clients@fair-1.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [SKIP][84] ([i915#4525]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-iclb3/igt@gem_exec_balancer@parallel-balancer.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][86] ([i915#2842]) -> [PASS][87] +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
    - shard-apl:          [FAIL][88] ([i915#2842]) -> [PASS][89] +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-apl1/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - {shard-tglu}:       [FAIL][90] ([i915#2842]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-tglu-1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-tglu-1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][92] ([i915#2849]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [DMESG-WARN][94] ([i915#118]) -> [PASS][95] +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-glk9/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][96] ([i915#2190]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-tglb8/igt@gem_huc_copy@huc-copy.html

  * igt@gem_workarounds@suspend-resume:
    - shard-skl:          [INCOMPLETE][98] ([i915#4939]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-skl3/igt@gem_workarounds@suspend-resume.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-skl8/igt@gem_workarounds@suspend-resume.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][100] ([i915#180]) -> [PASS][101] +3 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-apl8/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][102] ([i915#2346] / [i915#533]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [INCOMPLETE][104] ([i915#180] / [i915#636]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [FAIL][106] ([i915#79]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:
    - shard-glk:          [FAIL][108] ([i915#79]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][110] ([i915#180]) -> [PASS][111] +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-iclb:         [FAIL][112] ([i915#1888] / [i915#2546]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt:
    - shard-iclb:         [FAIL][114] ([i915#1888]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-iclb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-iclb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][116] ([i915#1188]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][118] ([fdo#108145] / [i915#265]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-iclb:         [SKIP][120] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-iclb1/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][122] ([fdo#109441]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [SKIP][124] ([i915#4525]) -> [DMESG-WARN][125] ([i915#5076])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [SKIP][126] ([i915#4525]) -> [DMESG-FAIL][127] ([i915#5076])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-iclb6/igt@gem_exec_balancer@parallel-ordering.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#4312] / [i915#602] / [i915#92]) -> ([FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151]) ([i915#180] / [i915#3002] / [i915#4312])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl1/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl1/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl3/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl6/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl6/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl7/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl4/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl7/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl7/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl6/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl6/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl4/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl6/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-kbl6/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-kbl6/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-kbl6/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-kbl7/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-kbl7/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-kbl7/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-kbl4/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-kbl1/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-kbl1/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-kb

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/index.html

--===============5176680081166746497==
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
<tr><td><b>Series:</b></td><td>Use drm_clflush* instead of clflush (rev9)</=
td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/99450/">https://patchwork.freedesktop.org/series/99450/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22244/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22244/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11214_full -&gt; Patchwork_22244_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22244_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-tglb7/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-tglb8/igt@gem=
_eio@kms.html">FAIL</a> ([i915#232])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-kbl1/igt@gem_exec_balancer@parallel-out=
-fence.html">DMESG-WARN</a> ([i915#5076])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-skl9/igt@gem_exec_capture@pi@rcs0.html"=
>INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/s=
hard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-kbl1/igt@gem_exec_fair@basic-none-solo@=
rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-kbl1/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/s=
hard-kbl6/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842]) +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-iclb3/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/s=
hard-iclb5/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-early-slice@vcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-skl6/igt@gem_exec_schedule@submit-early=
-slice@vcs0.html">INCOMPLETE</a> ([i915#3797])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22244/shard-apl8/igt@gem_huc_copy@huc-copy.html">SKI=
P</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22244/shard-kbl6/igt@gem_huc_copy@huc-copy.html">SKI=
P</a> ([fdo#109271] / [i915#2190])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-skl8/igt@gem_lmem_swapping@basic.html">=
SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-apl8/igt@gem_lmem_swapping@heavy-random=
.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@flink-and-close-vma-leak:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_222=
44/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html">FAIL</a> ([i915#=
644])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-tglb1/igt@gem_pread@exhaustion.html">WA=
RN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-skl2/igt@gem_userptr_blits@vma-merge.ht=
ml">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-skl4/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/s=
hard-skl3/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#14=
36] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-iclb3=
/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-kbl6/igt@i915_suspend@fence-restore-tiled2untiled.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22244/shard-kbl7/igt@i915_suspend@fence-restore-tiled2untiled.html">DMES=
G-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-skl6/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-skl=
7/igt@i915_suspend@forcewake.html">INCOMPLETE</a> ([i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-tglb1/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-32bpp-rotate-0-async-flip.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-apl8/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-kbl6/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#37=
77]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:=
</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-skl1/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#=
3777]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-skl1/igt@kms_ccs@pipe-b-bad-aux-stride-=
y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +7 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22244/shard-kbl6/igt@kms_ccs@pipe-b-missing-ccs-buff=
er-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 s=
imilar issues</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22244/shard-apl8/igt@kms_ccs@pipe-b-missing-ccs-buff=
er-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 s=
imilar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-tglb1/igt@kms_chamelium@dp-hpd-enable-d=
isable-mode.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</=
li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-kbl4/igt@kms_chamelium@hdmi-hpd-for-eac=
h-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-apl8/igt@kms_color_chamelium@pipe-a-ctm=
-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-degamma:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-skl1/igt@kms_color_chamelium@pipe-d-deg=
amma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-s=
uspend.html">INCOMPLETE</a> ([i915#300])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-iclb8/igt@kms_cursor_crc@pipe-d-cursor-=
256x256-rapid-movement.html">SKIP</a> ([fdo#109278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-tglb1/igt@kms_cursor_legacy@cursora-vs-=
flipb-atomic-transitions.html">SKIP</a> ([fdo#109274] / [fdo#111825])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-=
apl3/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915=
#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-skl8/igt@kms_flip@flip-vs-absolute-wf_vblank-interrupti=
ble@c-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22244/shard-skl1/igt@kms_flip@flip-vs-absolute-wf_vblank=
-interruptible@c-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22244/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp=
-ytileccs-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22244/shard-iclb2/igt@kms_flip_scaled_crc@fli=
p-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#3701])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-skl1/igt@kms_frontbuffer_tracking@fbcps=
r-2p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109271]) +165 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-tglb1/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> ([fdo#109280] / [fdo#111825]=
) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-skl1/igt@kms_hdr@bpc-switch.html">FAIL<=
/a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-tglb1/igt@kms_hdr@static-toggle-suspend=
.html">SKIP</a> ([i915#1187])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-kbl1/igt@kms_panel_fitting@legacy.html"=
>SKIP</a> ([fdo#109271]) +101 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-apl8/igt@kms_pipe_crc_basic@disable-crc=
-after-crtc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-skl2/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +2 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-c=
lipping-clamping:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22244/shard-apl8/igt@kms_plane_scaling@scaler-with-c=
lipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo#=
109271] / [i915#2733])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22244/shard-kbl6/igt@kms_plane_scaling@scaler-with-c=
lipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo#=
109271] / [i915#2733])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-apl8/igt@kms_psr2_sf@overlay-plane-upda=
te-continuous-sf.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-skl1/igt@kms_psr2_su@page_flip-nv12.htm=
l">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-i=
clb1/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> ([fdo#109441]) +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-iclb7/igt@kms_psr@psr2_sprite_blt.html"=
>SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22244/shard-apl8/igt@kms_sysfs_edid_timing.html">FAI=
L</a> ([IGT#2])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22244/shard-kbl6/igt@kms_sysfs_edid_timing.html">FAI=
L</a> ([IGT#2])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-forked-hang:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-apl8/igt@kms_vblank@pipe-d-wait-forked-=
hang.html">SKIP</a> ([fdo#109271]) +71 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22244/shard-skl1/igt@kms_writeback@writeback-invalid=
-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22244/shard-kbl4/igt@kms_writeback@writeback-invalid=
-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</p>
</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-iclb8/igt@nouveau_crc@ctx-flip-threshol=
d-reset-after-capture.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-outp-inactive:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-tglb1/igt@nouveau_crc@pipe-a-source-out=
p-inactive.html">SKIP</a> ([i915#2530]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-tglb1/igt@perf@gen8-unprivileged-single=
-ctx-counters.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-glk2/igt@perf@polling-parameterized.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard=
-glk5/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_import_twice:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-tglb2/igt@prime_nv_api@i915_nv_import_t=
wice.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22244/shard-apl8/igt@sysfs_clients@create.html">SKIP=
</a> ([fdo#109271] / [i915#2994])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22244/shard-kbl6/igt@sysfs_clients@create.html">SKIP=
</a> ([fdo#109271] / [i915#2994])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-skl1/igt@sysfs_clients@fair-1.html">SKI=
P</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-iclb3/igt@gem_exec_balancer@parallel-balancer.html">SKI=
P</a> ([i915#4525]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22244/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11214/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([=
i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22244/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +1 s=
imilar issue</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11214/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([=
i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22244/shard-apl1/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +1 s=
imilar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-tglu-1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FA=
IL</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22244/shard-tglu-1/igt@gem_exec_fair@basic-pace-share@rcs0.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> ([i915#2849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22244/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html"=
>DMESG-WARN</a> ([i915#118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_22244/shard-glk9/igt@gem_exec_whisper@basic-queues-fo=
rked-all.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2=
190]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2244/shard-tglb8/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-skl3/igt@gem_workarounds@suspend-resume.html">INCOMPLET=
E</a> ([i915#4939]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22244/shard-skl8/igt@gem_workarounds@suspend-resume.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html"=
>DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_22244/shard-apl8/igt@i915_suspend@fence-restore-tiled=
2untiled.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-skl4/igt=
@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a>=
 ([i915#180] / [i915#636]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_22244/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">F=
AIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22244/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@b-edp1.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html=
">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22244/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@b-hdmi=
-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html">DME=
SG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22244/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend=
.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-c=
ur-indfb-draw-mmap-gtt.html">FAIL</a> ([i915#1888] / [i915#2546]) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-iclb=
6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-iclb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indf=
b-pgflip-blt.html">FAIL</a> ([i915#1888]) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_22244/shard-iclb6/igt@kms_frontbuffer_tr=
acking@psr-1p-primscrn-indfb-pgflip-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#=
1188]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
22244/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mi=
n.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-skl6/igt@kms_plane_alpha_=
blend@pipe-b-constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-iclb1/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</=
a> ([fdo#109642] / [fdo#111068] / [i915#658]) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-iclb2/igt@kms_psr2_su@fr=
ontbuffer-xrgb8888.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a>=
 ([fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_22244/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a=
></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">SKIP</a> ([i915#4525]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22244/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-=
fence.html">DMESG-WARN</a> ([i915#5076])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11214/shard-iclb6/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> ([i915#4525]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22244/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html=
">DMESG-FAIL</a> ([i915#5076])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11214/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl1/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11214/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl6/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11214/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl7/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11214/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl7/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_112=
14/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl6/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/=
shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11214/shard-kbl4/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11214/sha=
rd-kbl6/igt@runner@aborted.html">FAIL</a>) ([fdo#109271] / [i915#180] / [i9=
15#1814] / [i915#3002] / [i915#4312] / [i915#602] / [i915#92]) -&gt; (<a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-kbl6/i=
gt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_22244/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-kbl=
6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22244/shard-kbl7/igt@runner@aborted.html">FAIL</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/shard-=
kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22244/shard-kbl7/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/sha=
rd-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22244/shard-kbl1/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22244/=
shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22244/shard-kb">FAIL</a>, [FAIL][151]) ([i=
915#180] / [i915#3002] / [i915#4312])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5176680081166746497==--
