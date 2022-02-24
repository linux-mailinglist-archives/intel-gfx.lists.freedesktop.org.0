Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D7E4C2ADD
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 12:25:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C59AF10FADB;
	Thu, 24 Feb 2022 11:25:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7EF0A10FAD8;
 Thu, 24 Feb 2022 11:25:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7BBCBA66C9;
 Thu, 24 Feb 2022 11:25:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5549794194853837268=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Balasubramani Vivekanandan" <balasubramani.vivekanandan@intel.com>
Date: Thu, 24 Feb 2022 11:25:16 -0000
Message-ID: <164570191647.32675.7773340223480526121@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220222145206.76118-1-balasubramani.vivekanandan@intel.com>
In-Reply-To: <20220222145206.76118-1-balasubramani.vivekanandan@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Use_the_memcpy=5Ffrom=5Fwc_function_from_drm_=28rev2?=
 =?utf-8?q?=29?=
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

--===============5549794194853837268==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Use the memcpy_from_wc function from drm (rev2)
URL   : https://patchwork.freedesktop.org/series/100581/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11276_full -> Patchwork_22372_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22372_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22372_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (12 -> 12)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22372_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_eio@hibernate:
    - shard-snb:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-snb7/igt@gem_eio@hibernate.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-snb5/igt@gem_eio@hibernate.html

  * igt@perf@enable-disable:
    - shard-skl:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl9/igt@perf@enable-disable.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl5/igt@perf@enable-disable.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_display_modes@extended-mode-basic}:
    - {shard-dg1}:        NOTRUN -> [SKIP][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-dg1-18/igt@kms_display_modes@extended-mode-basic.html

  * {igt@kms_plane_scaling@downscale-with-rotation-factor-2@pipe-d-downscale-with-rotation}:
    - {shard-dg1}:        NOTRUN -> [INCOMPLETE][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-dg1-19/igt@kms_plane_scaling@downscale-with-rotation-factor-2@pipe-d-downscale-with-rotation.html

  * {igt@kms_plane_scaling@downscale-with-rotation-factor-4@pipe-c-downscale-with-rotation}:
    - shard-iclb:         [PASS][7] -> [SKIP][8] +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb3/igt@kms_plane_scaling@downscale-with-rotation-factor-4@pipe-c-downscale-with-rotation.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb6/igt@kms_plane_scaling@downscale-with-rotation-factor-4@pipe-c-downscale-with-rotation.html

  
Known issues
------------

  Here are the changes found in Patchwork_22372_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][9] ([i915#4991])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-kbl7/igt@gem_create@create-massive.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [PASS][10] -> [DMESG-WARN][11] ([i915#180]) +7 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-glk:          [PASS][12] -> [DMESG-WARN][13] ([i915#118]) +2 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk8/igt@gem_eio@in-flight-contexts-10ms.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-glk1/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][14] -> [TIMEOUT][15] ([i915#3063] / [i915#3648])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-tglb7/igt@gem_eio@unwedge-stress.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-tglb7/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][16] ([i915#2842]) +4 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#2842])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-glk:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#4613])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-glk7/igt@gem_lmem_swapping@parallel-random-verify.html
    - shard-apl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#4613])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-apl6/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-skl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#4613])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl10/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-kbl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#4613])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-kbl7/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-skl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#3323])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl10/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          NOTRUN -> [DMESG-WARN][24] ([i915#1436] / [i915#716])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl3/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#454])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#454])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl4/igt@i915_pm_dc@dc6-psr.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl7/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-skl:          NOTRUN -> [SKIP][29] ([fdo#109271]) +135 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl10/igt@i915_pm_lpsp@screens-disabled.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][30] -> [DMESG-WARN][31] ([i915#180]) +5 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-apl2/igt@i915_suspend@sysfs-reader.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-apl1/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#110725] / [fdo#111614])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb3/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3777]) +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-apl6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][34] ([i915#3763])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-kbl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3777]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-kbl7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
    - shard-skl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3777]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3886]) +4 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-apl8/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3886]) +6 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-kbl7/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109278] / [i915#3886])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb3/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][40] ([fdo#109271]) +4 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-glk7/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#3886]) +7 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl10/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109278]) +2 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb3/igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_cdclk@mode-transition:
    - shard-apl:          NOTRUN -> [SKIP][43] ([fdo#109271]) +69 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-apl6/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium@hdmi-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-kbl1/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html

  * igt@kms_color_chamelium@pipe-a-degamma:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109284] / [fdo#111827])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb3/igt@kms_color_chamelium@pipe-a-degamma.html

  * igt@kms_color_chamelium@pipe-c-gamma:
    - shard-apl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-apl8/igt@kms_color_chamelium@pipe-c-gamma.html

  * igt@kms_color_chamelium@pipe-d-degamma:
    - shard-skl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +12 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl10/igt@kms_color_chamelium@pipe-d-degamma.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109278] / [fdo#109279])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb2/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109274] / [fdo#109278])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-iclb:         [PASS][50] -> [FAIL][51] ([i915#2346])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
    - shard-skl:          [PASS][52] -> [FAIL][53] ([i915#2346] / [i915#533])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][54] ([i915#180] / [i915#636])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][55] -> [FAIL][56] ([i915#2122])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][57] -> [FAIL][58] ([i915#79])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-iclb:         [PASS][59] -> [SKIP][60] ([i915#3701])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-iclb:         NOTRUN -> [SKIP][61] ([fdo#109280]) +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
    - shard-glk:          [PASS][62] -> [FAIL][63] ([i915#2546])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-kbl:          NOTRUN -> [SKIP][64] ([fdo#109271]) +52 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-kbl7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-glk:          [PASS][65] -> [FAIL][66] ([i915#1888])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-glk9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][67] ([fdo#108145] / [i915#265]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][68] ([fdo#108145] / [i915#265]) +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-kbl:          NOTRUN -> [FAIL][69] ([fdo#108145] / [i915#265])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-kbl7/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][70] ([i915#265])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-kbl1/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#658]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#658])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-apl8/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][73] -> [SKIP][74] ([fdo#109441]) +3 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_sysfs_edid_timing:
    - shard-skl:          NOTRUN -> [FAIL][75] ([IGT#2])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl10/igt@kms_sysfs_edid_timing.html

  * igt@nouveau_crc@pipe-d-source-rg:
    - shard-iclb:         NOTRUN -> [SKIP][76] ([fdo#109278] / [i915#2530])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb3/igt@nouveau_crc@pipe-d-source-rg.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][77] -> [FAIL][78] ([i915#1722])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl10/igt@perf@polling-small-buf.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl8/igt@perf@polling-small-buf.html

  * igt@syncobj_timeline@invalid-transfer-non-existent-point:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][79] ([i915#5098])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb2/igt@syncobj_timeline@invalid-transfer-non-existent-point.html

  * igt@syncobj_timeline@transfer-timeline-point:
    - shard-kbl:          NOTRUN -> [DMESG-FAIL][80] ([i915#5098])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-kbl7/igt@syncobj_timeline@transfer-timeline-point.html

  * igt@sysfs_clients@recycle:
    - shard-kbl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#2994]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-kbl7/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@recycle-many:
    - shard-skl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#2994]) +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl10/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@split-25:
    - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#2994])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-apl8/igt@sysfs_clients@split-25.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-1us:
    - shard-tglb:         [TIMEOUT][84] ([i915#3063]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-tglb1/igt@gem_eio@in-flight-1us.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-tglb5/igt@gem_eio@in-flight-1us.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [TIMEOUT][86] ([i915#2481] / [i915#3070]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb8/igt@gem_eio@unwedge-stress.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][88] ([i915#2842]) -> [PASS][89] +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][90] ([i915#2842]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][92] ([i915#180]) -> [PASS][93] +2 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-apl8/igt@gem_workarounds@suspend-resume-context.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-apl6/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-skl:          [INCOMPLETE][94] ([i915#4939]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl7/igt@i915_suspend@fence-restore-tiled2untiled.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl9/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-glk:          [DMESG-WARN][96] ([i915#118]) -> [PASS][97] +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk7/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-glk4/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - {shard-tglu}:       [DMESG-WARN][98] ([i915#402]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-tglu-1/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-tglu-4/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-skl:          [FAIL][100] ([i915#2346]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
    - shard-skl:          [INCOMPLETE][102] ([i915#4839]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-glk:          [FAIL][104] ([i915#4911]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-glk3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-iclb:         [SKIP][106] ([i915#3701]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:
    - shard-glk:          [FAIL][108] ([i915#2546]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-glk6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][110] ([i915#1188]) -> [PASS][111] +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][112] ([i915#180]) -> [PASS][113] +3 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-iclb:         [SKIP][114] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb3/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][116] ([fdo#109441]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-glk:          [FAIL][118] ([i915#31]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk8/igt@kms_setmode@basic.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-glk3/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-accuracy-idle:
    - shard-glk:          [FAIL][120] ([i915#43]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk1/igt@kms_vblank@pipe-c-accuracy-idle.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-glk3/igt@kms_vblank@pipe-c-accuracy-idle.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [SKIP][122] ([i915#4525]) -> [DMESG-WARN][123] ([i915#5076])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb5/igt@gem_exec_balancer@parallel.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb4/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-iclb:         [DMESG-WARN][124] ([i915#5076]) -> [SKIP][125] ([i915#4525])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb4/igt@gem_exec_balancer@parallel-contexts.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb3/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [SKIP][126] ([i915#4525]) -> [DMESG-FAIL][127] ([i915#5076])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][128] ([i915#588]) -> [SKIP][129] ([i915#658])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][130] ([i915#1804] / [i915#2684]) -> [WARN][131] ([i915#2684])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x10-sliding:
    - shard-skl:          [SKIP][132] ([fdo#109271]) -> [SKIP][133] ([fdo#109271] / [i915#1888])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-32x10-sliding.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-32x10-sliding.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-iclb:         [SKIP][134] ([i915#2920]) -> [SKIP][135] ([fdo#111068] / [i915#658])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#4312] / [i915#602]) -> ([FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166], [FAIL][167], [FAIL][168], [FAIL][169], [FAIL][170]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#3002] / [i915#4312] / [i915#602] / [i915#92])
   [136]: http

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/index.html

--===============5549794194853837268==
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
<tr><td><b>Series:</b></td><td>drm/i915: Use the memcpy_from_wc function from drm (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100581/">https://patchwork.freedesktop.org/series/100581/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11276_full -&gt; Patchwork_22372_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22372_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22372_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (12 -&gt; 12)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22372_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-snb7/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-snb5/igt@gem_eio@hibernate.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@perf@enable-disable:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl9/igt@perf@enable-disable.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl5/igt@perf@enable-disable.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@kms_display_modes@extended-mode-basic}:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-dg1-18/igt@kms_display_modes@extended-mode-basic.html">SKIP</a></li>
</ul>
</li>
<li>
<p>{igt@kms_plane_scaling@downscale-with-rotation-factor-2@pipe-d-downscale-with-rotation}:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-dg1-19/igt@kms_plane_scaling@downscale-with-rotation-factor-2@pipe-d-downscale-with-rotation.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>{igt@kms_plane_scaling@downscale-with-rotation-factor-4@pipe-c-downscale-with-rotation}:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb3/igt@kms_plane_scaling@downscale-with-rotation-factor-4@pipe-c-downscale-with-rotation.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb6/igt@kms_plane_scaling@downscale-with-rotation-factor-4@pipe-c-downscale-with-rotation.html">SKIP</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22372_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-kbl7/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG-WARN</a> ([i915#180]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk8/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-glk1/igt@gem_eio@in-flight-contexts-10ms.html">DMESG-WARN</a> ([i915#118]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-tglb7/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-tglb7/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#3063] / [i915#3648])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-glk7/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-apl6/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl10/igt@gem_lmem_swapping@random-engines.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-kbl7/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl10/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl3/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb2/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb2/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl4/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl7/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl10/igt@i915_pm_lpsp@screens-disabled.html">SKIP</a> ([fdo#109271]) +135 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-apl2/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-apl1/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a> ([i915#180]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb3/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-apl6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3763])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-kbl7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-apl8/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-kbl7/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb3/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-glk7/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs.html">SKIP</a> ([fdo#109271]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl10/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb3/igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-apl6/igt@kms_cdclk@mode-transition.html">SKIP</a> ([fdo#109271]) +69 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-kbl1/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-degamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb3/igt@kms_color_chamelium@pipe-a-degamma.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-gamma:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-apl8/igt@kms_color_chamelium@pipe-c-gamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-degamma:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl10/igt@kms_color_chamelium@pipe-d-degamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb2/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">SKIP</a> ([fdo#109274] / [fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346])</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109280]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">FAIL</a> ([i915#2546])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-kbl7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#109271]) +52 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-glk9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html">FAIL</a> ([i915#1888])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-kbl7/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-kbl1/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-apl8/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> ([fdo#109441]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl10/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-rg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb3/igt@nouveau_crc@pipe-d-source-rg.html">SKIP</a> ([fdo#109278] / [i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl10/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl8/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1722])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-transfer-non-existent-point:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb2/igt@syncobj_timeline@invalid-transfer-non-existent-point.html">DMESG-WARN</a> ([i915#5098])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@transfer-timeline-point:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-kbl7/igt@syncobj_timeline@transfer-timeline-point.html">DMESG-FAIL</a> ([i915#5098])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-kbl7/igt@sysfs_clients@recycle.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl10/igt@sysfs_clients@recycle-many.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-apl8/igt@sysfs_clients@split-25.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-1us:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-tglb1/igt@gem_eio@in-flight-1us.html">TIMEOUT</a> ([i915#3063]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-tglb5/igt@gem_eio@in-flight-1us.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb8/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2481] / [i915#3070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb6/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-apl8/igt@gem_workarounds@suspend-resume-context.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-apl6/igt@gem_workarounds@suspend-resume-context.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl7/igt@i915_suspend@fence-restore-tiled2untiled.html">INCOMPLETE</a> ([i915#4939]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl9/igt@i915_suspend@fence-restore-tiled2untiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk7/igt@kms_big_fb@linear-32bpp-rotate-180.html">DMESG-WARN</a> ([i915#118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-glk4/igt@kms_big_fb@linear-32bpp-rotate-180.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-tglu-1/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">DMESG-WARN</a> ([i915#402]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-tglu-4/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html">INCOMPLETE</a> ([i915#4839]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">FAIL</a> ([i915#4911]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-glk3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#3701]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html">FAIL</a> ([i915#2546]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-glk6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb3/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> ([fdo#109642] / [fdo#111068] / [i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk8/igt@kms_setmode@basic.html">FAIL</a> ([i915#31]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-glk3/igt@kms_setmode@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-accuracy-idle:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk1/igt@kms_vblank@pipe-c-accuracy-idle.html">FAIL</a> ([i915#43]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-glk3/igt@kms_vblank@pipe-c-accuracy-idle.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb5/igt@gem_exec_balancer@parallel.html">SKIP</a> ([i915#4525]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb4/igt@gem_exec_balancer@parallel.html">DMESG-WARN</a> ([i915#5076])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb4/igt@gem_exec_balancer@parallel-contexts.html">DMESG-WARN</a> ([i915#5076]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb3/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html">SKIP</a> ([i915#4525]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html">DMESG-FAIL</a> ([i915#5076])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([i915#588]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#1804] / [i915#2684]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x10-sliding:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-32x10-sliding.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-32x10-sliding.html">SKIP</a> ([fdo#109271] / [i915#1888])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html">SKIP</a> ([i915#2920]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22372/shard-iclb7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html">SKIP</a> ([fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href="http">FAIL</a>, [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#4312] / [i915#602]) -&gt; ([FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166], [FAIL][167], [FAIL][168], [FAIL][169], [FAIL][170]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#3002] / [i915#4312] / [i915#602] / [i915#92])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5549794194853837268==--
