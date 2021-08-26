Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 543773F8955
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 15:47:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E10A6E859;
	Thu, 26 Aug 2021 13:47:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BCD856E852;
 Thu, 26 Aug 2021 13:47:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B1D5BAA915;
 Thu, 26 Aug 2021 13:47:43 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8603109532111613426=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Aug 2021 13:47:43 -0000
Message-ID: <162998566369.15047.12142061557061499761@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210826064750.372557-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210826064750.372557-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Register_the_migrate_contexts_with_their_engines?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============8603109532111613426==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Register the migrate contexts with their engines
URL   : https://patchwork.freedesktop.org/series/94058/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10522_full -> Patchwork_20899_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20899_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20899_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20899_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_softpin@allocator-evict-all-engines:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-glk7/igt@gem_softpin@allocator-evict-all-engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-glk5/igt@gem_softpin@allocator-evict-all-engines.html

  
Known issues
------------

  Here are the changes found in Patchwork_20899_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-queued:
    - shard-snb:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1099]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-snb7/igt@gem_ctx_persistence@legacy-engines-queued.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-tglb:         NOTRUN -> [SKIP][4] ([i915#280])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb1/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@unwedge-stress:
    - shard-snb:          NOTRUN -> [FAIL][5] ([i915#3354])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-snb7/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [PASS][6] -> [FAIL][7] ([i915#2846])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-kbl3/igt@gem_exec_fair@basic-deadline.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-kbl1/igt@gem_exec_fair@basic-deadline.html
    - shard-apl:          NOTRUN -> [FAIL][8] ([i915#2846])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl8/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][9] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb2/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][10] ([i915#2842])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-tglb:         [PASS][13] -> [FAIL][14] ([i915#2842])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-tglb8/igt@gem_exec_fair@basic-pace@vecs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb1/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#2842])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_params@secure-non-master:
    - shard-tglb:         NOTRUN -> [SKIP][17] ([fdo#112283])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb1/igt@gem_exec_params@secure-non-master.html

  * igt@gem_pread@exhaustion:
    - shard-snb:          NOTRUN -> [WARN][18] ([i915#2658])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-snb5/igt@gem_pread@exhaustion.html

  * igt@gem_render_copy@yf-tiled-to-vebox-linear:
    - shard-skl:          NOTRUN -> [SKIP][19] ([fdo#109271]) +18 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl2/igt@gem_render_copy@yf-tiled-to-vebox-linear.html
    - shard-iclb:         NOTRUN -> [SKIP][20] ([i915#768])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb5/igt@gem_render_copy@yf-tiled-to-vebox-linear.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-tglb:         NOTRUN -> [SKIP][21] ([i915#3297])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb2/igt@gem_userptr_blits@readonly-pwrite-unsync.html
    - shard-iclb:         NOTRUN -> [SKIP][22] ([i915#3297])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb5/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][23] ([i915#2724])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-snb7/igt@gem_userptr_blits@vma-merge.html

  * igt@gen3_render_tiledy_blits:
    - shard-tglb:         NOTRUN -> [SKIP][24] ([fdo#109289])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb1/igt@gen3_render_tiledy_blits.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][25] -> [DMESG-WARN][26] ([i915#1436] / [i915#716])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-skl2/igt@gen9_exec_parse@allowed-single.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl10/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-tglb:         NOTRUN -> [SKIP][27] ([fdo#111644] / [i915#1397] / [i915#2411])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb1/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-skl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3777])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-glk:          [PASS][29] -> [DMESG-WARN][30] ([i915#118] / [i915#95]) +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-glk7/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-glk5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglb:         [PASS][31] -> [FAIL][32] ([i915#3722])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-tglb3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#111615])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3886]) +2 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl3/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3886]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl3/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#109278] / [i915#3886])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb5/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][37] ([i915#3689] / [i915#3886])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb2/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-audio:
    - shard-tglb:         NOTRUN -> [SKIP][38] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb1/igt@kms_chamelium@dp-audio.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb5/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_chamelium@hdmi-mode-timings:
    - shard-snb:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +16 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-snb7/igt@kms_chamelium@hdmi-mode-timings.html

  * igt@kms_color@pipe-d-ctm-green-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109278] / [i915#1149])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb5/igt@kms_color@pipe-d-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +15 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl8/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          NOTRUN -> [TIMEOUT][43] ([i915#1319]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl8/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-tglb:         NOTRUN -> [SKIP][44] ([fdo#111828]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb2/igt@kms_content_protection@atomic-dpms.html
    - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109300] / [fdo#111066])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb5/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x32-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][46] ([i915#3319])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-32x32-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-size-change:
    - shard-apl:          NOTRUN -> [FAIL][47] ([i915#3444])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-size-change.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][48] ([i915#3359])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-random:
    - shard-tglb:         NOTRUN -> [SKIP][49] ([fdo#109279] / [i915#3359])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-512x512-random.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a:
    - shard-iclb:         [PASS][50] -> [SKIP][51] ([i915#3788])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-iclb7/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb2/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#109274])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb5/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][53] -> [FAIL][54] ([i915#79])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [PASS][55] -> [DMESG-WARN][56] ([i915#180]) +3 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][57] -> [DMESG-WARN][58] ([i915#180]) +4 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [PASS][59] -> [FAIL][60] ([i915#2122])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:
    - shard-snb:          NOTRUN -> [SKIP][61] ([fdo#109271]) +445 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite:
    - shard-tglb:         NOTRUN -> [SKIP][62] ([fdo#111825]) +3 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt:
    - shard-glk:          [PASS][63] -> [FAIL][64] ([i915#2546])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-glk7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-glk5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][65] ([fdo#109280]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][66] -> [FAIL][67] ([i915#1188])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][68] ([fdo#108145] / [i915#265]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl3/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][69] -> [FAIL][70] ([fdo#108145] / [i915#265])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-d-viewport-size-64:
    - shard-iclb:         NOTRUN -> [SKIP][71] ([fdo#109278]) +3 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb5/igt@kms_plane_cursor@pipe-d-viewport-size-64.html

  * igt@kms_plane_lowres@pipe-d-tiling-none:
    - shard-tglb:         NOTRUN -> [SKIP][72] ([i915#3536])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb1/igt@kms_plane_lowres@pipe-d-tiling-none.html

  * igt@kms_prime@basic-crc@first-to-second:
    - shard-tglb:         NOTRUN -> [SKIP][73] ([i915#1836])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb1/igt@kms_prime@basic-crc@first-to-second.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
    - shard-tglb:         NOTRUN -> [SKIP][74] ([i915#2920])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html
    - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#658])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html
    - shard-iclb:         NOTRUN -> [SKIP][76] ([i915#658])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#658]) +3 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][78] -> [SKIP][79] ([fdo#109441]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb1/igt@kms_psr@psr2_suspend.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271]) +168 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl3/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@kms_writeback@writeback-check-output:
    - shard-iclb:         NOTRUN -> [SKIP][81] ([i915#2437])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb5/igt@kms_writeback@writeback-check-output.html
    - shard-skl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#2437])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl2/igt@kms_writeback@writeback-check-output.html
    - shard-tglb:         NOTRUN -> [SKIP][83] ([i915#2437])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb2/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-apl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#2437])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl8/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@nouveau_crc@pipe-d-ctx-flip-detection:
    - shard-tglb:         NOTRUN -> [SKIP][85] ([i915#2530])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb2/igt@nouveau_crc@pipe-d-ctx-flip-detection.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [PASS][86] -> [FAIL][87] ([i915#1542])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-glk6/igt@perf@polling-parameterized.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-glk3/igt@perf@polling-parameterized.html

  * igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
    - shard-tglb:         NOTRUN -> [SKIP][88] ([fdo#109291])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb1/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html

  * igt@sysfs_clients@fair-1:
    - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#2994])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl3/igt@sysfs_clients@fair-1.html

  * igt@sysfs_clients@fair-3:
    - shard-apl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#2994])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl3/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@sema-10:
    - shard-tglb:         NOTRUN -> [SKIP][91] ([i915#2994]) +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb2/igt@sysfs_clients@sema-10.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-10ms:
    - {shard-rkl}:        [TIMEOUT][92] ([i915#3063]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-rkl-2/igt@gem_eio@in-flight-10ms.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-rkl-2/igt@gem_eio@in-flight-10ms.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][94] ([i915#2369] / [i915#3063] / [i915#3648]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-tglb1/igt@gem_eio@unwedge-stress.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-kbl:          [SKIP][96] ([fdo#109271]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-kbl4/igt@gem_exec_fair@basic-flow@rcs0.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-kbl3/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-apl:          [SKIP][98] ([fdo#109271]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-apl1/igt@gem_exec_fair@basic-none-share@rcs0.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl7/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          [FAIL][100] ([i915#2842]) -> [PASS][101] +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-glk4/igt@gem_exec_fair@basic-none@rcs0.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-glk1/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][102] ([i915#2842]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [FAIL][104] ([i915#2842]) -> [PASS][105] +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - {shard-rkl}:        [FAIL][106] ([i915#307]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-rkl-1/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-rkl-2/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][108] ([i915#2346]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][110] ([i915#2346] / [i915#533]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][112] ([fdo#109441]) -> [PASS][113] +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-iclb3/igt@kms_psr@psr2_sprite_blt.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * igt@perf@blocking:
    - shard-skl:          [FAIL][114] ([i915#1542]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-skl3/igt@perf@blocking.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl6/igt@perf@blocking.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-iclb:         [FAIL][116] ([i915#2851]) -> [FAIL][117] ([i915#2842])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-iclb1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb1/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [INCOMPLETE][118] ([i915#300]) -> [INCOMPLETE][119] ([i915#146] / [i915#300])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][120] ([i915#658]) -> [SKIP][121] ([i915#2920]) +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-iclb7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][122] ([i915#2920]) -> [SKIP][123] ([i915#658]) +1 similar issue
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][124], [FAIL][125]) ([i915#3002] / [i915#3363]) -> ([FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#3363])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-kbl6/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-kbl1/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-kbl4/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-kbl4/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-kbl1/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-kbl1/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-kbl1/igt@runner@aborted.html
    - shard-apl:          ([FAIL][131], [FAIL][132]) ([i915#3002] / [i915#3363]) -> ([FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#3363])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-apl6/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-apl7/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl7/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl6/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl6/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl7/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl2/igt@runner@aborted.html
    - shard-skl:          ([FAIL][138], [FAIL][139]) ([i915#3002] / [i915#3363]) -> ([FAIL][140], [FAIL][141], [FAIL][142]) ([i915#1436] / [i915#3002] / [i915#3363])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-skl3/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-skl8/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl10/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl3/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl8/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109441]: https:

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/index.html

--===============8603109532111613426==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Register the migrate contexts with their engines</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94058/">https://patchwork.freedesktop.org/series/94058/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10522_full -&gt; Patchwork_20899_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20899_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20899_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20899_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_softpin@allocator-evict-all-engines:<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-glk7/igt@gem_softpin@allocator-evict-all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-glk5/igt@gem_softpin@allocator-evict-all-engines.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20899_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-queued:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-snb7/igt@gem_ctx_persistence@legacy-engines-queued.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#1099]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb1/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-snb7/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#3354])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-kbl3/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-kbl1/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl8/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb2/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842])</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-tglb8/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb1/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb1/igt@gem_exec_params@secure-non-master.html">SKIP</a> ([fdo#112283])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-snb5/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-linear:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl2/igt@gem_render_copy@yf-tiled-to-vebox-linear.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +18 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb5/igt@gem_render_copy@yf-tiled-to-vebox-linear.html">SKIP</a> ([i915#768])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb2/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> ([i915#3297])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb5/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> ([i915#3297])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-snb7/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#2724])</li>
</ul>
</li>
<li>
<p>igt@gen3_render_tiledy_blits:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb1/igt@gen3_render_tiledy_blits.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-skl2/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl10/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb1/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> ([fdo#111644] / [i915#1397] / [i915#2411])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-glk7/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-glk5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">DMESG-WARN</a> ([i915#118] / [i915#95]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-tglb3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">FAIL</a> ([i915#3722])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl3/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#3886]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl3/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#3886]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb5/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a> / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb2/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-audio:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb1/igt@kms_chamelium@dp-audio.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb5/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-mode-timings:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-snb7/igt@kms_chamelium@hdmi-mode-timings.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [fdo#111827]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-green-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb5/igt@kms_color@pipe-d-ctm-green-to-red.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a> / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl8/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [fdo#111827]) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl8/igt@kms_content_protection@atomic.html">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb2/igt@kms_content_protection@atomic-dpms.html">SKIP</a> ([fdo#111828]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb5/igt@kms_content_protection@atomic-dpms.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109300">fdo#109300</a> / [fdo#111066])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x32-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-32x32-sliding.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-size-change:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-size-change.html">FAIL</a> ([i915#3444])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-512x512-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109279">fdo#109279</a> / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-iclb7/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb2/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a.html">SKIP</a> ([i915#3788])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb5/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">DMESG-WARN</a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#180]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +445 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite.html">SKIP</a> ([fdo#111825]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-glk7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-glk5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt.html">FAIL</a> ([i915#2546])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109280">fdo#109280</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl3/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-d-viewport-size-64:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb5/igt@kms_plane_cursor@pipe-d-viewport-size-64.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-d-tiling-none:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb1/igt@kms_plane_lowres@pipe-d-tiling-none.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc@first-to-second:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb1/igt@kms_prime@basic-crc@first-to-second.html">SKIP</a> ([i915#1836])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html">SKIP</a> ([i915#2920])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#658])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html">SKIP</a> ([i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#658]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-iclb2/igt@kms_psr@psr2_suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb1/igt@kms_psr@psr2_suspend.html">SKIP</a> (<a href="https:">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl3/igt@kms_vblank@pipe-d-ts-continuation-idle.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +168 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb5/igt@kms_writeback@writeback-check-output.html">SKIP</a> ([i915#2437])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl2/igt@kms_writeback@writeback-check-output.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#2437])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb2/igt@kms_writeback@writeback-check-output.html">SKIP</a> ([i915#2437])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl8/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-ctx-flip-detection:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb2/igt@nouveau_crc@pipe-d-ctx-flip-detection.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-glk6/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-glk3/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb1/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl3/igt@sysfs_clients@fair-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl3/igt@sysfs_clients@fair-3.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb2/igt@sysfs_clients@sema-10.html">SKIP</a> ([i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-10ms:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-rkl-2/igt@gem_eio@in-flight-10ms.html">TIMEOUT</a> ([i915#3063]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-rkl-2/igt@gem_eio@in-flight-10ms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-tglb1/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063] / [i915#3648]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb5/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-kbl4/igt@gem_exec_fair@basic-flow@rcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-kbl3/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-apl1/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl7/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-glk4/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-glk1/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-rkl-1/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">FAIL</a> ([i915#307]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-rkl-2/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-iclb3/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> (<a href="https:">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-skl3/igt@perf@blocking.html">FAIL</a> ([i915#1542]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl6/igt@perf@blocking.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-iclb1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2851]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">INCOMPLETE</a> ([i915#300]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">INCOMPLETE</a> ([i915#146] / [i915#300])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-iclb7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html">SKIP</a> ([i915#2920]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html">SKIP</a> ([i915#2920]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-kbl1/igt@runner@aborted.html">FAIL</a>) ([i915#3002] / [i915#3363]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-kbl1/igt@runner@aborted.html">FAIL</a>) ([i915#180] / [i915#1814] / [i915#3002] / [i915#3363])</p>
</li>
<li>
<p>shard-apl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-apl7/igt@runner@aborted.html">FAIL</a>) ([i915#3002] / [i915#3363]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-apl2/igt@runner@aborted.html">FAIL</a>) (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#180] / [i915#3002] / [i915#3363])</p>
</li>
<li>
<p>shard-skl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/shard-skl8/igt@runner@aborted.html">FAIL</a>) ([i915#3002] / [i915#3363]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl10/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/shard-skl8/igt@runner@aborted.html">FAIL</a>) ([i915#1436] / [i915#3002] / [i915#3363])</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============8603109532111613426==--
