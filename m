Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4813553F3E5
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jun 2022 04:25:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AB5210E397;
	Tue,  7 Jun 2022 02:25:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B76E010E1E9;
 Tue,  7 Jun 2022 02:25:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AD72EA73C7;
 Tue,  7 Jun 2022 02:25:53 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1349068301373852576=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Tue, 07 Jun 2022 02:25:53 -0000
Message-ID: <165456875367.8647.14036050939582888479@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220607002314.1451656-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20220607002314.1451656-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgR3VD?=
 =?utf-8?q?-Log_flush-completes_be_asynchronous?=
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

--===============1349068301373852576==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: GuC-Log flush-completes be asynchronous
URL   : https://patchwork.freedesktop.org/series/104791/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11729_full -> Patchwork_104791v1_full
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

  Here are the changes found in Patchwork_104791v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@hang:
    - shard-skl:          NOTRUN -> [SKIP][1] ([fdo#109271]) +231 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-skl5/igt@gem_ctx_persistence@hang.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-tglb:         [PASS][2] -> [TIMEOUT][3] ([i915#3063])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-tglb3/igt@gem_eio@in-flight-contexts-immediate.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-tglb1/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [PASS][4] -> [SKIP][5] ([i915#4525])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-iclb8/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][6] -> [FAIL][7] ([i915#2842]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-apl:          [PASS][8] -> [FAIL][9] ([i915#2842])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-apl2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-apl1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [PASS][10] -> [FAIL][11] ([i915#2842]) +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_flush@basic-wb-rw-default:
    - shard-snb:          [PASS][12] -> [SKIP][13] ([fdo#109271])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-snb2/igt@gem_exec_flush@basic-wb-rw-default.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-snb6/igt@gem_exec_flush@basic-wb-rw-default.html

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-skl:          [PASS][14] -> [INCOMPLETE][15] ([i915#5843])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-skl10/igt@gem_exec_whisper@basic-fds-forked-all.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-skl1/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@gem_lmem_swapping@basic:
    - shard-apl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#4613]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-apl4/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-skl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#4613]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-skl9/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-kbl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#4613]) +2 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl4/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_pread@exhaustion:
    - shard-kbl:          NOTRUN -> [WARN][19] ([i915#2658])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl4/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-skl:          NOTRUN -> [WARN][20] ([i915#2658])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-skl9/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          NOTRUN -> [INCOMPLETE][21] ([i915#4939] / [i915#5230])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-skl3/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [FAIL][22] ([i915#3318])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-apl4/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [PASS][23] -> [DMESG-WARN][24] ([i915#5566] / [i915#716])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-glk8/igt@gen9_exec_parse@allowed-single.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-glk3/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_hangman@engine-engine-hang@vecs0:
    - shard-skl:          [PASS][25] -> [DMESG-WARN][26] ([i915#1982])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-skl7/igt@i915_hangman@engine-engine-hang@vecs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-skl5/igt@i915_hangman@engine-engine-hang@vecs0.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271]) +191 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl3/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [PASS][28] -> [DMESG-WARN][29] ([i915#180]) +3 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-kbl7/igt@i915_suspend@fence-restore-untiled.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl6/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_3d:
    - shard-glk:          [PASS][30] -> [DMESG-WARN][31] ([i915#118] / [i915#1888])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-glk9/igt@kms_3d.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-glk6/igt@kms_3d.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][32] ([i915#3743])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-glk:          [PASS][33] -> [DMESG-FAIL][34] ([i915#118] / [i915#1888])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-glk7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-glk5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3886]) +9 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-skl9/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3886]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-apl4/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3886]) +6 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl7/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_color_chamelium@pipe-a-degamma:
    - shard-kbl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl4/igt@kms_color_chamelium@pipe-a-degamma.html

  * igt@kms_color_chamelium@pipe-b-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-apl3/igt@kms_color_chamelium@pipe-b-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-c-ctm-negative:
    - shard-skl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +17 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-skl5/igt@kms_color_chamelium@pipe-c-ctm-negative.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          NOTRUN -> [TIMEOUT][41] ([i915#1319])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl3/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding:
    - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271]) +57 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-apl3/igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding.html

  * igt@kms_cursor_legacy@cursor-vs-flip-legacy:
    - shard-iclb:         [PASS][43] -> [FAIL][44] ([i915#5072])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-iclb3/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          NOTRUN -> [FAIL][45] ([i915#2346] / [i915#533])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
    - shard-iclb:         [PASS][46] -> [FAIL][47] ([i915#2346])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-iclb4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:
    - shard-glk:          [PASS][48] -> [FAIL][49] ([i915#2122])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [PASS][50] -> [FAIL][51] ([i915#2122]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt:
    - shard-glk:          [PASS][52] -> [FAIL][53] ([i915#1888] / [i915#2546])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-glk9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-glk6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-pwrite:
    - shard-glk:          [PASS][54] -> [FAIL][55] ([i915#2546])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-pwrite.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
    - shard-kbl:          NOTRUN -> [FAIL][56] ([i915#1188])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl3/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-kbl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#533])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl7/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#533]) +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-skl9/igt@kms_pipe_crc_basic@read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-apl:          [PASS][59] -> [DMESG-WARN][60] ([i915#180]) +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][61] ([i915#265])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][62] ([i915#265])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][63] ([fdo#108145] / [i915#265])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [PASS][64] -> [SKIP][65] ([i915#5235]) +5 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-iclb1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#658]) +4 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-skl9/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-kbl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#658]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][68] -> [SKIP][69] ([fdo#109441]) +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-iclb6/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_sysfs_edid_timing:
    - shard-skl:          NOTRUN -> [FAIL][70] ([IGT#2])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-skl9/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-kbl:          [PASS][71] -> [INCOMPLETE][72] ([i915#3614])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-kbl1/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-kbl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#2437])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl7/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#2437])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-skl9/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][75] -> [FAIL][76] ([i915#5639])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-skl5/igt@perf@polling-parameterized.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-skl10/igt@perf@polling-parameterized.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][77] -> [FAIL][78] ([i915#1722])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-skl7/igt@perf@polling-small-buf.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-skl1/igt@perf@polling-small-buf.html

  * igt@sw_sync@sync_merge_same:
    - shard-skl:          NOTRUN -> [FAIL][79] ([i915#6140])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-skl4/igt@sw_sync@sync_merge_same.html

  * igt@sysfs_clients@busy:
    - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#2994]) +3 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-skl7/igt@sysfs_clients@busy.html
    - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#2994]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-apl3/igt@sysfs_clients@busy.html

  * igt@sysfs_clients@sema-25:
    - shard-kbl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#2994]) +3 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl7/igt@sysfs_clients@sema-25.html

  * igt@sysfs_preempt_timeout@timeout@vcs0:
    - shard-skl:          [PASS][83] -> [FAIL][84] ([i915#3259])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-skl1/igt@sysfs_preempt_timeout@timeout@vcs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-skl9/igt@sysfs_preempt_timeout@timeout@vcs0.html

  
#### Possible fixes ####

  * igt@drm_mm@all@insert:
    - shard-skl:          [INCOMPLETE][85] -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-skl3/igt@drm_mm@all@insert.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-skl4/igt@drm_mm@all@insert.html

  * igt@fbdev@write:
    - {shard-rkl}:        [SKIP][87] ([i915#2582]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-rkl-1/igt@fbdev@write.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-rkl-6/igt@fbdev@write.html

  * igt@gem_close_race@basic-threads:
    - shard-skl:          [DMESG-WARN][89] ([i915#1982]) -> [PASS][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-skl4/igt@gem_close_race@basic-threads.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-skl5/igt@gem_close_race@basic-threads.html

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-apl:          [DMESG-WARN][91] ([i915#180]) -> [PASS][92] +2 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-apl8/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-apl4/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_eio@in-flight-suspend:
    - {shard-rkl}:        [FAIL][93] ([fdo#103375]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-rkl-5/igt@gem_eio@in-flight-suspend.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-rkl-2/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [SKIP][95] ([i915#4525]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-iclb6/igt@gem_exec_balancer@parallel-bb-first.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-iclb4/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-kbl:          [FAIL][97] ([i915#2842]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-kbl6/igt@gem_exec_fair@basic-none@vcs1.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][99] ([i915#2842]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-iclb:         [FAIL][101] ([i915#2842]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-iclb5/igt@gem_exec_fair@basic-pace@bcs0.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-iclb3/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_flush@basic-wb-pro-default:
    - shard-snb:          [SKIP][103] ([fdo#109271]) -> [PASS][104] +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-snb6/igt@gem_exec_flush@basic-wb-pro-default.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-snb5/igt@gem_exec_flush@basic-wb-pro-default.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-kbl:          [DMESG-WARN][105] ([i915#5566] / [i915#716]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-kbl4/igt@gen9_exec_parse@allowed-single.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl7/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_backlight@basic-brightness:
    - {shard-rkl}:        [SKIP][107] ([i915#3012]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-rkl-2/igt@i915_pm_backlight@basic-brightness.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-rkl-6/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][109] ([i915#454]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
    - {shard-rkl}:        [SKIP][111] ([i915#658]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-rkl-2/igt@i915_pm_dc@dc6-psr.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - {shard-rkl}:        [SKIP][113] ([fdo#109308]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-rkl-2/igt@i915_pm_rpm@system-suspend-modeset.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-rkl-6/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - {shard-rkl}:        [SKIP][115] ([i915#1845] / [i915#4098]) -> [PASS][116] +38 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-rkl-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_color@pipe-a-ctm-negative:
    - {shard-rkl}:        [SKIP][117] ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][118] +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-rkl-2/igt@kms_color@pipe-a-ctm-negative.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-rkl-6/igt@kms_color@pipe-a-ctm-negative.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding:
    - {shard-rkl}:        [SKIP][119] ([fdo#112022] / [i915#4070]) -> [PASS][120] +3 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-rkl-2/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge:
    - shard-glk:          [DMESG-WARN][121] ([i915#118] / [i915#1888]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-glk9/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-glk6/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:
    - {shard-rkl}:        [SKIP][123] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][124] +2 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - {shard-rkl}:        [SKIP][125] ([fdo#111825] / [i915#4070]) -> [PASS][126] +3 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][127] ([i915#2346] / [i915#533]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@pipe-c-single-move:
    - {shard-rkl}:        [SKIP][129] ([i915#4070]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-rkl-2/igt@kms_cursor_legacy@pipe-c-single-move.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-rkl-5/igt@kms_cursor_legacy@pipe-c-single-move.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:
    - {shard-rkl}:        [SKIP][131] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][132] +5 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [FAIL][133] ([i915#4767]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-skl9/igt@kms_fbcon_fbt@psr-suspend.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-skl1/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [FAIL][135] ([i915#79]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
    - shard-skl:          [INCOMPLETE][137] ([i915#5864]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-kbl:          [DMESG-WARN][139] ([i915#180]) -> [PASS][140] +7 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-cpu:
    - shard-glk:          [FAIL][141] ([i915#2546]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-cpu.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - {shard-rkl}:        [SKIP][143] ([i915#1849] / [i915#4098]) -> [PASS][144] +26 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:
    - shard-kbl:          [FAIL][145] ([i915#1188]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-kbl6/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - shard-glk:          [FAIL][147] ([i915#1888]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-glk9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-glk6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - {shard-dg1}:        [SKIP][149] ([i915#2575]) -> [PASS][150] +64 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-dg1-17/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-dg1-16/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_plane@plane-position-covered@pipe-b-planes:
    - {shard-rkl}:        [SKIP][151] ([i915#1849] / [i915#3558]) -> [PASS][152] +3 similar issues
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-rkl-2/igt@kms_plane@plane-position-covered@pipe-b-planes.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-rkl-6/igt@kms_plane@plane-position-covered@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][153] ([fdo#108145] / [i915#265]) -> [PASS][154]
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
    - {shard-rkl}:        [SKIP][155] ([i915#1849] / [i915#3558] / [i915#4070]) -> [PASS][156]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-iclb:         [SKIP][157] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][158]
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-iclb8/igt@kms_psr2_su@page_flip-xrgb8888.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@no_drrs:
    - {shard-rkl}:        [SKIP][159] ([i915#1072]) -> [PASS][160] +3 similar issues
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-rkl-2/igt@kms_psr@no_drrs.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-rkl-6/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][161] ([fdo#109441]) -> [PASS][162] +1 similar issue
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-iclb1/igt@kms_psr@psr2_suspend.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_universal_plane@universal-plane-pipe-b-functional:
    - {shard-rkl}:        [SKIP][163] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][164]
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-rkl-2/igt@kms_universal_plane@universal-plane-pipe-b-functional.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-rkl-6/igt@kms_universal_plane@universal-plane-pipe-b-functional.html

  * igt@perf@blocking-parameterized:
    - {shard-dg1}:        [SKIP][165] ([i915#5608]) -> [PASS][166] +2 similar issues
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-dg1-17/igt@perf@blocking-parameterized.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-dg1-16/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [FAIL][167] ([i915#2851]) -> [FAIL][168] ([i915#2842])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][169] ([i915#658]) -> [SKIP][170] ([i915#588])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_color@pipe-d-invalid-gamma-lut-sizes:
    - shard-skl:          [SKIP][171] ([fdo#109271] / [i915#1888]) -> [SKIP][172] ([fdo#109271]) +2 similar issues
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-skl10/igt@kms_color@pipe-d-invalid-gamma-lut-sizes.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-skl10/igt@kms_color@pipe-d-invalid-gamma-lut-sizes.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][173] ([fdo#111068] / [i915#658]) -> [SKIP][174] ([i915#2920])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-iclb1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][175] ([i915#2920]) -> [SKIP][176] ([fdo#111068] / [i915#658])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-iclb:         [SKIP][177] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [FAIL][178] ([i915#5939])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-iclb3/igt@kms_psr2_su@page_flip-p010.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][179], [FAIL][180], [FAIL][181], [FAIL][182]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][183], [FAIL][184], [FAIL][185], [FAIL][186], [FAIL][187]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-apl7/igt@runner@aborted.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-apl3/igt@runner@aborted.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-apl8/igt@runner@aborted.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-apl1/igt@runner@aborted.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-apl3/igt@runner@aborted.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-apl2/igt@runner@aborted.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-apl8/igt@runner@aborted.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-apl1/igt@runner@aborted.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-apl4/igt@runner@aborted.html
    - shard-kbl:          ([FAIL][188], [FAIL][189], [FAIL][190], [FAIL][191], [FAIL][192], [FAIL][193], [FAIL][194], [FAIL][195], [FAIL][196], [FAIL][197]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#716]) -> ([FAIL][198], [FAIL][199], [FAIL][200], [FAIL][201], [FAIL][202], [FAIL][203], [FAIL][204]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-kbl4/igt@runner@aborted.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-kbl4/igt@runner@aborted.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-kbl1/igt@runner@aborted.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-kbl4/igt@runner@aborted.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-kbl6/igt@runner@aborted.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-kbl6/igt@runner@aborted.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-kbl4/igt@runner@aborted.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-kbl4/igt@runner@aborted.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-kbl7/igt@runner@aborted.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-kbl6/igt@runner@aborted.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl1/igt@runner@aborted.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl6/igt@runner@aborted.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl1/igt@runner@aborted.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl4/igt@runner@aborted.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl6/igt@runner@aborted.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl4/igt@runner@aborted.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl4/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
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
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2232]: https://gitlab.freedesktop.org/drm/intel/issues/2232
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2851]: https://gitlab.freedesktop.org/drm/intel/issues/2851
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3259]: https://gitlab.freedesktop.org/drm/intel/issues/3259
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
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
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3810]: https://gitlab.freedesktop.org/drm/intel/issues/3810
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4016]: https://gitlab.freedesktop.org/drm/intel/issues/4016
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4807]: https://gitlab.freedesktop.org/drm/intel/issues/4807
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
  [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
  [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
  [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
  [i915#4904]: https://gitlab.freedesktop.org/drm/intel/issues/4904
  [i915#4929]: https://gitlab.freedesktop.org/drm/intel/issues/4929
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5072]: https://gitlab.freedesktop.org/drm/intel/issues/5072
  [i915#5174]: https://gitlab.freedesktop.org/drm/intel/issues/5174
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5230]: https://gitlab.freedesktop.org/drm/intel/issues/5230
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5843]: https://gitlab.freedesktop.org/drm/intel/issues/5843
  [i915#5864]: https://gitlab.freedesktop.org/drm/intel/issues/5864
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6140]: https://gitlab.freedesktop.org/drm/intel/issues/6140
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_11729 -> Patchwork_104791v1

  CI-20190529: 20190529
  CI_DRM_11729: fb41937d097981b11a2856d507c2f1b9064bef76 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6509: 24bad3ce51c57c907307f84aa9202d04b80ad2a3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_104791v1: fb41937d097981b11a2856d507c2f1b9064bef76 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/index.html

--===============1349068301373852576==
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
<tr><td><b>Series:</b></td><td>GuC-Log flush-completes be asynchronous</td>=
</tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/104791/">https://patchwork.freedesktop.org/series/104791/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104791v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_104791v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11729_full -&gt; Patchwork_104791v=
1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_104791v1_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-skl5/igt@gem_ctx_persistence@hang.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a>) +231 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-tglb3/igt@gem_eio@in-flight-contexts-immediate.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
104791v1/shard-tglb1/igt@gem_eio@in-flight-contexts-immediate.html">TIMEOUT=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i915=
#3063</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
104791v1/shard-iclb8/igt@gem_exec_balancer@parallel-out-fence.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#45=
25</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11729/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104=
791v1/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a=
>) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11729/shard-apl2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104=
791v1/shard-apl1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a=
>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104=
791v1/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-default:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-snb2/igt@gem_exec_flush@basic-wb-rw-default.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104=
791v1/shard-snb6/igt@gem_exec_flush@basic-wb-rw-default.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked-all:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-skl10/igt@gem_exec_whisper@basic-fds-forked-all.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_104791v1/shard-skl1/igt@gem_exec_whisper@basic-fds-forked-all.html">INCOMP=
LETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5843">=
i915#5843</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-apl4/igt@gem_lmem_swapping@basic.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-skl9/igt@gem_lmem_swapping@heavy-ver=
ify-multi-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-kbl4/igt@gem_lmem_swapping@heavy-ver=
ify-random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4613">i915#4613</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-kbl4/igt@gem_pread@exhaustion.html">=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">=
i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-skl9/igt@gem_pwrite@basic-exhaustion=
.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-skl3/igt@gem_softpin@noreloc-s3.html=
">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4939">i915#4939</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/5230">i915#5230</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-apl4/igt@gem_userptr_blits@vma-merge=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3318">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-glk8/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v=
1/shard-glk3/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</=
a>)</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-engine-hang@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-skl7/igt@i915_hangman@engine-engine-hang@vecs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
104791v1/shard-skl5/igt@i915_hangman@engine-engine-hang@vecs0.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i=
915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-kbl3/igt@i915_pm_rpm@dpms-lpsp.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a>) +191 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-kbl7/igt@i915_suspend@fence-restore-untiled.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104=
791v1/shard-kbl6/igt@i915_suspend@fence-restore-untiled.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180=
</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_3d:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-glk9/igt@kms_3d.html">PASS</a> -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-glk6/igt@kms_3d.=
html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/118">i915#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-s=
tride-64bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-glk7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate=
-180.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_104791v1/shard-glk5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bp=
p-rotate-180.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/118">i915#118</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-skl9/igt@kms_ccs@pipe-a-crc-primary-=
basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +9 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-apl4/igt@kms_ccs@pipe-c-bad-rotation=
-90-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-kbl7/igt@kms_ccs@pipe-c-crc-primary-=
basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +6 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-degamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-kbl4/igt@kms_color_chamelium@pipe-a-=
degamma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-apl3/igt@kms_color_chamelium@pipe-b-=
ctm-limited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-negative:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-skl5/igt@kms_color_chamelium@pipe-c-=
ctm-negative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111827">fdo#111827</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-kbl3/igt@kms_content_protection@lega=
cy.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-apl3/igt@kms_cursor_crc@pipe-d-curso=
r-64x64-sliding.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a>) +57 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-legacy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-iclb3/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_104791v1/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5072">i=
915#5072</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104791v1/shard-skl5/igt@kms_cursor_legacy@flip-vs-cu=
rsor-atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/2346">i915#2346</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11729/shard-iclb4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_104791v1/shard-iclb7/igt@kms_cursor_legacy@flip-=
vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-hdmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_104791v1/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-i=
nterruptible@a-hdmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_104791v1/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915=
#2122</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-glk9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-i=
ndfb-draw-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_104791v1/shard-glk6/igt@kms_frontbuffer_tracking@fbc-=
1p-primscrn-cur-indfb-draw-blt.html">FAIL</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/1888">i915#1888</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/2546">i915#2546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-s=
hrfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_104791v1/shard-glk6/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-pri-shrfb-draw-pwrite.html">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/2546">i915#2546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-kbl3/igt@kms_hdr@bpc-switch-suspend@=
pipe-a-dp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-kbl7/igt@kms_pipe_crc_basic@nonblock=
ing-crc-pipe-d-frame-sequence.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-skl9/igt@kms_pipe_crc_basic@read-crc=
-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/533">i915#533</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_104791v1/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.htm=
l">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/180">i915#180</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-kbl3/igt@kms_plane_alpha_blend@pipe-=
b-alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-skl9/igt@kms_plane_alpha_blend@pipe-=
c-alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-kbl7/igt@kms_plane_alpha_blend@pipe-=
c-constant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-iclb1/igt@kms_plane_scaling@planes-upscale-20x20-downsc=
ale-factor-0-5@pipe-b-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-iclb2/igt@kms_plane_scal=
ing@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235<=
/a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-skl9/igt@kms_psr2_sf@overlay-plane-u=
pdate-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-kbl3/igt@kms_psr2_sf@primary-plane-u=
pdate-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v=
1/shard-iclb6/igt@kms_psr@psr2_primary_mmap_gtt.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-skl9/igt@kms_sysfs_edid_timing.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/issu=
es/2">IGT#2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-kbl1/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_104791v1/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-dpms-sus=
pend.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3614">i915#3614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-kbl7/igt@kms_writeback@writeback-fb-=
id.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-skl9/igt@kms_writeback@writeback-pix=
el-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-skl5/igt@perf@polling-parameterized.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/sh=
ard-skl10/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-skl7/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-=
skl1/igt@perf@polling-small-buf.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/1722">i915#1722</a>)</li>
</ul>
</li>
<li>
<p>igt@sw_sync@sync_merge_same:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-skl4/igt@sw_sync@sync_merge_same.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/614=
0">i915#6140</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104791v1/shard-skl7/igt@sysfs_clients@busy.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
994">i915#2994</a>) +3 similar issues</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104791v1/shard-apl3/igt@sysfs_clients@busy.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
994">i915#2994</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-kbl7/igt@sysfs_clients@sema-25.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@timeout@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-skl1/igt@sysfs_preempt_timeout@timeout@vcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104=
791v1/shard-skl9/igt@sysfs_preempt_timeout@timeout@vcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3259">i915#3259</a>=
)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_mm@all@insert:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-skl3/igt@drm_mm@all@insert.html">INCOMPLETE</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard=
-skl4/igt@drm_mm@all@insert.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-rkl-1/igt@fbdev@write.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-rkl-=
6/igt@fbdev@write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_close_race@basic-threads:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-skl4/igt@gem_close_race@basic-threads.html">DMESG-WARN<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#=
1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_104791v1/shard-skl5/igt@gem_close_race@basic-threads.html">PASS</a> +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-apl8/igt@gem_ctx_isolation@preservation-s3@vecs0.html">=
DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_104791v1/shard-apl4/igt@gem_ctx_isolation@preservation-s3@vecs0=
.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-rkl-5/igt@gem_eio@in-flight-suspend.html">FAIL</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375">fdo#103375</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104=
791v1/shard-rkl-2/igt@gem_eio@in-flight-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-iclb6/igt@gem_exec_balancer@parallel-bb-first.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_104791v1/shard-iclb4/igt@gem_exec_balancer@parallel-bb-first.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-kbl6/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4791v1/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_104791v1/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-iclb5/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
04791v1/shard-iclb3/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-pro-default:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-snb6/igt@gem_exec_flush@basic-wb-pro-default.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo=
#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_104791v1/shard-snb5/igt@gem_exec_flush@basic-wb-pro-default.html">PAS=
S</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-kbl4/igt@gen9_exec_parse@allowed-single.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i91=
5#5566</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716=
">i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_104791v1/shard-kbl7/igt@gen9_exec_parse@allowed-single.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-rkl-2/igt@i915_pm_backlight@basic-brightness.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3012">i915=
#3012</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_104791v1/shard-rkl-6/igt@i915_pm_backlight@basic-brightness.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11729/shard-iclb7/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-=
iclb8/igt@i915_pm_dc@dc6-psr.html">PASS</a></p>
</li>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11729/shard-rkl-2/igt@i915_pm_dc@dc6-psr.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-=
rkl-6/igt@i915_pm_dc@dc6-psr.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-rkl-2/igt@i915_pm_rpm@system-suspend-modeset.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109308">fdo=
#109308</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_104791v1/shard-rkl-6/igt@i915_pm_rpm@system-suspend-modeset.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-rkl-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate=
-0-async-flip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-rkl-6/igt@kms_big_fb@y-til=
ed-max-hw-stride-64bpp-rotate-0-async-flip.html">PASS</a> +38 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-negative:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-rkl-2/igt@kms_color@pipe-a-ctm-negative.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1149">i915#1149=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i91=
5#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/407=
0">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_104791v1/shard-rkl-6/igt@kms_color@pipe-a-ctm-negative.htm=
l">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-rkl-2/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11=
2022">fdo#112022</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_104791v1/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-=
256x85-sliding.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-glk9/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.=
html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/118">i915#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1888">i915#1888</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-glk6/igt@kms_cursor_edge_walk@pipe-a=
-64x64-bottom-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_104791v1/shard-rkl-6/igt@kms_cursor_edge_walk@pi=
pe-b-256x256-left-edge.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111825=
">fdo#111825</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_104791v1/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-=
atomic.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/533">i915#533</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-glk6/igt@kms_cursor_leg=
acy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-c-single-move:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-rkl-2/igt@kms_cursor_legacy@pipe-c-single-move.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4070">i9=
15#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_104791v1/shard-rkl-5/igt@kms_cursor_legacy@pipe-c-single-move.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11314">fdo#111314</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4369">i915#4369</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_104791v1/shard-rkl-6/igt@kms_draw_crc@draw-meth=
od-xrgb8888-blt-xtiled.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-skl9/igt@kms_fbcon_fbt@psr-suspend.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791=
v1/shard-skl1/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i9=
15#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_104791v1/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/5864">i915#5864</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_104791v1/shard-skl7/igt@kms_flip@flip-vs-suspend-interr=
uptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_104791v1/shard-kbl7/igt@kms_flip@flip-vs-suspend-interrupt=
ible@c-dp1.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-i=
ndfb-draw-mmap-cpu.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2546">i915#2546</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-glk6/igt@kms_frontbuffer_tr=
acking@fbc-2p-scndscrn-spr-indfb-draw-mmap-cpu.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-=
multidraw.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_104791v1/shard-rkl-6/igt@kms_frontbuffer_trac=
king@fbcpsr-1p-pri-indfb-multidraw.html">PASS</a> +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-kbl6/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915=
#1188</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_104791v1/shard-kbl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-glk9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pip=
e-b.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1888">i915#1888</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_104791v1/shard-glk6/igt@kms_pipe_crc_basic@compare-crc-sa=
nitycheck-pipe-b.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-dg1-17/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575=
">i915#2575</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_104791v1/shard-dg1-16/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a=
.html">PASS</a> +64 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered@pipe-b-planes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-rkl-2/igt@kms_plane@plane-position-covered@pipe-b-plane=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3558">i915#3558</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_104791v1/shard-rkl-6/igt@kms_plane@plane-position-cov=
ered@pipe-b-planes.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mi=
n.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104791v1/shard-skl10/igt@kms_plane_alpha_blend@pipe=
-a-constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-b-tiling-y:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/184=
9">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3558">i915#3558</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104791v1/shard-rkl-6/igt@kms_plane_multiple@atomic-p=
ipe-b-tiling-y.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-iclb8/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109=
642</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068"=
>fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_104791v1/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@no_drrs:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-rkl-2/igt@kms_psr@no_drrs.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-=
rkl-6/igt@kms_psr@no_drrs.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-iclb1/igt@kms_psr@psr2_suspend.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v=
1/shard-iclb2/igt@kms_psr@psr2_suspend.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pipe-b-functional:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-rkl-2/igt@kms_universal_plane@universal-plane-pipe-b-fu=
nctional.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-rkl-6/igt@kms_universal_p=
lane@universal-plane-pipe-b-functional.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@blocking-parameterized:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-dg1-17/igt@perf@blocking-parameterized.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4791v1/shard-dg1-16/igt@perf@blocking-parameterized.html">PASS</a> +2 simil=
ar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2851">i915#2851<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4791v1/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
04791v1/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-invalid-gamma-lut-sizes:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-skl10/igt@kms_color@pipe-d-invalid-gamma-lut-sizes.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1888">i915#1888</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_104791v1/shard-skl10/igt@kms_color@pipe-d-invalid-gamma-l=
ut-sizes.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-iclb1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_104791v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_104791v1/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-=
dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-iclb3/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642<=
/a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo=
#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/65=
8">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_104791v1/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5939">i915#59=
39</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-apl3/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11729/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-apl1/igt@runner@aborte=
d.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/5257">i915#5257</a>) -&gt; (<a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-apl3/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_104791v1/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-apl8/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_104791v1/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-apl4/igt=
@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11729/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-kbl4/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11729/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-kbl4/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11729/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-kbl6/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1729/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-kbl4/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1172=
9/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_11729/shard-kbl6/igt@runner@aborted.html">F=
AIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/5257">i915#5257</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/716">i915#716</a>) -&gt; (<a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl1/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_104791v1/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl1/igt@runne=
r@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_104791v1/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/shard-kbl6/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_104791v1/shard-kbl4/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104791v1/sh=
ard-kbl4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11729 -&gt; Patchwork_104791v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11729: fb41937d097981b11a2856d507c2f1b9064bef76 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6509: 24bad3ce51c57c907307f84aa9202d04b80ad2a3 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_104791v1: fb41937d097981b11a2856d507c2f1b9064bef76 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1349068301373852576==--
