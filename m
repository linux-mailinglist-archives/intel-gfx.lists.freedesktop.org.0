Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5164DBDBF
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 05:14:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFCEA89D5F;
	Thu, 17 Mar 2022 04:14:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 95B05893C0;
 Thu, 17 Mar 2022 04:14:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 917DDAADD4;
 Thu, 17 Mar 2022 04:14:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5088075772784950143=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 17 Mar 2022 04:14:16 -0000
Message-ID: <164749045655.32162.2120119101163371291@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220316234538.434357-1-lucas.demarchi@intel.com>
In-Reply-To: <20220316234538.434357-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Fix_renamed_struct_fiel?=
 =?utf-8?q?d?=
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

--===============5088075772784950143==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915: Fix renamed struct field
URL   : https://patchwork.freedesktop.org/series/101448/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11372_full -> Patchwork_22590_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22590_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22590_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22590_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_mmap_wc@write-wc-read-gtt:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl9/igt@gem_mmap_wc@write-wc-read-gtt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl6/igt@gem_mmap_wc@write-wc-read-gtt.html

  
Known issues
------------

  Here are the changes found in Patchwork_22590_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#4547])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl10/igt@gem_exec_capture@pi@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl4/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][7] -> [FAIL][8] ([i915#2842]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][11] ([i915#2842]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#2842])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-apl:          [PASS][14] -> [DMESG-WARN][15] ([i915#180]) +4 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-apl2/igt@gem_exec_suspend@basic-s3@smem.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-apl3/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_lmem_swapping@basic:
    - shard-skl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#4613])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl10/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-glk:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#4613])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-glk9/igt@gem_lmem_swapping@parallel-random-engines.html
    - shard-kbl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#4613])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl4/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_pxp@reject-modify-context-protection-off-2:
    - shard-iclb:         NOTRUN -> [SKIP][19] ([i915#4270])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb6/igt@gem_pxp@reject-modify-context-protection-off-2.html

  * igt@gen3_render_linear_blits:
    - shard-tglb:         NOTRUN -> [SKIP][20] ([fdo#109289])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-tglb7/igt@gen3_render_linear_blits.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          NOTRUN -> [FAIL][21] ([i915#454])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl10/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [PASS][22] -> [SKIP][23] ([i915#4281])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][24] ([i915#5286])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb6/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#3777]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
    - shard-glk:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3777])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-glk9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3777]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl10/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3777]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-apl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#3886]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-apl3/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#3886]) +8 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl4/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3886]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl10/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3886]) +4 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-glk9/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-glk:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-glk9/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#109284] / [fdo#111827])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb6/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html
    - shard-apl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-apl4/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-25:
    - shard-kbl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl1/igt@kms_color_chamelium@pipe-b-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
    - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl10/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          NOTRUN -> [TIMEOUT][38] ([i915#1319])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl4/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@uevent:
    - shard-kbl:          NOTRUN -> [FAIL][39] ([i915#2105])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl1/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding:
    - shard-apl:          NOTRUN -> [SKIP][40] ([fdo#109271]) +58 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-apl3/igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#2346])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-kbl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#533]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl6/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][44] -> [INCOMPLETE][45] ([i915#636])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-iclb:         [PASS][46] -> [SKIP][47] ([i915#3701])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109280]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
    - shard-kbl:          NOTRUN -> [SKIP][49] ([fdo#109271]) +136 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:
    - shard-skl:          NOTRUN -> [SKIP][50] ([fdo#109271]) +70 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render:
    - shard-glk:          NOTRUN -> [SKIP][51] ([fdo#109271]) +41 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-glk6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:
    - shard-skl:          [PASS][52] -> [FAIL][53] ([i915#1188])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl2/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl9/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-skl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#533]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl7/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][55] ([fdo#108145] / [i915#265])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          NOTRUN -> [FAIL][56] ([fdo#108145] / [i915#265])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-kbl:          NOTRUN -> [FAIL][57] ([fdo#108145] / [i915#265]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][58] -> [FAIL][59] ([fdo#108145] / [i915#265])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_prime@basic-crc@first-to-second:
    - shard-iclb:         NOTRUN -> [SKIP][60] ([i915#1836])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb6/igt@kms_prime@basic-crc@first-to-second.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#658])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
    - shard-kbl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#658])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#658])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-glk9/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][64] -> [SKIP][65] ([fdo#109441]) +3 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html

  * igt@syncobj_timeline@transfer-timeline-point:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][66] ([i915#5098])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl6/igt@syncobj_timeline@transfer-timeline-point.html

  * igt@sysfs_clients@pidname:
    - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#2994]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-apl3/igt@sysfs_clients@pidname.html

  * igt@sysfs_clients@split-25:
    - shard-kbl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#2994]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl4/igt@sysfs_clients@split-25.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-tglb:         [TIMEOUT][69] ([i915#3063]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-tglb3/igt@gem_eio@in-flight-contexts-10ms.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-tglb6/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [TIMEOUT][71] ([i915#2481] / [i915#3070]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb8/igt@gem_eio@unwedge-stress.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - {shard-tglu}:       [FAIL][73] ([i915#2842]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-tglu-4/igt@gem_exec_fair@basic-none-share@rcs0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-tglu-4/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][75] ([i915#2842]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][77] ([i915#2849]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_workarounds@suspend-resume:
    - shard-skl:          [INCOMPLETE][79] ([i915#4939] / [i915#5129]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl6/igt@gem_workarounds@suspend-resume.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl7/igt@gem_workarounds@suspend-resume.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][81] ([i915#1436] / [i915#716]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-glk8/igt@gen9_exec_parse@allowed-all.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-glk6/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc9-dpms:
    - {shard-tglu}:       [SKIP][83] ([i915#4281]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-tglu-3/igt@i915_pm_dc@dc9-dpms.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-tglu-4/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-glk:          [DMESG-WARN][85] ([i915#118] / [i915#1888]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-glk2/igt@i915_pm_rpm@system-suspend-modeset.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-glk8/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [DMESG-WARN][87] ([i915#180]) -> [PASS][88] +3 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl7/igt@i915_suspend@forcewake.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl1/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - {shard-tglu}:       [DMESG-WARN][89] ([i915#402]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-tglu-1/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-tglu-6/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:
    - shard-iclb:         [FAIL][91] ([i915#5072]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][93] ([i915#2346]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-xtiled:
    - shard-skl:          [DMESG-WARN][95] ([i915#1982]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-xtiled.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-xtiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][97] ([i915#79]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [DMESG-WARN][99] ([i915#180]) -> [PASS][100] +3 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@plain-flip-ts-check@a-edp1:
    - shard-skl:          [FAIL][101] ([i915#2122]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl10/igt@kms_flip@plain-flip-ts-check@a-edp1.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl1/igt@kms_flip@plain-flip-ts-check@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-glk:          [FAIL][103] ([i915#4911]) -> [PASS][104] +2 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-glk5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_plane_cursor@pipe-b-overlay-size-128:
    - shard-iclb:         [FAIL][105] ([i915#1888]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb7/igt@kms_plane_cursor@pipe-b-overlay-size-128.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb8/igt@kms_plane_cursor@pipe-b-overlay-size-128.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale:
    - shard-iclb:         [SKIP][107] ([i915#5235]) -> [PASS][108] +2 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [SKIP][109] ([fdo#109441]) -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb4/igt@kms_psr@psr2_dpms.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb2/igt@kms_psr@psr2_dpms.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][111] ([i915#1542]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl2/igt@perf@polling-parameterized.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl9/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-iclb:         [SKIP][113] ([i915#4525]) -> [DMESG-WARN][114] ([i915#5076]) +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb8/igt@gem_exec_balancer@parallel-contexts.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [DMESG-FAIL][115] ([i915#5076]) -> [SKIP][116] ([i915#4525])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb6/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         [FAIL][117] ([i915#2842]) -> [FAIL][118] ([i915#2852])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-skl:          [SKIP][119] ([fdo#109271]) -> [SKIP][120] ([fdo#109271] / [i915#1888])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl7/igt@gem_pxp@protected-raw-src-copy-not-readible.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl2/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][121] ([i915#2684]) -> [WARN][122] ([i915#1804] / [i915#2684])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-skl:          [SKIP][123] ([fdo#109271] / [i915#1888] / [i915#3886]) -> [SKIP][124] ([fdo#109271] / [i915#3886])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl7/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl2/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-iclb:         [SKIP][125] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [FAIL][126] ([i915#4148])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb6/igt@kms_psr2_su@page_flip-xrgb8888.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#602]) -> ([FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148]) ([i915#1436] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl7/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl7/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl7/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl4/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl6/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl7/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl4/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl3/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl7/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl7/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl7/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl6/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl3/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl6/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl6/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl4/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl7/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl6/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl1/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl4/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/P

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/index.html

--===============5088075772784950143==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915: Fix ren=
amed struct field</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/101448/">https://patchwork.freedesktop.org/series/101448/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22590/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22590/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11372_full -&gt; Patchwork_22590_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22590_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_22590_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22590_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_mmap_wc@write-wc-read-gtt:<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-skl9/igt@gem_mmap_wc@write-wc-read-gtt.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/sh=
ard-skl6/igt@gem_mmap_wc@write-wc-read-gtt.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22590_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22590/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG-WA=
RN</a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-skl10/igt@gem_exec_capture@pi@rcs0.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-=
skl4/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/sh=
ard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) +2 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2590/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i=
915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-glk9/igt@gem_exec_fair@basic-pace-solo@=
rcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2259=
0/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#28=
42])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-apl2/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/s=
hard-apl3/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> ([i915#18=
0]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-skl10/igt@gem_lmem_swapping@basic.html"=
>SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22590/shard-glk9/igt@gem_lmem_swapping@parallel-rand=
om-engines.html">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22590/shard-kbl4/igt@gem_lmem_swapping@parallel-rand=
om-engines.html">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-2:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-iclb6/igt@gem_pxp@reject-modify-context=
-protection-off-2.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gen3_render_linear_blits:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-tglb7/igt@gen3_render_linear_blits.html=
">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-skl10/igt@i915_pm_dc@dc6-psr.html">FAIL=
</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb3=
/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-iclb6/igt@kms_big_fb@4-tiled-32bpp-rota=
te-270.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22590/shard-kbl4/igt@kms_big_fb@x-tiled-max-hw-strid=
e-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +3 simil=
ar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22590/shard-glk9/igt@kms_big_fb@x-tiled-max-hw-strid=
e-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-skl10/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3=
777]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:=
</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-apl4/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#=
3777]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-apl3/igt@kms_ccs@pipe-a-bad-aux-stride-=
y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-kbl4/igt@kms_ccs@pipe-a-crc-primary-rot=
ation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) =
+8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-skl10/igt@kms_ccs@pipe-b-crc-primary-ro=
tation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])=
 +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-glk9/igt@kms_ccs@pipe-b-crc-sprite-plan=
es-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]=
) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-glk9/igt@kms_chamelium@dp-crc-multiple.=
html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22590/shard-iclb6/igt@kms_chamelium@hdmi-hpd-enable-=
disable-mode.html">SKIP</a> ([fdo#109284] / [fdo#111827])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22590/shard-apl4/igt@kms_chamelium@hdmi-hpd-enable-d=
isable-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues<=
/p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-25:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-kbl1/igt@kms_color_chamelium@pipe-b-ctm=
-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-skl10/igt@kms_color_chamelium@pipe-d-ct=
m-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-kbl4/igt@kms_content_protection@atomic.=
html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-kbl1/igt@kms_content_protection@uevent.=
html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-apl3/igt@kms_cursor_crc@pipe-d-cursor-6=
4x64-sliding.html">SKIP</a> ([fdo#109271]) +58 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_22590/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">FAIL</=
a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-kbl6/igt@kms_cursor_legacy@pipe-d-singl=
e-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/s=
hard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html">INCOMPLETE</a> ([i915#63=
6])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp=
-ytile-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22590/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-indfb-plflip-blt.html">SKIP</a> ([fdo#109280]) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +136 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-skl7/igt@kms_frontbuffer_tracking@fbcps=
r-1p-primscrn-indfb-msflip-blt.html">SKIP</a> ([fdo#109271]) +70 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-glk6/igt@kms_frontbuffer_tracking@psr-2=
p-scndscrn-pri-indfb-draw-render.html">SKIP</a> ([fdo#109271]) +41 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-skl2/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-=
pipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22590/shard-skl9/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms=
-edp-1-pipe-a.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-skl7/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-=
coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22590/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">=
FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc@first-to-second:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-iclb6/igt@kms_prime@basic-crc@first-to-=
second.html">SKIP</a> ([i915#1836])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22590/shard-skl7/igt@kms_psr2_sf@overlay-plane-updat=
e-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22590/shard-kbl6/igt@kms_psr2_sf@overlay-plane-updat=
e-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-glk9/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/=
shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> ([fdo#109441]=
) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@transfer-timeline-point:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-skl6/igt@syncobj_timeline@transfer-time=
line-point.html">DMESG-FAIL</a> ([i915#5098])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-apl3/igt@sysfs_clients@pidname.html">SK=
IP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22590/shard-kbl4/igt@sysfs_clients@split-25.html">S=
KIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-tglb3/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT=
</a> ([i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22590/shard-tglb6/igt@gem_eio@in-flight-contexts-10ms.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-iclb8/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i9=
15#2481] / [i915#3070]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22590/shard-iclb1/igt@gem_eio@unwedge-stress.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-tglu-4/igt@gem_exec_fair@basic-none-share@rcs0.html">FA=
IL</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22590/shard-tglu-4/igt@gem_exec_fair@basic-none-share@rcs0.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22590/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> ([i915#2849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22590/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-skl6/igt@gem_workarounds@suspend-resume.html">INCOMPLET=
E</a> ([i915#4939] / [i915#5129]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22590/shard-skl7/igt@gem_workarounds@suspend-res=
ume.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-glk8/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</=
a> ([i915#1436] / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22590/shard-glk6/igt@gen9_exec_parse@allowed-all.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-tglu-3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> ([i915#42=
81]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
590/shard-tglu-4/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-glk2/igt@i915_pm_rpm@system-suspend-modeset.html">DMESG=
-WARN</a> ([i915#118] / [i915#1888]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22590/shard-glk8/igt@i915_pm_rpm@system-suspe=
nd-modeset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-kbl7/igt@i915_suspend@forcewake.html">DMESG-WARN</a> ([=
i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22590/shard-kbl1/igt@i915_suspend@forcewake.html">PASS</a> +3 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-180:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-tglu-1/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">DM=
ESG-WARN</a> ([i915#402]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22590/shard-tglu-6/igt@kms_big_fb@x-tiled-32bpp-rotate-1=
80.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-atomic-trans=
itions-varying-size.html">FAIL</a> ([i915#5072]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb7/igt@kms_cursor_=
legacy@cursor-vs-flip-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22590/shard-skl4/igt@kms_cursor_legacy@flip-vs=
-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-xtiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-x=
tiled.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl7/igt@kms_draw_crc@draw-me=
thod-xrgb2101010-mmap-wc-xtiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-=
hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22590/shard-glk8/igt@kms_flip@2x-flip-vs-expire=
d-vblank@ac-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_22590/shard-apl8/igt@kms_flip@flip-vs-suspend-int=
erruptible@c-dp1.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-skl10/igt@kms_flip@plain-flip-ts-check@a-edp1.html">FAI=
L</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22590/shard-skl1/igt@kms_flip@plain-flip-ts-check@a-edp1.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-=
ytileccs-upscaling.html">FAIL</a> ([i915#4911]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-glk5/igt@kms_flip_scal=
ed_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">PASS</a> +2 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-overlay-size-128:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-iclb7/igt@kms_plane_cursor@pipe-b-overlay-size-128.html=
">FAIL</a> ([i915#1888]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22590/shard-iclb8/igt@kms_plane_cursor@pipe-b-overlay-siz=
e-128.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pi=
pe-c-edp-1-planes-upscale-downscale:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale.html">SKIP</a> (=
[i915#5235]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22590/shard-iclb4/igt@kms_plane_scaling@planes-upscale-factor-0-25-do=
wnscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale.html">PASS</a> +2 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-iclb4/igt@kms_psr@psr2_dpms.html">SKIP</a> ([fdo#109441=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2259=
0/shard-iclb2/igt@kms_psr@psr2_dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-skl2/igt@perf@polling-parameterized.html">FAIL</a> ([i9=
15#1542]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22590/shard-skl9/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-iclb8/igt@gem_exec_balancer@parallel-contexts.html">SKI=
P</a> ([i915#4525]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22590/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html=
">DMESG-WARN</a> ([i915#5076]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html">DME=
SG-FAIL</a> ([i915#5076]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22590/shard-iclb6/igt@gem_exec_balancer@parallel-orderin=
g.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22590/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html">=
FAIL</a> ([i915#2852])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-skl7/igt@gem_pxp@protected-raw-src-copy-not-readible.ht=
ml">SKIP</a> ([fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_22590/shard-skl2/igt@gem_pxp@protected-raw-src-copy-no=
t-readible.html">SKIP</a> ([fdo#109271] / [i915#1888])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> ([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_22590/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</=
a> ([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-skl7/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc=
_ccs.html">SKIP</a> ([fdo#109271] / [i915#1888] / [i915#3886]) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl2/ig=
t@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#1=
09271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11372/shard-iclb6/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a>=
 ([fdo#109642] / [fdo#111068] / [i915#658]) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb2/igt@kms_psr2_su@page=
_flip-xrgb8888.html">FAIL</a> ([i915#4148])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11372/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl7/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11372/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl4/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11372/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl7/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11372/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl3/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_113=
72/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl7/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/=
shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl6/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/sha=
rd-kbl3/igt@runner@aborted.html">FAIL</a>) ([i915#180] / [i915#1814] / [i91=
5#3002] / [i915#4312] / [i915#5257] / [i915#602]) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22590/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl4/igt@runner@=
aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22590/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl6/igt@runn=
er@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22590/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl4/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/P">FAIL</a>, [FAIL][148]) ([i915#1436] / [i915#180] / [i915#3002] =
/ [i915#4312] / [i915#5257])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5088075772784950143==--
