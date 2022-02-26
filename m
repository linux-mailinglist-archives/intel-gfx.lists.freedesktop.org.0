Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 298ED4C5394
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Feb 2022 04:40:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBD6010E196;
	Sat, 26 Feb 2022 03:40:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 99E4010E196;
 Sat, 26 Feb 2022 03:40:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 852FBA0078;
 Sat, 26 Feb 2022 03:40:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6954612735787219510=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Sat, 26 Feb 2022 03:40:05 -0000
Message-ID: <164584680551.9641.4099808258292990027@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220222165137.1004194-1-imre.deak@intel.com>
In-Reply-To: <20220222165137.1004194-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Move_power_well_code_to_a_separate_file_=28rev2=29?=
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

--===============6954612735787219510==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Move power well code to a separate file (rev2)
URL   : https://patchwork.freedesktop.org/series/100591/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11276_full -> Patchwork_22373_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (12 -> 13)
------------------------------

  Additional (1): shard-rkl 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22373_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_plane_scaling@downscale-with-rotation-factor-2@pipe-d-downscale-with-rotation}:
    - {shard-dg1}:        NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-dg1-13/igt@kms_plane_scaling@downscale-with-rotation-factor-2@pipe-d-downscale-with-rotation.html

  * {igt@kms_plane_scaling@scaler-with-rotation-unity-scaling}:
    - {shard-rkl}:        NOTRUN -> [SKIP][2] +5 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-rkl-2/igt@kms_plane_scaling@scaler-with-rotation-unity-scaling.html

  * igt@perf_pmu@busy-idle@vecs0:
    - {shard-rkl}:        NOTRUN -> [DMESG-WARN][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-rkl-5/igt@perf_pmu@busy-idle@vecs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_22373_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][4] ([i915#4991])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl3/igt@gem_create@create-massive.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#232])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-tglb7/igt@gem_eio@unwedge-stress.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-tglb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_capture@pi@vecs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][9] ([i915#4547])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@gem_exec_capture@pi@vecs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-kbl:          [PASS][10] -> [FAIL][11] ([i915#2842]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl1/igt@gem_exec_fair@basic-none@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl4/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][12] ([i915#2842]) +4 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#2842]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_whisper@basic-contexts-all:
    - shard-glk:          [PASS][15] -> [DMESG-WARN][16] ([i915#118]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk3/igt@gem_exec_whisper@basic-contexts-all.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk5/igt@gem_exec_whisper@basic-contexts-all.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-glk:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#4613])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk4/igt@gem_lmem_swapping@parallel-random-verify.html
    - shard-apl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#4613])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl1/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-skl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#4613]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-kbl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#4613])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl3/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-iclb:         NOTRUN -> [SKIP][21] ([i915#4270])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-skl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#3323])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@input-checking:
    - shard-apl:          NOTRUN -> [DMESG-WARN][23] ([i915#4991])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl1/igt@gem_userptr_blits@input-checking.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          NOTRUN -> [DMESG-WARN][24] ([i915#1436] / [i915#716])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl9/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-iclb:         NOTRUN -> [SKIP][25] ([i915#2856])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@gen9_exec_parse@unaligned-jump.html

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271]) +147 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@i915_pm_lpsp@screens-disabled.html

  * igt@i915_pm_sseu@full-enable:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#3048])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl1/igt@i915_pm_sseu@full-enable.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl9/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#5183])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl2/igt@i915_selftest@mock@requests.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl4/igt@i915_selftest@mock@requests.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180]) +5 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-apl2/igt@i915_suspend@sysfs-reader.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][33] ([fdo#110725] / [fdo#111614])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb6/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][34] ([i915#3763])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-apl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3777]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-kbl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3777]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3777])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3886]) +3 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#3886]) +5 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl4/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][40] ([fdo#109271]) +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk4/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#3886]) +5 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109278] / [i915#3886]) +3 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109278]) +8 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-apl:          NOTRUN -> [SKIP][44] ([fdo#109271]) +80 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl1/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium@hdmi-cmp-planar-formats:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@kms_chamelium@hdmi-cmp-planar-formats.html

  * igt@kms_chamelium@hdmi-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl4/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html

  * igt@kms_chamelium@vga-frame-dump:
    - shard-apl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl1/igt@kms_chamelium@vga-frame-dump.html

  * igt@kms_color_chamelium@pipe-d-degamma:
    - shard-skl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [fdo#111827]) +14 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@kms_color_chamelium@pipe-d-degamma.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-iclb:         NOTRUN -> [SKIP][49] ([i915#3116])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][50] ([fdo#109278] / [fdo#109279]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb4/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:
    - shard-kbl:          NOTRUN -> [SKIP][51] ([fdo#109271]) +54 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl7/igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#109274] / [fdo#109278]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][53] -> [FAIL][54] ([i915#2346])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-iclb:         [PASS][55] -> [FAIL][56] ([i915#2346])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][57] ([i915#180] / [i915#636])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
    - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109274]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-iclb:         NOTRUN -> [SKIP][59] ([i915#2587])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-glk:          [PASS][60] -> [FAIL][61] ([i915#4911])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
    - shard-iclb:         [PASS][62] -> [SKIP][63] ([i915#3701])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw:
    - shard-iclb:         NOTRUN -> [SKIP][64] ([fdo#109280]) +12 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
    - shard-glk:          [PASS][65] -> [FAIL][66] ([i915#2546])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-iclb:         NOTRUN -> [SKIP][67] ([fdo#109289])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-glk:          [PASS][68] -> [FAIL][69] ([i915#1888])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][70] ([fdo#108145] / [i915#265]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][71] ([fdo#108145] / [i915#265]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-kbl:          NOTRUN -> [FAIL][72] ([fdo#108145] / [i915#265])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][73] ([i915#265])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-iclb:         NOTRUN -> [SKIP][74] ([i915#3536])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#658]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#658]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl6/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][77] -> [SKIP][78] ([fdo#109441]) +3 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          NOTRUN -> [FAIL][79] ([i915#31])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl1/igt@kms_setmode@basic.html

  * igt@kms_sysfs_edid_timing:
    - shard-skl:          NOTRUN -> [FAIL][80] ([IGT#2])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@kms_sysfs_edid_timing.html

  * igt@kms_vrr@flip-basic:
    - shard-iclb:         NOTRUN -> [SKIP][81] ([fdo#109502])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@kms_vrr@flip-basic.html

  * igt@nouveau_crc@pipe-b-source-rg:
    - shard-iclb:         NOTRUN -> [SKIP][82] ([i915#2530])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@nouveau_crc@pipe-b-source-rg.html

  * igt@nouveau_crc@pipe-d-source-rg:
    - shard-iclb:         NOTRUN -> [SKIP][83] ([fdo#109278] / [i915#2530])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb6/igt@nouveau_crc@pipe-d-source-rg.html

  * igt@perf@polling-parameterized:
    - shard-skl:          NOTRUN -> [FAIL][84] ([i915#1542])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl5/igt@perf@polling-parameterized.html

  * igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109291])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name.html

  * igt@syncobj_timeline@invalid-transfer-non-existent-point:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][86] ([i915#5098])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb4/igt@syncobj_timeline@invalid-transfer-non-existent-point.html

  * igt@sysfs_clients@fair-3:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([i915#2994])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@recycle:
    - shard-kbl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#2994]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl3/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@recycle-many:
    - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#2994])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@split-25:
    - shard-apl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#2994])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl6/igt@sysfs_clients@split-25.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-apl:          [PASS][91] -> [FAIL][92] ([i915#1755])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-apl2/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl6/igt@sysfs_timeslice_duration@timeout@vecs0.html
    - shard-kbl:          NOTRUN -> [FAIL][93] ([i915#1755])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl4/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-1us:
    - shard-tglb:         [TIMEOUT][94] ([i915#3063]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-tglb1/igt@gem_eio@in-flight-1us.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-tglb7/igt@gem_eio@in-flight-1us.html

  * igt@gem_eio@kms:
    - shard-tglb:         [FAIL][96] ([i915#232]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-tglb5/igt@gem_eio@kms.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-tglb6/igt@gem_eio@kms.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [TIMEOUT][98] ([i915#2481] / [i915#3070]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb8/igt@gem_eio@unwedge-stress.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb6/igt@gem_eio@unwedge-stress.html
    - {shard-tglu}:       [TIMEOUT][100] ([i915#3063] / [i915#3648]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-tglu-6/igt@gem_eio@unwedge-stress.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-tglu-3/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          [INCOMPLETE][102] ([i915#4547]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl4/igt@gem_exec_capture@pi@rcs0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-glk:          [FAIL][104] ([i915#2842]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk7/igt@gem_exec_fair@basic-pace@vcs0.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk3/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][106] ([i915#2849]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][108] ([i915#180]) -> [PASS][109] +2 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-apl8/igt@gem_workarounds@suspend-resume-context.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-skl:          [INCOMPLETE][110] ([i915#4939]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl7/igt@i915_suspend@fence-restore-tiled2untiled.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl5/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
    - shard-glk:          [DMESG-WARN][112] ([i915#118]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk2/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk9/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-skl:          [FAIL][114] ([i915#2346]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
    - shard-skl:          [INCOMPLETE][116] ([i915#4839]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-glk:          [FAIL][118] ([i915#4911]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-iclb:         [SKIP][120] ([i915#3701]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:
    - shard-glk:          [FAIL][122] ([i915#2546]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk9/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-kbl:          [DMESG-WARN][124] ([i915#180]) -> [PASS][125] +3 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-iclb:         [SKIP][126] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb3/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][128] ([fdo#109441]) -> [PASS][129] +4 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-glk:          [FAIL][130] ([i915#31]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk8/igt@kms_setmode@basic.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk6/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-accuracy-idle:
    - shard-glk:          [FAIL][132] ([i915#43]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk1/igt@kms_vblank@pipe-c-accuracy-idle.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk6/igt@kms_vblank@pipe-c-accuracy-idle.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-iclb:         [DMESG-WARN][134] ([i915#5076]) -> [SKIP][135] ([i915#4525]) +1 similar issue
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb4/igt@gem_exec_balancer@parallel-contexts.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb6/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [SKIP][136] ([i915#4525]) -> [DMESG-FAIL][137] ([i915#5076])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb7/igt@gem_exec_balancer@parall

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/index.html

--===============6954612735787219510==
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
<tr><td><b>Series:</b></td><td>drm/i915: Move power well code to a separate file (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100591/">https://patchwork.freedesktop.org/series/100591/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11276_full -&gt; Patchwork_22373_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (12 -&gt; 13)</h2>
<p>Additional (1): shard-rkl </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22373_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@kms_plane_scaling@downscale-with-rotation-factor-2@pipe-d-downscale-with-rotation}:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-dg1-13/igt@kms_plane_scaling@downscale-with-rotation-factor-2@pipe-d-downscale-with-rotation.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>{igt@kms_plane_scaling@scaler-with-rotation-unity-scaling}:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-rkl-2/igt@kms_plane_scaling@scaler-with-rotation-unity-scaling.html">SKIP</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-idle@vecs0:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-rkl-5/igt@perf_pmu@busy-idle@vecs0.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22373_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl3/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG-WARN</a> ([i915#180]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-tglb7/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-tglb5/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#232])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vecs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@gem_exec_capture@pi@vecs0.html">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl1/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl4/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk3/igt@gem_exec_whisper@basic-contexts-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk5/igt@gem_exec_whisper@basic-contexts-all.html">DMESG-WARN</a> ([i915#118]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk4/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl1/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@gem_lmem_swapping@random-engines.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl3/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@gem_pxp@create-regular-context-1.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl1/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl9/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@gen9_exec_parse@unaligned-jump.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@i915_pm_lpsp@screens-disabled.html">SKIP</a> ([fdo#109271]) +147 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl1/igt@i915_pm_sseu@full-enable.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl9/igt@i915_pm_sseu@full-enable.html">FAIL</a> ([i915#3048])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@requests:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl2/igt@i915_selftest@mock@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl4/igt@i915_selftest@mock@requests.html">INCOMPLETE</a> ([i915#5183])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-apl2/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl6/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a> ([i915#180]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb6/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3763])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl4/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk4/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs.html">SKIP</a> ([fdo#109271]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278] / [i915#3886]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs.html">SKIP</a> ([fdo#109278]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl1/igt@kms_cdclk@mode-transition.html">SKIP</a> ([fdo#109271]) +80 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-cmp-planar-formats:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@kms_chamelium@hdmi-cmp-planar-formats.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl4/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-frame-dump:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl1/igt@kms_chamelium@vga-frame-dump.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-degamma:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@kms_color_chamelium@pipe-d-degamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb4/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html">SKIP</a> ([fdo#109278] / [fdo#109279]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl7/igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen.html">SKIP</a> ([fdo#109271]) +54 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html">SKIP</a> ([fdo#109274]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> ([i915#2587])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">FAIL</a> ([i915#4911])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw.html">SKIP</a> ([fdo#109280]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">FAIL</a> ([i915#2546])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html">FAIL</a> ([i915#1888])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@kms_plane_lowres@pipe-a-tiling-x.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl6/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> ([fdo#109441]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl1/igt@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@kms_vrr@flip-basic.html">SKIP</a> ([fdo#109502])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-source-rg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@nouveau_crc@pipe-b-source-rg.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-rg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb6/igt@nouveau_crc@pipe-d-source-rg.html">SKIP</a> ([fdo#109278] / [i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl5/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-transfer-non-existent-point:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb4/igt@syncobj_timeline@invalid-transfer-non-existent-point.html">DMESG-WARN</a> ([i915#5098])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@sysfs_clients@fair-3.html">SKIP</a> ([i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl3/igt@sysfs_clients@recycle.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@sysfs_clients@recycle-many.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl6/igt@sysfs_clients@split-25.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@vecs0:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-apl2/igt@sysfs_timeslice_duration@timeout@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl6/igt@sysfs_timeslice_duration@timeout@vecs0.html">FAIL</a> ([i915#1755])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl4/igt@sysfs_timeslice_duration@timeout@vecs0.html">FAIL</a> ([i915#1755])</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-1us:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-tglb1/igt@gem_eio@in-flight-1us.html">TIMEOUT</a> ([i915#3063]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-tglb7/igt@gem_eio@in-flight-1us.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-tglb5/igt@gem_eio@kms.html">FAIL</a> ([i915#232]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-tglb6/igt@gem_eio@kms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb8/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2481] / [i915#3070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb6/igt@gem_eio@unwedge-stress.html">PASS</a></p>
</li>
<li>
<p>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-tglu-6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#3063] / [i915#3648]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-tglu-3/igt@gem_eio@unwedge-stress.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl4/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> ([i915#4547]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@gem_exec_capture@pi@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk7/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk3/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-apl8/igt@gem_workarounds@suspend-resume-context.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl1/igt@gem_workarounds@suspend-resume-context.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl7/igt@i915_suspend@fence-restore-tiled2untiled.html">INCOMPLETE</a> ([i915#4939]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl5/igt@i915_suspend@fence-restore-tiled2untiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk2/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html">DMESG-WARN</a> ([i915#118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk9/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html">INCOMPLETE</a> ([i915#4839]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">FAIL</a> ([i915#4911]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#3701]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html">FAIL</a> ([i915#2546]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk9/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb3/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> ([fdo#109642] / [fdo#111068] / [i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk8/igt@kms_setmode@basic.html">FAIL</a> ([i915#31]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk6/igt@kms_setmode@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-accuracy-idle:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk1/igt@kms_vblank@pipe-c-accuracy-idle.html">FAIL</a> ([i915#43]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk6/igt@kms_vblank@pipe-c-accuracy-idle.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb4/igt@gem_exec_balancer@parallel-contexts.html">DMESG-WARN</a> ([i915#5076]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb6/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a> ([i915#4525]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb7/igt@gem_exec_balancer@parall">SKIP</a> ([i915#4525]) -&gt; [DMESG-FAIL][137] ([i915#5076])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============6954612735787219510==--
