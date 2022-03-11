Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 474A44D6180
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 13:29:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F54E10E953;
	Fri, 11 Mar 2022 12:28:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4C02510E953;
 Fri, 11 Mar 2022 12:28:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 47856AA917;
 Fri, 11 Mar 2022 12:28:56 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0632277387984019530=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 11 Mar 2022 12:28:56 -0000
Message-ID: <164700173625.23983.4379460230519335709@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220311100639.114685-1-jani.nikula@intel.com>
In-Reply-To: <20220311100639.114685-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_x86/gpu=3A_include_drm/i915=5Fpciid?=
 =?utf-8?q?s=2Eh_directly_in_early_quirks?=
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

--===============0632277387984019530==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] x86/gpu: include drm/i915_pciids.h directly in early quirks
URL   : https://patchwork.freedesktop.org/series/101279/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11350_full -> Patchwork_22541_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22541_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22541_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 12)
------------------------------

  Missing    (1): shard-dg1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22541_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-skl3/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl4/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_whisper@basic-forked-all:
    - {shard-rkl}:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-rkl-5/igt@gem_exec_whisper@basic-forked-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-rkl-5/igt@gem_exec_whisper@basic-forked-all.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - {shard-rkl}:        [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-rkl-1/igt@i915_suspend@fence-restore-tiled2untiled.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-rkl-5/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_plane_lowres@pipe-b-tiling-4:
    - {shard-rkl}:        [SKIP][7] ([i915#4098]) -> [SKIP][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-rkl-5/igt@kms_plane_lowres@pipe-b-tiling-4.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-rkl-1/igt@kms_plane_lowres@pipe-b-tiling-4.html

  * {igt@kms_psr2_sf@cursor-plane-move-continuous-sf}:
    - {shard-tglu}:       NOTRUN -> [SKIP][9] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-tglu-2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
    - shard-iclb:         NOTRUN -> [SKIP][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb6/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  
Known issues
------------

  Here are the changes found in Patchwork_22541_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         NOTRUN -> [SKIP][11] ([i915#658])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb6/igt@feature_discovery@psr2.html

  * igt@gem_create@create-massive:
    - shard-apl:          NOTRUN -> [DMESG-WARN][12] ([i915#4991])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-apl4/igt@gem_create@create-massive.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-iclb:         NOTRUN -> [SKIP][13] ([i915#4525])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb7/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_endless@dispatch@rcs0:
    - shard-iclb:         [PASS][14] -> [INCOMPLETE][15] ([i915#3778])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-iclb4/igt@gem_exec_endless@dispatch@rcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb4/igt@gem_exec_endless@dispatch@rcs0.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         NOTRUN -> [FAIL][16] ([i915#2842]) +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb3/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_params@no-vebox:
    - shard-iclb:         NOTRUN -> [SKIP][17] ([fdo#109283])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb3/igt@gem_exec_params@no-vebox.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-iclb:         NOTRUN -> [SKIP][18] ([i915#4613])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb3/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-glk:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#4613])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-glk6/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@random:
    - shard-skl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#4613])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl7/igt@gem_lmem_swapping@random.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#644])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-skl8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_pxp@create-regular-buffer:
    - shard-iclb:         NOTRUN -> [SKIP][23] ([i915#4270]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb8/igt@gem_pxp@create-regular-buffer.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-tglb:         NOTRUN -> [SKIP][24] ([i915#4270])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-tglb6/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][25] ([i915#768]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb3/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
    - shard-glk:          NOTRUN -> [SKIP][26] ([fdo#109271]) +35 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-glk6/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html

  * igt@gen3_render_linear_blits:
    - shard-tglb:         NOTRUN -> [SKIP][27] ([fdo#109289])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-tglb6/igt@gen3_render_linear_blits.html

  * igt@gen7_exec_parse@basic-allowed:
    - shard-iclb:         NOTRUN -> [SKIP][28] ([fdo#109289]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb6/igt@gen7_exec_parse@basic-allowed.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-iclb:         NOTRUN -> [SKIP][29] ([i915#2856]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb6/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-iclb:         NOTRUN -> [SKIP][30] ([i915#1902])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb3/igt@i915_pm_lpsp@screens-disabled.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         NOTRUN -> [WARN][31] ([i915#1804] / [i915#2684])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#110892])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb7/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180] / [i915#1982])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][35] ([i915#5286]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb6/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#110725] / [fdo#111614])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb8/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][37] ([i915#3743]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3777])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][39] ([i915#3763])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#110723]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb7/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-glk:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#3777]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-glk6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271]) +76 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-apl4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_joiner@2x-modeset:
    - shard-iclb:         NOTRUN -> [SKIP][43] ([i915#2705])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb8/igt@kms_big_joiner@2x-modeset.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][44] ([fdo#109278] / [i915#3886]) +4 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb3/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-random-ccs-data-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][45] ([fdo#111615] / [i915#3689])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-tglb6/igt@kms_ccs@pipe-a-random-ccs-data-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#3886]) +7 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl7/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#3886]) +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-apl6/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#3886]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-glk6/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][49] ([i915#3689])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-tglb6/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-apl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-apl6/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@hdmi-aspect-ratio:
    - shard-glk:          NOTRUN -> [SKIP][51] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-glk6/igt@kms_chamelium@hdmi-aspect-ratio.html

  * igt@kms_chamelium@hdmi-audio:
    - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#109284] / [fdo#111827]) +14 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb7/igt@kms_chamelium@hdmi-audio.html

  * igt@kms_color@pipe-d-ctm-0-5:
    - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109278] / [i915#1149])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb8/igt@kms_color@pipe-d-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl7/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][55] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb6/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-onscreen:
    - shard-skl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#1888])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-512x512-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          NOTRUN -> [DMESG-WARN][57] ([i915#180])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109278] / [fdo#109279]) +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb3/igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][59] ([fdo#109278]) +28 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb3/igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][60] ([fdo#109274] / [fdo#109278]) +3 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb7/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-tglb:         NOTRUN -> [SKIP][61] ([fdo#109274] / [fdo#111825]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-tglb6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][62] -> [FAIL][63] ([i915#2346] / [i915#533])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#533]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-apl1/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-4tiled:
    - shard-iclb:         NOTRUN -> [SKIP][65] ([i915#5287]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb7/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-4tiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][66] -> [INCOMPLETE][67] ([i915#180] / [i915#636])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][68] ([fdo#109274]) +4 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb3/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          NOTRUN -> [FAIL][69] ([i915#79]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][70] -> [DMESG-WARN][71] ([i915#180]) +4 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [PASS][72] -> [DMESG-WARN][73] ([i915#180]) +6 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [PASS][74] -> [FAIL][75] ([i915#2122]) +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][76] ([fdo#109271]) +166 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl7/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         NOTRUN -> [SKIP][77] ([fdo#109280] / [fdo#111825]) +4 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#109280]) +27 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#533]) +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-skl:          NOTRUN -> [FAIL][80] ([fdo#108145] / [i915#265]) +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-glk:          NOTRUN -> [FAIL][81] ([fdo#108145] / [i915#265])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-glk6/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_plane_lowres@pipe-a-tiling-4:
    - shard-iclb:         NOTRUN -> [SKIP][82] ([i915#5288]) +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb3/igt@kms_plane_lowres@pipe-a-tiling-4.html

  * igt@kms_plane_lowres@pipe-c-tiling-yf:
    - shard-iclb:         NOTRUN -> [SKIP][83] ([i915#3536])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb3/igt@kms_plane_lowres@pipe-c-tiling-yf.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping:
    - shard-iclb:         NOTRUN -> [SKIP][84] ([i915#5176]) +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb3/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-apl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#658])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-apl1/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#658])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-glk6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-skl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#658]) +3 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl7/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#109441]) +2 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][89] -> [SKIP][90] ([fdo#109441]) +2 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_rotation_crc@sprite-rotation-90:
    - shard-skl:          [PASS][91] -> [DMESG-WARN][92] ([i915#1982]) +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-skl6/igt@kms_rotation_crc@sprite-rotation-90.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl7/igt@kms_rotation_crc@sprite-rotation-90.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][93] ([IGT#2])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-apl4/igt@kms_sysfs_edid_timing.html

  * igt@kms_vrr@flipline:
    - shard-iclb:         NOTRUN -> [SKIP][94] ([fdo#109502])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb3/igt@kms_vrr@flipline.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#2437])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-apl4/igt@kms_writeback@writeback-check-output.html

  * igt@nouveau_crc@pipe-b-source-outp-inactive:
    - shard-iclb:         NOTRUN -> [SKIP][96] ([i915#2530]) +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb3/igt@nouveau_crc@pipe-b-source-outp-inactive.html

  * igt@prime_nv_pcopy@test3_2:
    - shard-iclb:         NOTRUN -> [SKIP][97] ([fdo#109291]) +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb6/igt@prime_nv_pcopy@test3_2.html

  * igt@prime_udl:
    - shard-tglb:         NOTRUN -> [SKIP][98] ([fdo#109291])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-tglb6/igt@prime_udl.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-iclb:         NOTRUN -> [SKIP][99] ([fdo#109295])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb7/igt@prime_vgem@fence-flip-hang.html

  * igt@sysfs_clients@busy:
    - shard-skl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#2994]) +2 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl7/igt@sysfs_clients@busy.html

  * igt@sysfs_clients@fair-1:
    - shard-glk:          NOTRUN -> [SKIP][101] ([fdo#109271] / [i915#2994])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-glk6/igt@sysfs_clients@fair-1.html

  * igt@sysfs_clients@pidname:
    - shard-iclb:         NOTRUN -> [SKIP][102] ([i915#2994]) +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb6/igt@sysfs_clients@pidname.html

  * igt@sysfs_clients@recycle-many:
    - shard-apl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#2994]) +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-apl6/igt@sysfs_clients@recycle-many.html

  
#### Possible fixes ####

  * igt@fbdev@unaligned-read:
    - {shard-rkl}:        [SKIP][104] ([i915#2582]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-rkl-2/igt@fbdev@unaligned-read.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-rkl-6/igt@fbdev@unaligned-read.html

  * igt@gem_eio@unwedge-stress:
    - {shard-rkl}:        [TIMEOUT][106] ([i915#3063]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-rkl-5/igt@gem_eio@unwedge-stress.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-rkl-2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_capture@pi@bcs0:
    - shard-iclb:         [INCOMPLETE][108] ([i915#3371]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-iclb4/igt@gem_exec_capture@pi@bcs0.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb3/igt@gem_exec_capture@pi@bcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][110] ([i915#2842]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html
    - {shard-tglu}:       [FAIL][112] ([i915#2842]) -> ([PASS][113], [PASS][114])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-tglu-4/igt@gem_exec_fair@basic-none-share@rcs0.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-tglu-2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-tglu-5/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][115] ([i915#2842]) -> [PASS][116] +6 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [FAIL][117] ([i915#2842]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-apl4/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][119] ([i915#2842]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-glk:          [FAIL][121] ([i915#2842]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_schedule@smoketest-all:
    - {shard-rkl}:        [INCOMPLETE][123] ([i915#5080]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-rkl-5/igt@gem_exec_schedule@smoketest-all.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-rkl-1/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_whisper@basic-fds-all:
    - shard-glk:          [INCOMPLETE][125] -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-glk3/igt@gem_exec_whisper@basic-fds-all.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-glk6/igt@gem_exec_whisper@basic-fds-all.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][127] ([i915#180]) -> [PASS][128] +2 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-apl4/igt@gem_workarounds@suspend-resume-context.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-apl4/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][129] ([i915#1436] / [i915#716]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-skl10/igt@gen9_exec_parse@allowed-single.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl8/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@live@hangcheck:
    - shard-iclb:         [INCOMPLETE][131] ([i915#5308]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-iclb5/igt@i915_selftest@live@hangcheck.html
   [132]: https://intel-gfx-ci.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/index.html

--===============0632277387984019530==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] x86/gpu: include drm/i915_pciids.h directly in early quirks</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101279/">https://patchwork.freedesktop.org/series/101279/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11350_full -&gt; Patchwork_22541_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22541_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22541_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (13 -&gt; 12)</h2>
<p>Missing    (1): shard-dg1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22541_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_big_fb@y-tiled-32bpp-rotate-0:<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-skl3/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl4/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-forked-all:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-rkl-5/igt@gem_exec_whisper@basic-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-rkl-5/igt@gem_exec_whisper@basic-forked-all.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-rkl-1/igt@i915_suspend@fence-restore-tiled2untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-rkl-5/igt@i915_suspend@fence-restore-tiled2untiled.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-4:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-rkl-5/igt@kms_plane_lowres@pipe-b-tiling-4.html">SKIP</a> ([i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-rkl-1/igt@kms_plane_lowres@pipe-b-tiling-4.html">SKIP</a></li>
</ul>
</li>
<li>
<p>{igt@kms_psr2_sf@cursor-plane-move-continuous-sf}:</p>
<ul>
<li>
<p>{shard-tglu}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-tglu-2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html">SKIP</a> +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb6/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html">SKIP</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22541_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb6/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-apl4/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb7/igt@gem_exec_balancer@parallel-keep-submit-fence.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-iclb4/igt@gem_exec_endless@dispatch@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb4/igt@gem_exec_endless@dispatch@rcs0.html">INCOMPLETE</a> ([i915#3778])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb3/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2842]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-vebox:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb3/igt@gem_exec_params@no-vebox.html">SKIP</a> ([fdo#109283])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb3/igt@gem_lmem_swapping@heavy-random.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-glk6/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl7/igt@gem_lmem_swapping@random.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@flink-and-close-vma-leak:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-skl8/igt@gem_ppgtt@flink-and-close-vma-leak.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl1/igt@gem_ppgtt@flink-and-close-vma-leak.html">FAIL</a> ([i915#644])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-buffer:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb8/igt@gem_pxp@create-regular-buffer.html">SKIP</a> ([i915#4270]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-tglb6/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb3/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html">SKIP</a> ([i915#768]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-glk6/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html">SKIP</a> ([fdo#109271]) +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen3_render_linear_blits:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-tglb6/igt@gen3_render_linear_blits.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allowed:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb6/igt@gen7_exec_parse@basic-allowed.html">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb6/igt@gen9_exec_parse@allowed-all.html">SKIP</a> ([i915#2856]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb3/igt@i915_pm_lpsp@screens-disabled.html">SKIP</a> ([i915#1902])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb7/igt@i915_pm_rpm@modeset-non-lpsp.html">SKIP</a> ([fdo#110892])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html">DMESG-WARN</a> ([i915#180] / [i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb6/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html">SKIP</a> ([i915#5286]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb8/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3763])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb7/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html">SKIP</a> ([fdo#110723]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-glk6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-apl4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html">SKIP</a> ([fdo#109271]) +76 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@2x-modeset:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb8/igt@kms_big_joiner@2x-modeset.html">SKIP</a> ([i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb3/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278] / [i915#3886]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-tglb6/igt@kms_ccs@pipe-a-random-ccs-data-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl7/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-apl6/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-glk6/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-tglb6/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-apl6/igt@kms_chamelium@dp-crc-multiple.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-aspect-ratio:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-glk6/igt@kms_chamelium@hdmi-aspect-ratio.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-audio:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb7/igt@kms_chamelium@hdmi-audio.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb8/igt@kms_color@pipe-d-ctm-0-5.html">SKIP</a> ([fdo#109278] / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl7/igt@kms_color_chamelium@pipe-b-ctm-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb6/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-512x512-onscreen.html">SKIP</a> ([fdo#109271] / [i915#1888])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb3/igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding.html">SKIP</a> ([fdo#109278] / [fdo#109279]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb3/igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement.html">SKIP</a> ([fdo#109278]) +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb7/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-tglb6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a> ([fdo#109274] / [fdo#111825]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-apl1/igt@kms_cursor_legacy@pipe-d-torture-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-4tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb7/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-4tiled.html">SKIP</a> ([i915#5287]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb3/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> ([fdo#109274]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a> ([i915#79]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#180]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">DMESG-WARN</a> ([i915#180]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl7/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109271]) +166 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite.html">SKIP</a> ([fdo#109280] / [fdo#111825]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109280]) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-glk6/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-4:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb3/igt@kms_plane_lowres@pipe-a-tiling-4.html">SKIP</a> ([i915#5288]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-yf:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb3/igt@kms_plane_lowres@pipe-c-tiling-yf.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb3/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping.html">SKIP</a> ([i915#5176]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-apl1/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-glk6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl7/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> ([fdo#109271] / [i915#658]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> ([fdo#109441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> ([fdo#109441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-skl6/igt@kms_rotation_crc@sprite-rotation-90.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl7/igt@kms_rotation_crc@sprite-rotation-90.html">DMESG-WARN</a> ([i915#1982]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-apl4/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb3/igt@kms_vrr@flipline.html">SKIP</a> ([fdo#109502])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-apl4/igt@kms_writeback@writeback-check-output.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-source-outp-inactive:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb3/igt@nouveau_crc@pipe-b-source-outp-inactive.html">SKIP</a> ([i915#2530]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_2:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb6/igt@prime_nv_pcopy@test3_2.html">SKIP</a> ([fdo#109291]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_udl:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-tglb6/igt@prime_udl.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb7/igt@prime_vgem@fence-flip-hang.html">SKIP</a> ([fdo#109295])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl7/igt@sysfs_clients@busy.html">SKIP</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-glk6/igt@sysfs_clients@fair-1.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb6/igt@sysfs_clients@pidname.html">SKIP</a> ([i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-apl6/igt@sysfs_clients@recycle-many.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-rkl-2/igt@fbdev@unaligned-read.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-rkl-6/igt@fbdev@unaligned-read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-rkl-5/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#3063]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-rkl-2/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@bcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-iclb4/igt@gem_exec_capture@pi@bcs0.html">INCOMPLETE</a> ([i915#3371]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb3/igt@gem_exec_capture@pi@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></p>
</li>
<li>
<p>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-tglu-4/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-tglu-2/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-tglu-5/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-apl4/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@smoketest-all:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-rkl-5/igt@gem_exec_schedule@smoketest-all.html">INCOMPLETE</a> ([i915#5080]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-rkl-1/igt@gem_exec_schedule@smoketest-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-glk3/igt@gem_exec_whisper@basic-fds-all.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-glk6/igt@gem_exec_whisper@basic-fds-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-apl4/igt@gem_workarounds@suspend-resume-context.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-apl4/igt@gem_workarounds@suspend-resume-context.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-skl10/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1436] / [i915#716]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22541/shard-skl8/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-iclb5/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#5308]) -&gt; <a href="https://intel-gfx-ci.">PASS</a></li>
</ul>
</li>
</ul>

</body>
</html>

--===============0632277387984019530==--
