Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC1B48B9CE
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 22:42:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB61110E580;
	Tue, 11 Jan 2022 21:42:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AFB8910E580;
 Tue, 11 Jan 2022 21:42:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AB269A7DFB;
 Tue, 11 Jan 2022 21:42:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0023050095903797905=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Tue, 11 Jan 2022 21:42:46 -0000
Message-ID: <164193736666.24980.10160879622205428642@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220111121552.35679-1-andi.shyti@linux.intel.com>
In-Reply-To: <20220111121552.35679-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgSW50?=
 =?utf-8?q?roduce_multitile_support?=
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

--===============0023050095903797905==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce multitile support
URL   : https://patchwork.freedesktop.org/series/98741/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11065_full -> Patchwork_21965_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21965_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21965_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21965_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@many-contexts:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-iclb5/igt@gem_ctx_persistence@many-contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-iclb8/igt@gem_ctx_persistence@many-contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_21965_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-skl:          NOTRUN -> [DMESG-WARN][3] ([i915#3002])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-skl6/igt@gem_create@create-massive.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-apl:          NOTRUN -> [DMESG-WARN][4] ([i915#180]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-apl3/igt@gem_ctx_isolation@preservation-s3@rcs0.html
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#4793])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-skl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-skl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_exec_capture@userptr:
    - shard-skl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-skl10/igt@gem_exec_capture@userptr.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-skl10/igt@gem_exec_capture@userptr.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-skl:          NOTRUN -> [FAIL][9] ([i915#2846])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-skl4/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-glk:          [PASS][10] -> [FAIL][11] ([i915#2842]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-glk1/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][12] -> [FAIL][13] ([i915#2842]) +2 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_whisper@basic-forked:
    - shard-glk:          [PASS][14] -> [DMESG-WARN][15] ([i915#118])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-glk7/igt@gem_exec_whisper@basic-forked.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-glk3/igt@gem_exec_whisper@basic-forked.html

  * igt@gem_huc_copy@huc-copy:
    - shard-skl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#2190])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-skl7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-skl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#4613]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-skl7/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_pread@exhaustion:
    - shard-skl:          NOTRUN -> [WARN][18] ([i915#2658])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-skl4/igt@gem_pread@exhaustion.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-tglb:         NOTRUN -> [SKIP][19] ([i915#3323])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-tglb3/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][20] -> [DMESG-WARN][21] ([i915#1436] / [i915#716])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-glk7/igt@gen9_exec_parse@allowed-all.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-glk7/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-tglb:         NOTRUN -> [SKIP][22] ([i915#2527] / [i915#2856])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-tglb3/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#454])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#1937])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-apl3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-tglb:         NOTRUN -> [SKIP][26] ([fdo#111644] / [i915#1397] / [i915#2411])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-tglb8/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3777])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-kbl7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][28] ([i915#3763])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-skl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#3777]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-skl7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][30] ([i915#3743]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271]) +43 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-apl8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_busy@extended-modeset-hang-newfb:
    - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271]) +223 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-skl4/igt@kms_busy@extended-modeset-hang-newfb.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3886])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-kbl7/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3886]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-apl3/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3886]) +5 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-skl4/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][36] ([i915#3689])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-tglb8/igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +15 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-skl4/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-apl8/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_color@pipe-d-invalid-degamma-lut-sizes:
    - shard-kbl:          NOTRUN -> [SKIP][39] ([fdo#109271]) +33 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-kbl7/igt@kms_color@pipe-d-invalid-degamma-lut-sizes.html

  * igt@kms_color_chamelium@pipe-b-ctm-negative:
    - shard-kbl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-kbl7/igt@kms_color_chamelium@pipe-b-ctm-negative.html

  * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
    - shard-tglb:         NOTRUN -> [SKIP][41] ([fdo#109284] / [fdo#111827])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-tglb3/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][42] ([i915#3359]) +2 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-tglb6/igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding.html
    - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109278]) +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-iclb5/igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-skl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#533]) +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-skl4/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_flip@2x-flip-vs-panning-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][45] ([fdo#109274] / [fdo#111825]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-tglb3/igt@kms_flip@2x-flip-vs-panning-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][46] -> [DMESG-WARN][47] ([i915#180]) +5 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [PASS][48] -> [DMESG-WARN][49] ([i915#180]) +4 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-skl:          NOTRUN -> [INCOMPLETE][50] ([i915#3701])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-skl4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([i915#3701])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-tglb:         NOTRUN -> [SKIP][53] ([i915#2587])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-tglb6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][54] ([fdo#109280])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
    - shard-tglb:         NOTRUN -> [SKIP][55] ([fdo#109280] / [fdo#111825]) +3 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][56] ([fdo#108145] / [i915#265]) +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#658])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-skl7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][58] -> [SKIP][59] ([fdo#109441]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][60] -> [FAIL][61] ([i915#31])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-glk8/igt@kms_setmode@basic.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-glk3/igt@kms_setmode@basic.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-kbl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#2437])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-kbl7/igt@kms_writeback@writeback-pixel-formats.html

  * igt@prime_nv_pcopy@test_semaphore:
    - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109291])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-iclb5/igt@prime_nv_pcopy@test_semaphore.html
    - shard-tglb:         NOTRUN -> [SKIP][64] ([fdo#109291])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-tglb6/igt@prime_nv_pcopy@test_semaphore.html

  * igt@sysfs_clients@fair-7:
    - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#2994]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-skl7/igt@sysfs_clients@fair-7.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][66] ([i915#658]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-iclb8/igt@feature_discovery@psr2.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_eio@kms:
    - shard-tglb:         [FAIL][68] ([i915#232]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-tglb3/igt@gem_eio@kms.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-tglb7/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [SKIP][70] ([i915#4525]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_endless@dispatch@vcs0:
    - shard-tglb:         [INCOMPLETE][72] ([i915#3778]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-tglb6/igt@gem_exec_endless@dispatch@vcs0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-tglb8/igt@gem_exec_endless@dispatch@vcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-kbl:          [FAIL][74] ([i915#2842]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-kbl1/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-glk:          [FAIL][76] ([i915#2842]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-glk6/igt@gem_exec_fair@basic-none@vcs0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-glk9/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][78] ([i915#2849]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-iclb:         [FAIL][80] ([i915#1888]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-iclb4/igt@gem_exec_suspend@basic-s3@smem.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-iclb3/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][82] ([i915#2190]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-tglb7/igt@gem_huc_copy@huc-copy.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-tglb8/igt@gem_huc_copy@huc-copy.html

  * igt@gem_spin_batch@legacy-resubmit-new@vebox:
    - shard-skl:          [DMESG-WARN][84] ([i915#1982]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-skl5/igt@gem_spin_batch@legacy-resubmit-new@vebox.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-skl8/igt@gem_spin_batch@legacy-resubmit-new@vebox.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-glk:          [DMESG-WARN][86] ([i915#118]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-glk3/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-glk4/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [INCOMPLETE][88] ([i915#180] / [i915#1982]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@c-dp1:
    - shard-kbl:          [FAIL][90] ([i915#79]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-kbl4/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-kbl7/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [DMESG-WARN][92] ([i915#180]) -> [PASS][93] +2 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
    - shard-iclb:         [SKIP][94] ([i915#3701]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][96] ([i915#1188]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-skl4/igt@kms_hdr@bpc-switch.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-skl5/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [INCOMPLETE][98] ([i915#2828]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][100] ([fdo#108145] / [i915#265]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][102] ([fdo#109441]) -> [PASS][103] +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [FAIL][104] ([i915#4916]) -> [SKIP][105] ([i915#4525])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-iclb5/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         [FAIL][106] ([i915#2842]) -> [FAIL][107] ([i915#2852])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-iclb3/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-iclb4/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [FAIL][108] ([i915#2842]) -> [FAIL][109] ([i915#2851])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][110] ([i915#588]) -> [SKIP][111] ([i915#658])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][112] ([i915#2684]) -> [WARN][113] ([i915#1804] / [i915#2684])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][114] ([i915#2684]) -> [FAIL][115] ([i915#2680])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         [SKIP][116] ([fdo#111068] / [i915#658]) -> [SKIP][117] ([i915#2920])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-iclb1/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][118] ([i915#2920]) -> [SKIP][119] ([fdo#111068] / [i915#658])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-iclb:         [FAIL][120] ([i915#4148]) -> [SKIP][121] ([fdo#109642] / [fdo#111068] / [i915#658])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-iclb7/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-iclb:         [SKIP][122] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [FAIL][123] ([i915#4148])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-iclb1/igt@kms_psr2_su@page_flip-xrgb8888.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][124], [FAIL][125]) ([i915#3002] / [i915#4312]) -> ([FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#4312])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-kbl1/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-kbl6/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-kbl4/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-kbl4/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-kbl4/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-kbl1/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-kbl4/igt@runner@aborted.html
    - shard-apl:          ([FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#4312]) -> ([FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#4312])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-apl6/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-apl4/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-apl1/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-apl7/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-apl4/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-apl3/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-apl7/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-apl6/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-apl4/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-apl7/igt@runner@aborted.html
    - shard-skl:          ([FAIL][141], [FAIL][142]) ([i915#1436] / [i915#1814] / [i915#2029] / [i915#4312]) -> ([FAIL][143], [FAIL][144]) ([i915#1814] / [i915#2029] / [i915#3002] / [i915#4312])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-skl9/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-skl2/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-skl6/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-skl5/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#180]: https://gitla

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/index.html

--===============0023050095903797905==
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
<tr><td><b>Series:</b></td><td>Introduce multitile support</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/98741/">https://patchwork.freedesktop.org/series/98741/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21965/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21965/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11065_full -&gt; Patchwork_21965_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21965_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_21965_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
21965_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_ctx_persistence@many-contexts:<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-iclb5/igt@gem_ctx_persistence@many-contexts.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_219=
65/shard-iclb8/igt@gem_ctx_persistence@many-contexts.html">INCOMPLETE</a></=
li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21965_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-skl6/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21965/shard-apl3/igt@gem_ctx_isolation@preservation-=
s3@rcs0.html">DMESG-WARN</a> (<a href=3D"https://gitla">i915#180</a>) +1 si=
milar issue</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11065/shard-skl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21965/shard-skl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html">INCOMPLET=
E</a> ([i915#4793])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@userptr:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-skl10/igt@gem_exec_capture@userptr.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-=
skl10/igt@gem_exec_capture@userptr.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-skl4/igt@gem_exec_fair@basic-deadline.h=
tml">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
965/shard-glk1/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i91=
5#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/sh=
ard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) +2 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-glk7/igt@gem_exec_whisper@basic-forked.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/sh=
ard-glk3/igt@gem_exec_whisper@basic-forked.html">DMESG-WARN</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-skl7/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-skl7/igt@gem_lmem_swapping@parallel-ran=
dom.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / [i915#4613]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-skl4/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-tglb3/igt@gem_userptr_blits@dmabuf-sync=
.html">SKIP</a> ([i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-glk7/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shar=
d-glk7/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / [i915#71=
6])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-tglb3/igt@gen9_exec_parse@shadow-peek.h=
tml">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-iclb7/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-iclb3/=
igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-apl3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp=
-dp.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-tglb8/igt@i915_pm_rpm@modeset-non-lpsp-=
stress-no-wait.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D111644">fdo#111644</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/1397">i915#1397</a> / [i915#2411])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-kbl7/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3763])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-skl7/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3777]) +2 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-apl8/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-64bpp-rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a>) +43 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_busy@extended-modeset-hang-newfb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-skl4/igt@kms_busy@extended-modeset-hang=
-newfb.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a>) +223 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-kbl7/igt@kms_ccs@pipe-a-crc-primary-rot=
ation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-apl3/igt@kms_ccs@pipe-b-crc-primary-bas=
ic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-skl4/igt@kms_ccs@pipe-b-crc-primary-bas=
ic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886]) +5 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-tglb8/igt@kms_ccs@pipe-d-ccs-on-another=
-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-skl4/igt@kms_chamelium@vga-hpd-after-su=
spend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-apl8/igt@kms_chamelium@vga-hpd-for-each=
-pipe.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-invalid-degamma-lut-sizes:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-kbl7/igt@kms_color@pipe-d-invalid-degam=
ma-lut-sizes.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a>) +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-negative:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-kbl7/igt@kms_color_chamelium@pipe-b-ctm=
-negative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-tglb3/igt@kms_color_chamelium@pipe-d-ct=
m-red-to-blue.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21965/shard-tglb6/igt@kms_cursor_crc@pipe-b-cursor-3=
2x10-sliding.html">SKIP</a> ([i915#3359]) +2 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21965/shard-iclb5/igt@kms_cursor_crc@pipe-b-cursor-3=
2x10-sliding.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109278">fdo#109278</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-skl4/igt@kms_cursor_legacy@cursor-vs-fl=
ip-toggle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / [i915#533]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-tglb3/igt@kms_flip@2x-flip-vs-panning-i=
nterruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111825">fdo#111825</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21965/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitla">i915#180</a>) +5 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21965/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitla">i915#180</a>) +4 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-skl4/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytileccs-upscaling.html">INCOMPLETE</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp=
-ytile-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_21965/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:<=
/p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-tglb6/igt@kms_flip_scaled_crc@flip-32bp=
p-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#2587])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-pri-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +3 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-7efc.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D108145">fdo#108145</a> / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-skl7/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/sh=
ard-iclb1/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 simila=
r issue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-glk8/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-glk3/igt=
@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-kbl7/igt@kms_writeback@writeback-pixel-=
formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test_semaphore:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21965/shard-iclb5/igt@prime_nv_pcopy@test_semaphore.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09291">fdo#109291</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21965/shard-tglb6/igt@prime_nv_pcopy@test_semaphore.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09291">fdo#109291</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21965/shard-skl7/igt@sysfs_clients@fair-7.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-iclb8/igt@feature_discovery@psr2.html">SKIP</a> ([i915#=
658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1965/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-tglb3/igt@gem_eio@kms.html">FAIL</a> ([i915#232]) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-=
tglb7/igt@gem_eio@kms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html">SK=
IP</a> ([i915#4525]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21965/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@vcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-tglb6/igt@gem_exec_endless@dispatch@vcs0.html">INCOMPLE=
TE</a> ([i915#3778]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21965/shard-tglb8/igt@gem_exec_endless@dispatch@vcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-kbl1/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</=
a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21965/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-glk6/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21965/shard-glk9/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> ([i915#2849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21965/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-iclb4/igt@gem_exec_suspend@basic-s3@smem.html">FAIL</a>=
 ([i915#1888]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21965/shard-iclb3/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2=
190]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1965/shard-tglb8/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@legacy-resubmit-new@vebox:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-skl5/igt@gem_spin_batch@legacy-resubmit-new@vebox.html"=
>DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21965/shard-skl8/igt@gem_spin_batch@legacy-resubmit-=
new@vebox.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-glk3/igt@kms_big_fb@linear-32bpp-rotate-180.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">=
i915#118</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21965/shard-glk4/igt@kms_big_fb@linear-32bpp-rotate-180.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a>=
 (<a href=3D"https://gitla">i915#180</a> / [i915#1982]) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-apl8/igt@kms_f=
bcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-kbl4/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html">FA=
IL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21965/shard-kbl7/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WAR=
N</a> (<a href=3D"https://gitla">i915#180</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-apl3/igt@kms_flip@flip-=
vs-suspend@a-dp1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp=
-ytile-downscaling.html">SKIP</a> ([i915#3701]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-iclb1/igt@kms_flip_sca=
led_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-skl4/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-s=
kl5/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.htm=
l">INCOMPLETE</a> ([i915#2828]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_21965/shard-kbl7/igt@kms_pipe_crc_basic@suspend-re=
ad-crc-pipe-c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1081=
45">fdo#108145</a> / [i915#265]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21965/shard-skl9/igt@kms_plane_alpha_blend@pipe-c=
-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965=
/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> +1 similar issue</l=
i>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html">FAI=
L</a> ([i915#4916]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21965/shard-iclb5/igt@gem_exec_balancer@parallel-ordering.html=
">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-iclb3/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21965/shard-iclb4/igt@gem_exec_fair@basic-none-rrul@rcs0.html">=
FAIL</a> ([i915#2852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21965/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i=
915#2851])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> ([i915#588]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21965/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> ([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_21965/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</=
a> ([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 ([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21965/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a>=
 ([i915#2680])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-iclb1/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo=
#111068</a> / [i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21965/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf=
.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.=
html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_21965/shard-iclb7/igt@kms_psr2_sf@primary-plane-updat=
e-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111068">fdo#111068</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html">FAIL</a> ([i=
915#4148]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21965/shard-iclb7/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> =
/ <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111=
068</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-iclb1/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109=
642</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068"=
>fdo#111068</a> / [i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21965/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888=
.html">FAIL</a> ([i915#4148])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-kbl6/igt@runner@abo=
rted.html">FAIL</a>) ([i915#3002] / [i915#4312]) -&gt; (<a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-kbl4/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21965/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-kbl4/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21965/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-kbl4/igt@runne=
r@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1436">i915#1436</a> / <a href=3D"https://gitla">i915#180</a> / [=
i915#1814] / [i915#3002] / [i915#4312])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-apl4/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11065/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-apl7/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11065/shard-apl4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itla">i915#180</a> / [i915#1814] / [i915#3002] / [i915#4312]) -&gt; (<a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-apl3/ig=
t@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21965/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-apl6=
/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21965/shard-apl4/igt@runner@aborted.html">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-a=
pl7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla">i=
915#180</a> / [i915#1814] / [i915#4312])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11065/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11065/shard-skl2/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1436">i915#1436</a> / [i915#1814] / [i915#2029] / [i915#4312]) -&gt; =
(<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21965/shard-=
skl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_21965/shard-skl5/igt@runner@aborted.html">FAIL</=
a>) ([i915#1814] / [i915#2029] / [i915#3002] / [i915#4312])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============0023050095903797905==--
