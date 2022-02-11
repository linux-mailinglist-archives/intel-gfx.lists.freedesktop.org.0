Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F55B4B3067
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 23:26:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12ADE10EB73;
	Fri, 11 Feb 2022 22:26:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 37A2F10EB73;
 Fri, 11 Feb 2022 22:26:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 32EFDA0169;
 Fri, 11 Feb 2022 22:26:53 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4869485401938394026=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 11 Feb 2022 22:26:53 -0000
Message-ID: <164461841317.25606.1611694887939621013@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220210062403.18690-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220210062403.18690-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Futher_optimize_plane_updates_=28rev5=29?=
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

--===============4869485401938394026==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Futher optimize plane updates (rev5)
URL   : https://patchwork.freedesktop.org/series/99149/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11220_full -> Patchwork_22255_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22255_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22255_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22255_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@flip-vs-fences-interruptible@a-vga1:
    - shard-snb:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-snb5/igt@kms_flip@flip-vs-fences-interruptible@a-vga1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-snb2/igt@kms_flip@flip-vs-fences-interruptible@a-vga1.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_balancer@busy:
    - {shard-rkl}:        [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-1/igt@gem_exec_balancer@busy.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-5/igt@gem_exec_balancer@busy.html

  * igt@i915_module_load@reload-no-display:
    - {shard-rkl}:        NOTRUN -> [INCOMPLETE][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-5/igt@i915_module_load@reload-no-display.html

  * igt@syncobj_timeline@transfer-timeline-point:
    - {shard-rkl}:        NOTRUN -> [DMESG-FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-2/igt@syncobj_timeline@transfer-timeline-point.html

  
Known issues
------------

  Here are the changes found in Patchwork_22255_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - {shard-rkl}:        ([PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [FAIL][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28]) -> ([PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-5/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-2/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-2/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-4/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-4/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-5/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-5/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-6/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-1/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-1/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-1/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-2/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-2/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-2/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-6/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-6/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-5/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-5/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-5/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-2/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-2/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-2/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-2/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-1/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][50] -> [FAIL][51] ([i915#2842])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][52] -> [FAIL][53] ([i915#2842]) +3 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][54] -> [FAIL][55] ([i915#2849])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#2190])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-apl1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@random:
    - shard-apl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#4613])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-apl3/igt@gem_lmem_swapping@random.html

  * igt@gem_pread@exhaustion:
    - shard-tglb:         NOTRUN -> [WARN][58] ([i915#2658])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-tglb5/igt@gem_pread@exhaustion.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          NOTRUN -> [DMESG-WARN][59] ([i915#1436] / [i915#716])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-apl1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271]) +71 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-apl4/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-glk:          [PASS][61] -> [DMESG-WARN][62] ([i915#118]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-glk5/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-glk4/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglb:         NOTRUN -> [SKIP][63] ([fdo#111615])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-tglb5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#3886])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-apl3/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#3886])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl1/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-hpd-enable-disable-mode:
    - shard-tglb:         NOTRUN -> [SKIP][66] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-tglb5/igt@kms_chamelium@dp-hpd-enable-disable-mode.html

  * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
    - shard-skl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [fdo#111827])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-skl7/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html

  * igt@kms_chamelium@vga-hpd-enable-disable-mode:
    - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-apl3/igt@kms_chamelium@vga-hpd-enable-disable-mode.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][69] -> [DMESG-WARN][70] ([i915#180]) +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions:
    - shard-tglb:         NOTRUN -> [SKIP][71] ([fdo#109274] / [fdo#111825])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-tglb5/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][72] -> [FAIL][73] ([i915#2346] / [i915#533])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][74] -> [INCOMPLETE][75] ([i915#180] / [i915#636])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [PASS][76] -> [FAIL][77] ([i915#2122]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-iclb:         [PASS][78] -> [SKIP][79] ([i915#3701])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
    - shard-kbl:          NOTRUN -> [SKIP][80] ([fdo#109271]) +23 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-iclb:         [PASS][81] -> [FAIL][82] ([i915#1888] / [i915#2546])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt:
    - shard-tglb:         NOTRUN -> [SKIP][83] ([fdo#109280] / [fdo#111825]) +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt:
    - shard-iclb:         [PASS][84] -> [FAIL][85] ([i915#1888])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-iclb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-iclb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][86] -> [FAIL][87] ([i915#1188])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-skl7/igt@kms_hdr@bpc-switch.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-skl4/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-tglb:         NOTRUN -> [SKIP][88] ([i915#1187])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-tglb5/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][89] ([i915#180])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - shard-apl:          [PASS][90] -> [DMESG-WARN][91] ([i915#180])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-skl:          [PASS][92] -> [INCOMPLETE][93] ([i915#4939])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][94] -> [FAIL][95] ([fdo#108145] / [i915#265])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][96] -> [SKIP][97] ([fdo#109441]) +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-iclb6/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_vblank@pipe-d-query-forked-busy:
    - shard-skl:          NOTRUN -> [SKIP][98] ([fdo#109271]) +8 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-skl7/igt@kms_vblank@pipe-d-query-forked-busy.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-kbl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#2437])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl3/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@pipe-a-source-outp-inactive:
    - shard-tglb:         NOTRUN -> [SKIP][100] ([i915#2530]) +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-tglb5/igt@nouveau_crc@pipe-a-source-outp-inactive.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-tglb:         NOTRUN -> [SKIP][101] ([fdo#109289])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-tglb5/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@prime_nv_api@i915_nv_import_twice:
    - shard-tglb:         NOTRUN -> [SKIP][102] ([fdo#109291])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-tglb7/igt@prime_nv_api@i915_nv_import_twice.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-apl:          [TIMEOUT][103] ([i915#3063]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-apl3/igt@gem_eio@in-flight-contexts-10ms.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-apl4/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_exec_capture@pi@bcs0:
    - {shard-rkl}:        [INCOMPLETE][105] ([i915#3371]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-6/igt@gem_exec_capture@pi@bcs0.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-5/igt@gem_exec_capture@pi@bcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [FAIL][107] ([i915#2842]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fence@syncobj-export:
    - {shard-rkl}:        [DMESG-WARN][109] -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-5/igt@gem_exec_fence@syncobj-export.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-4/igt@gem_exec_fence@syncobj-export.html

  * igt@gem_exec_gttfill@engines@vecs0:
    - {shard-rkl}:        [INCOMPLETE][111] ([i915#5080]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-5/igt@gem_exec_gttfill@engines@vecs0.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-1/igt@gem_exec_gttfill@engines@vecs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][113] ([i915#2190]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-tglb8/igt@gem_huc_copy@huc-copy.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - {shard-rkl}:        [SKIP][115] ([i915#1845]) -> [PASS][116] +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-4/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-6/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - {shard-rkl}:        [SKIP][117] ([i915#1149] / [i915#4098]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-4/igt@kms_color@pipe-a-ctm-0-75.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-iclb:         [FAIL][119] ([i915#2346]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-iclb5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [INCOMPLETE][121] ([i915#180]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@plain-flip-ts-check@c-edp1:
    - shard-skl:          [FAIL][123] ([i915#2122]) -> [PASS][124] +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-skl2/igt@kms_flip@plain-flip-ts-check@c-edp1.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-skl3/igt@kms_flip@plain-flip-ts-check@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [DMESG-WARN][125] ([i915#180]) -> [PASS][126] +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-apl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-apl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][127] ([i915#180]) -> [PASS][128] +2 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][129] ([fdo#108145] / [i915#265]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][131] ([fdo#109441]) -> [PASS][132] +1 similar issue
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [FAIL][133] ([i915#1542]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-glk3/igt@perf@polling-parameterized.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-glk8/igt@perf@polling-parameterized.html
    - shard-kbl:          [FAIL][135] ([i915#1542]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-kbl6/igt@perf@polling-parameterized.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl3/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [SKIP][137] ([i915#4525]) -> [DMESG-WARN][138] ([i915#5076])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-iclb5/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][139] ([i915#2684]) -> [FAIL][140] ([i915#2680])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_color@pipe-d-ctm-negative:
    - shard-glk:          [SKIP][141] ([fdo#109271] / [i915#1888]) -> [SKIP][142] ([fdo#109271])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-glk2/igt@kms_color@pipe-d-ctm-negative.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-glk7/igt@kms_color@pipe-d-ctm-negative.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#4312]) -> ([FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166], [FAIL][167], [FAIL][168], [FAIL][169], [FAIL][170], [FAIL][171], [FAIL][172]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#4312] / [i915#92])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-kbl4/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-kbl1/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-kbl7/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-kbl3/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-kbl1/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-kbl1/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-kbl7/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-kbl7/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-kbl3/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-kbl1/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-kbl1/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-kbl1/igt@runner@aborted.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-kbl4/igt@runner@aborted.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-kbl6/igt@runner@aborted.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-kbl7/igt@runner@aborted.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl1/igt@runner@aborted.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl6/igt@runner@aborted.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl7/igt@runner@aborted.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl4/igt@runner@aborted.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl4/igt@runner@aborted.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl1/igt@runner@aborted.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl7/igt@runner@aborted.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl1/igt@runner@aborted.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl1/igt@runner@aborted.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl1/igt@runner@aborted.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl4/igt@runner@aborted.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl1/igt@runner@aborted.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl3/igt@runner@aborted.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl7/igt@runner@aborted.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl6/igt@runner@aborted.html
    - shard-apl:          ([FAIL][173], [FAIL][174], [FAIL][175], [FAIL][176], [FAIL][177], [FAIL][178], [FAIL][179], [FAIL][180]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#4312]) -> ([FAIL][181], [FAIL][182], [FAIL][183], [FAIL][184], [FAIL][185], [FAIL][186], [FAIL][187]) ([fdo#109271] / [i915#1814] / [i915#3002] / [i915#4312])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-apl2/igt@runner@aborted.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-apl2/igt@runner@aborted.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-apl8/igt@runner@aborted.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-apl8/igt@runner@aborted.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-apl6/igt@runner@aborted.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-apl6/igt@runner@aborted.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-apl1/igt@runner@aborted.html
   [180]: https://int

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/index.html

--===============4869485401938394026==
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
<tr><td><b>Series:</b></td><td>drm/i915: Futher optimize plane updates (rev=
5)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/99149/">https://patchwork.freedesktop.org/series/99149/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22255/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22255/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11220_full -&gt; Patchwork_22255_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22255_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_22255_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22255_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_flip@flip-vs-fences-interruptible@a-vga1:<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-snb5/igt@kms_flip@flip-vs-fences-interruptible@a-vga1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22255/shard-snb2/igt@kms_flip@flip-vs-fences-interruptible@a-vga1.ht=
ml">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_balancer@busy:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-rkl-1/igt@gem_exec_balancer@busy.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rk=
l-5/igt@gem_exec_balancer@busy.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-no-display:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22255/shard-rkl-5/igt@i915_module_load@reload-no-di=
splay.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@transfer-timeline-point:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22255/shard-rkl-2/igt@syncobj_timeline@transfer-tim=
eline-point.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22255_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11220/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-2/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11220/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11220/shard-rkl-4/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-5/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_112=
20/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_11220/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-5/boot.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/sha=
rd-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_11220/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-5/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl=
-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-1/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-1/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11220/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11220/shard-rkl-1/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-2/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1122=
0/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_11220/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-rkl-2/boot.html">PASS=
</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
22255/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_22255/shard-rkl-1/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-6/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22255/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22255/shard-rkl-6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-5/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22255/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-5=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_22255/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-4/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rk=
l-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22255/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard=
-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22255/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-2/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/sh=
ard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22255/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-1/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255=
/shard-rkl-1/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2255/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i=
915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/sh=
ard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) +3 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_222=
55/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#=
2849])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22255/shard-apl1/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22255/shard-apl3/igt@gem_lmem_swapping@random.html"=
>SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22255/shard-tglb5/igt@gem_pread@exhaustion.html">WA=
RN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22255/shard-apl1/igt@gen9_exec_parse@allowed-all.ht=
ml">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22255/shard-apl4/igt@i915_pm_rpm@modeset-lpsp-stres=
s.html">SKIP</a> ([fdo#109271]) +71 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-glk5/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
255/shard-glk4/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">DMESG-WARN</a>=
 ([i915#118]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22255/shard-tglb5/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-32bpp-rotate-0-async-flip.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22255/shard-apl3/igt@kms_ccs@pipe-c-bad-pixel-forma=
t-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22255/shard-kbl1/igt@kms_ccs@pipe-c-bad-rotation-90=
-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22255/shard-tglb5/igt@kms_chamelium@dp-hpd-enable-d=
isable-mode.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</=
li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22255/shard-skl7/igt@kms_chamelium@hdmi-hpd-with-en=
abled-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-enable-disable-mode:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22255/shard-apl3/igt@kms_chamelium@vga-hpd-enable-d=
isable-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2255/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</=
a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22255/shard-tglb5/igt@kms_cursor_legacy@cursora-vs-=
flipb-atomic-transitions.html">SKIP</a> ([fdo#109274] / [fdo#111825])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22255/shard-skl6/igt@kms_cursor_legacy@flip-vs-c=
ursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#5=
33])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-=
kbl4/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915=
#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@c-e=
dp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22255/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible=
@c-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp=
-ytile-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22255/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22255/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +23 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-c=
ur-indfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_22255/shard-iclb5/igt@kms_frontbuffer_tracki=
ng@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html">FAIL</a> ([i915#1888] /=
 [i915#2546])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22255/shard-tglb5/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> ([fdo#109280] / [fdo#111825]=
) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-iclb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indf=
b-pgflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_22255/shard-iclb5/igt@kms_frontbuffer_tracking@psr-1p-=
primscrn-indfb-pgflip-blt.html">FAIL</a> ([i915#1888])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-skl7/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-skl4/ig=
t@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22255/shard-tglb5/igt@kms_hdr@static-toggle-suspend=
.html">SKIP</a> ([i915#1187])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22255/shard-kbl1/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-c.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend@p=
ipe-a-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_22255/shard-apl4/igt@kms_plane@plane-panning-bottom-ri=
ght-suspend@pipe-a-planes.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend@p=
ipe-b-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_22255/shard-skl10/igt@kms_plane@plane-panning-bottom-r=
ight-suspend@pipe-b-planes.html">INCOMPLETE</a> ([i915#4939])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mi=
n.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_22255/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-=
min.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255=
/shard-iclb6/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> ([fdo#10944=
1]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-query-forked-busy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22255/shard-skl7/igt@kms_vblank@pipe-d-query-forked=
-busy.html">SKIP</a> ([fdo#109271]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22255/shard-kbl3/igt@kms_writeback@writeback-pixel-=
formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-outp-inactive:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22255/shard-tglb5/igt@nouveau_crc@pipe-a-source-out=
p-inactive.html">SKIP</a> ([i915#2530]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22255/shard-tglb5/igt@perf@gen8-unprivileged-single=
-ctx-counters.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_import_twice:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22255/shard-tglb7/igt@prime_nv_api@i915_nv_import_t=
wice.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-apl3/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT<=
/a> ([i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22255/shard-apl4/igt@gem_eio@in-flight-contexts-10ms.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-rkl-6/igt@gem_exec_capture@pi@bcs0.html">INCOMPLETE</a>=
 ([i915#3371]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22255/shard-rkl-5/igt@gem_exec_capture@pi@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22255/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-export:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-rkl-5/igt@gem_exec_fence@syncobj-export.html">DMESG-WAR=
N</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2255/shard-rkl-4/igt@gem_exec_fence@syncobj-export.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@engines@vecs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-rkl-5/igt@gem_exec_gttfill@engines@vecs0.html">INCOMPLE=
TE</a> ([i915#5080]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22255/shard-rkl-1/igt@gem_exec_gttfill@engines@vecs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2=
190]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2255/shard-tglb8/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-rkl-4/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen=
12_rc_ccs_cc.html">SKIP</a> ([i915#1845]) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_22255/shard-rkl-6/igt@kms_ccs@pipe-a-mis=
sing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-75:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-rkl-4/igt@kms_color@pipe-a-ctm-0-75.html">SKIP</a> ([i9=
15#1149] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22255/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-75.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions-varying-size.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-iclb5/igt@kms_cursor_=
legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a>=
 ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22255/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-skl2/igt@kms_flip@plain-flip-ts-check@c-edp1.html">FAIL=
</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22255/shard-skl3/igt@kms_flip@plain-flip-ts-check@c-edp1.html">=
PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-apl2/igt@kms_frontbuffer_tracking@fbc-suspend.html">DME=
SG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22255/shard-apl1/igt@kms_frontbuffer_tracking@fbc-suspend=
.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a=
> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22255/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.htm=
l">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22255/shard-skl6/igt@kms_plane_alpha_blend=
@pipe-b-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a>=
 ([fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_22255/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a=
> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11220/shard-glk3/igt@perf@polling-parameterized.html">FAIL</a> ([i91=
5#1542]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_22255/shard-glk8/igt@perf@polling-parameterized.html">PASS</a></p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11220/shard-kbl6/igt@perf@polling-parameterized.html">FAIL</a> ([i91=
5#1542]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_22255/shard-kbl3/igt@perf@polling-parameterized.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-iclb5/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">SKIP</a> ([i915#4525]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22255/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-=
fence.html">DMESG-WARN</a> ([i915#5076])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 ([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22255/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a>=
 ([i915#2680])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-negative:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-glk2/igt@kms_color@pipe-d-ctm-negative.html">SKIP</a> (=
[fdo#109271] / [i915#1888]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_22255/shard-glk7/igt@kms_color@pipe-d-ctm-negative.htm=
l">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-kbl1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11220/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-kbl3/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11220/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-kbl1/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1220/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-kbl7/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1122=
0/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-kbl1/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/s=
hard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_11220/shard-kbl1/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shar=
d-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11220/shard-kbl6/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-k=
bl7/igt@runner@aborted.html">FAIL</a>) ([i915#1436] / [i915#180] / [i915#18=
14] / [i915#3002] / [i915#4312]) -&gt; (<a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22255/shard-kbl1/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/sha=
rd-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22255/shard-kbl7/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/=
shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl4/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_222=
55/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl7/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
22255/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl1/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22255/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl4/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22255/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl3/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_22255/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22255/shard-kbl6/igt@runner=
@aborted.html">FAIL</a>) ([i915#1436] / [i915#180] / [i915#1814] / [i915#30=
02] / [i915#4312] / [i915#92])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11220/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-apl2/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11220/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-apl8/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11220/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11220/shard-apl6/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1220/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int">=
FAIL</a>) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#43=
12]) -&gt; ([FAIL][181], [FAIL][182], [FAIL][183], [FAIL][184], [FAIL][185]=
, [FAIL][186], [FAIL][187]) ([fdo#109271] / [i915#1814] / [i915#3002] / [i9=
15#4312])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============4869485401938394026==--
