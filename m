Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B572E28D9
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Dec 2020 22:28:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87EC489C07;
	Thu, 24 Dec 2020 21:28:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1DBE089BFF;
 Thu, 24 Dec 2020 21:28:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 16E1DA47EB;
 Thu, 24 Dec 2020 21:28:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 24 Dec 2020 21:28:46 -0000
Message-ID: <160884532606.23494.4453949423006472389@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201224160213.29521-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201224160213.29521-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Refactor_heartbeat_request_construction_and_submiss?=
 =?utf-8?q?ion?=
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
Content-Type: multipart/mixed; boundary="===============1767832656=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1767832656==
Content-Type: multipart/alternative;
 boundary="===============2309629920228517575=="

--===============2309629920228517575==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Refactor heartbeat request construction and submission
URL   : https://patchwork.freedesktop.org/series/85207/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9521_full -> Patchwork_19214_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19214_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19214_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19214_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-glk2/igt@gem_ctx_persistence@close-replace-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-glk1/igt@gem_ctx_persistence@close-replace-race.html

  
Known issues
------------

  Here are the changes found in Patchwork_19214_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#146] / [i915#198])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl3/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl9/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_exec_params@secure-non-root:
    - shard-tglb:         NOTRUN -> [SKIP][5] ([fdo#112283]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb2/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][6] ([i915#2389]) +4 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb7/igt@gem_exec_reloc@basic-many-active@rcs0.html
    - shard-glk:          NOTRUN -> [FAIL][7] ([i915#2389])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-glk7/igt@gem_exec_reloc@basic-many-active@rcs0.html
    - shard-iclb:         NOTRUN -> [FAIL][8] ([i915#2389]) +4 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_reloc@basic-many-active@vcs0:
    - shard-kbl:          NOTRUN -> [FAIL][9] ([i915#2389]) +4 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-kbl1/igt@gem_exec_reloc@basic-many-active@vcs0.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-glk:          [PASS][10] -> [DMESG-WARN][11] ([i915#118] / [i915#95])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-glk3/igt@gem_exec_schedule@smoketest-all.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-glk7/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_render_copy@y-tiled-to-vebox-x-tiled:
    - shard-glk:          NOTRUN -> [SKIP][12] ([fdo#109271]) +28 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-glk7/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html
    - shard-iclb:         NOTRUN -> [SKIP][13] ([i915#768])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html

  * igt@gen3_render_linear_blits:
    - shard-tglb:         NOTRUN -> [SKIP][14] ([fdo#109289]) +5 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb7/igt@gen3_render_linear_blits.html
    - shard-iclb:         NOTRUN -> [SKIP][15] ([fdo#109289]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@gen3_render_linear_blits.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-tglb:         NOTRUN -> [SKIP][16] ([fdo#112306])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb2/igt@gen9_exec_parse@unaligned-jump.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-skl:          [PASS][17] -> [DMESG-FAIL][18] ([i915#2291] / [i915#541])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl3/igt@i915_selftest@live@gt_heartbeat.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl9/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_suspend@forcewake:
    - shard-snb:          [PASS][19] -> [DMESG-WARN][20] ([i915#42])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-snb4/igt@i915_suspend@forcewake.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-snb4/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][21] ([fdo#111614])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb2/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_ccs@pipe-c-bad-pixel-format:
    - shard-skl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [fdo#111304]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl2/igt@kms_ccs@pipe-c-bad-pixel-format.html

  * igt@kms_chamelium@hdmi-crc-single:
    - shard-glk:          NOTRUN -> [SKIP][23] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-glk7/igt@kms_chamelium@hdmi-crc-single.html
    - shard-iclb:         NOTRUN -> [SKIP][24] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@kms_chamelium@hdmi-crc-single.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-kbl1/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl2/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_color_chamelium@pipe-d-ctm-max:
    - shard-tglb:         NOTRUN -> [SKIP][27] ([fdo#109284] / [fdo#111827]) +7 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb2/igt@kms_color_chamelium@pipe-d-ctm-max.html

  * igt@kms_color_chamelium@pipe-d-gamma:
    - shard-iclb:         NOTRUN -> [SKIP][28] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@kms_color_chamelium@pipe-d-gamma.html

  * igt@kms_content_protection@lic:
    - shard-tglb:         NOTRUN -> [SKIP][29] ([fdo#111828])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb2/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][30] ([fdo#109279]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-512x170-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-random:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#54])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x170-random:
    - shard-iclb:         NOTRUN -> [SKIP][33] ([fdo#109278] / [fdo#109279]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@kms_cursor_crc@pipe-c-cursor-512x170-random.html

  * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#109274] / [fdo#109278])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@pipe-d-forked-move:
    - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271]) +39 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl2/igt@kms_cursor_legacy@pipe-d-forked-move.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-xtiled:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([i915#52] / [i915#54])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl5/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-xtiled.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl8/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-xtiled.html

  * igt@kms_flip@2x-dpms-vs-vblank-race:
    - shard-iclb:         NOTRUN -> [SKIP][38] ([fdo#109274])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@kms_flip@2x-dpms-vs-vblank-race.html

  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#2122])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl8/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1:
    - shard-glk:          [PASS][41] -> [FAIL][42] ([i915#2122])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-glk2/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-glk3/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-kbl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#2672])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-kbl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
    - shard-glk:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#2672])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-glk7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
    - shard-iclb:         NOTRUN -> [SKIP][45] ([i915#2587])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
    - shard-snb:          [PASS][46] -> [SKIP][47] ([fdo#109271]) +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-snb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-snb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-tglb:         NOTRUN -> [SKIP][48] ([fdo#111825]) +15 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([i915#49])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109280]) +5 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][52] -> [FAIL][53] ([i915#1188])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
    - shard-kbl:          NOTRUN -> [SKIP][54] ([fdo#109271]) +31 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-kbl1/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#533])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][56] ([fdo#108145] / [i915#265])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][57] -> [FAIL][58] ([fdo#108145] / [i915#265])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-glk:          NOTRUN -> [FAIL][59] ([i915#265])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-glk7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
    - shard-kbl:          NOTRUN -> [FAIL][60] ([i915#265])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_cursor@pipe-d-overlay-size-256:
    - shard-iclb:         NOTRUN -> [SKIP][61] ([fdo#109278]) +4 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@kms_plane_cursor@pipe-d-overlay-size-256.html

  * igt@kms_plane_lowres@pipe-c-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][62] ([fdo#111615])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb7/igt@kms_plane_lowres@pipe-c-tiling-yf.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][63] -> [SKIP][64] ([fdo#109441])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         NOTRUN -> [SKIP][65] ([fdo#109441])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vrr@flip-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][66] ([fdo#109502])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@kms_vrr@flip-dpms.html
    - shard-tglb:         NOTRUN -> [SKIP][67] ([fdo#109502])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb7/igt@kms_vrr@flip-dpms.html

  * igt@nouveau_crc@pipe-c-source-outp-complete:
    - shard-tglb:         NOTRUN -> [SKIP][68] ([i915#2530]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb7/igt@nouveau_crc@pipe-c-source-outp-complete.html
    - shard-iclb:         NOTRUN -> [SKIP][69] ([i915#2530])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@nouveau_crc@pipe-c-source-outp-complete.html

  * igt@prime_nv_api@nv_i915_import_twice_check_flink_name:
    - shard-iclb:         NOTRUN -> [SKIP][70] ([fdo#109291])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@prime_nv_api@nv_i915_import_twice_check_flink_name.html
    - shard-tglb:         NOTRUN -> [SKIP][71] ([fdo#109291]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb7/igt@prime_nv_api@nv_i915_import_twice_check_flink_name.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-iclb:         NOTRUN -> [SKIP][72] ([fdo#109295])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@prime_vgem@fence-flip-hang.html
    - shard-tglb:         NOTRUN -> [SKIP][73] ([fdo#109295])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb7/igt@prime_vgem@fence-flip-hang.html

  
#### Possible fixes ####

  * igt@drm_import_export@prime:
    - shard-tglb:         [INCOMPLETE][74] ([i915#750]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-tglb8/igt@drm_import_export@prime.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb2/igt@drm_import_export@prime.html

  * igt@gem_exec_endless@dispatch@vecs0:
    - shard-iclb:         [INCOMPLETE][76] ([i915#2502]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-iclb8/igt@gem_exec_endless@dispatch@vecs0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb1/igt@gem_exec_endless@dispatch@vecs0.html

  * {igt@gem_exec_fair@basic-deadline}:
    - shard-kbl:          [FAIL][78] -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-kbl1/igt@gem_exec_fair@basic-deadline.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-kbl6/igt@gem_exec_fair@basic-deadline.html

  * {igt@gem_exec_fair@basic-none-share@rcs0}:
    - shard-iclb:         [FAIL][80] ([i915#2842]) -> [PASS][81] +2 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html
    - shard-tglb:         [FAIL][82] ([i915#2842]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb3/igt@gem_exec_fair@basic-none-share@rcs0.html

  * {igt@gem_exec_fair@basic-none-solo@rcs0}:
    - shard-apl:          [FAIL][84] ([i915#2842]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * {igt@gem_exec_fair@basic-pace-share@rcs0}:
    - shard-glk:          [FAIL][86] ([i915#2842]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * {igt@gem_exec_fair@basic-pace@rcs0}:
    - shard-kbl:          [FAIL][88] ([i915#2842]) -> [PASS][89] +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html

  * {igt@gem_exec_fair@basic-throttle@rcs0}:
    - shard-iclb:         [FAIL][90] -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * {igt@gem_exec_schedule@u-fairslice@bcs0}:
    - shard-tglb:         [DMESG-WARN][92] ([i915#2803]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-tglb2/igt@gem_exec_schedule@u-fairslice@bcs0.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb7/igt@gem_exec_schedule@u-fairslice@bcs0.html

  * {igt@gem_exec_schedule@u-fairslice@rcs0}:
    - shard-kbl:          [DMESG-WARN][94] ([i915#1610]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-kbl1/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-kbl1/igt@gem_exec_schedule@u-fairslice@rcs0.html
    - shard-iclb:         [DMESG-WARN][96] ([i915#2803]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-iclb8/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * {igt@gem_exec_schedule@u-fairslice@vecs0}:
    - shard-glk:          [DMESG-WARN][98] ([i915#1610]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-glk4/igt@gem_exec_schedule@u-fairslice@vecs0.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-glk7/igt@gem_exec_schedule@u-fairslice@vecs0.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [INCOMPLETE][100] ([i915#198]) -> [PASS][101] +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl3/igt@i915_selftest@mock@requests.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl3/igt@i915_selftest@mock@requests.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
    - shard-skl:          [FAIL][102] ([i915#54]) -> [PASS][103] +3 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][104] ([i915#79]) -> [PASS][105] +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:
    - shard-glk:          [FAIL][106] ([i915#79]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][108] ([i915#1188]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-c:
    - shard-skl:          [FAIL][110] ([i915#1036]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl7/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-c.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl6/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][112] ([fdo#108145] / [i915#265]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][114] ([fdo#109441]) -> [PASS][115] +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-iclb3/igt@kms_psr@psr2_cursor_plane_onoff.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][116] ([i915#2681] / [i915#2684]) -> [WARN][117] ([i915#1804] / [i915#2684])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][118], [FAIL][119]) ([i915#2295] / [i915#2426]) -> [FAIL][120] ([i915#2295] / [i915#483])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-kbl7/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-kbl1/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-kbl6/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][121], [FAIL][122]) ([i915#2295] / [i915#2426] / [i915#2724]) -> [FAIL][123] ([i915#2295] / [i915#2724])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-iclb8/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-iclb2/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb3/igt@runner@aborted.html
    - shard-apl:          [FAIL][124] ([i915#2295]) -> ([FAIL][125], [FAIL][126]) ([i915#1610] / [i915#2295] / [i915#2426])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-apl7/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-apl2/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-apl1/igt@runner@aborted.html
    - shard-glk:          ([FAIL][127], [FAIL][128], [FAIL][129]) ([i915#2295] / [i915#2426] / [k.org#202321]) -> ([FAIL][130], [FAIL][131]) ([i915#2295] / [k.org#202321])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-glk4/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-glk5/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-glk6/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-glk1/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-glk2/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][132], [FAIL][133]) ([i915#2295] / [i915#2426] / [i915#2667] / [i915#2803]) -> [FAIL][134] ([i915#2295] / [i915#2667])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-tglb2/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-tglb8/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb2/igt@runner@aborted.html
    - shard-skl:          ([FAIL][135], [FAIL][136], [FAIL][137]) ([i915#1436] / [i915#2295] / [i915#2426] / [i915#2722]) -> ([FAIL][138], [FAIL][139]) ([i915#2295] / [i915#2426])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl1/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl9/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl3/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl6/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl4/igt@runner@aborted.html

  
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
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109502]: https://bugs.freedesktop.org/show_bug.cgi?id=109502
  [fdo#111304]: https://bugs.freedesktop.org/show_bug.cgi?id=111304
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#111828]: https://bugs.freedesktop.org/show_bug.cgi?id=111828
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [fdo#112306]: https://bugs.freedesktop.org/show_bug.cgi?id=112306
  [i915#1036]: https://gitlab.freedesktop.org/drm/intel/issues/1036
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/index.html

--===============2309629920228517575==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Refactor heartbeat request construction and submission</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85207/">https://patchwork.freedesktop.org/series/85207/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9521_full -&gt; Patchwork_19214_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19214_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19214_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19214_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_ctx_persistence@close-replace-race:<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-glk2/igt@gem_ctx_persistence@close-replace-race.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-glk1/igt@gem_ctx_persistence@close-replace-race.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19214_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl3/igt@gem_ctx_isolation@preservation-s3@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl9/igt@gem_ctx_isolation@preservation-s3@vcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb2/igt@gem_exec_params@secure-non-root.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=112283">fdo#112283</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb7/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> ([i915#2389]) +4 similar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-glk7/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> ([i915#2389])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> ([i915#2389]) +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-kbl1/igt@gem_exec_reloc@basic-many-active@vcs0.html">FAIL</a> ([i915#2389]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@smoketest-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-glk3/igt@gem_exec_schedule@smoketest-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-glk7/igt@gem_exec_schedule@smoketest-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-x-tiled:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-glk7/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +28 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html">SKIP</a> ([i915#768])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen3_render_linear_blits:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb7/igt@gen3_render_linear_blits.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) +5 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@gen3_render_linear_blits.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb2/igt@gen9_exec_parse@unaligned-jump.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=112306">fdo#112306</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl3/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl9/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / [i915#541])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-snb4/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-snb4/igt@i915_suspend@forcewake.html">DMESG-WARN</a> ([i915#42])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb2/igt@kms_big_fb@linear-64bpp-rotate-90.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl2/igt@kms_ccs@pipe-c-bad-pixel-format.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111304">fdo#111304</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-single:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-glk7/igt@kms_chamelium@hdmi-crc-single.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +3 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@kms_chamelium@hdmi-crc-single.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-kbl1/igt@kms_chamelium@vga-hpd-for-each-pipe.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl2/igt@kms_color_chamelium@pipe-b-ctm-max.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-max:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb2/igt@kms_color_chamelium@pipe-d-ctm-max.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-gamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@kms_color_chamelium@pipe-d-gamma.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb2/igt@kms_content_protection@lic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111828">fdo#111828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-512x170-onscreen.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109279">fdo#109279</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html">FAIL</a> ([i915#54])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x170-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@kms_cursor_crc@pipe-c-cursor-512x170-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109279">fdo#109279</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-forked-move:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl2/igt@kms_cursor_legacy@pipe-d-forked-move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +39 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-xtiled:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl5/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-xtiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl8/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-xtiled.html">FAIL</a> ([i915#52] / [i915#54])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@kms_flip@2x-dpms-vs-vblank-race.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl8/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-glk2/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-glk3/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-kbl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#2672])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-glk7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#2672])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([i915#2587])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-snb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-snb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html">FAIL</a> ([i915#49])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109280">fdo#109280</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-kbl1/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +31 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-glk7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-d-overlay-size-256:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@kms_plane_cursor@pipe-d-overlay-size-256.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb7/igt@kms_plane_lowres@pipe-c-tiling-yf.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-dpms:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@kms_vrr@flip-dpms.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109502">fdo#109502</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb7/igt@kms_vrr@flip-dpms.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109502">fdo#109502</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-outp-complete:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb7/igt@nouveau_crc@pipe-c-source-outp-complete.html">SKIP</a> ([i915#2530]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@nouveau_crc@pipe-c-source-outp-complete.html">SKIP</a> ([i915#2530])</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@nv_i915_import_twice_check_flink_name:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@prime_nv_api@nv_i915_import_twice_check_flink_name.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109291">fdo#109291</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb7/igt@prime_nv_api@nv_i915_import_twice_check_flink_name.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109291">fdo#109291</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@prime_vgem@fence-flip-hang.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb7/igt@prime_vgem@fence-flip-hang.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_import_export@prime:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-tglb8/igt@drm_import_export@prime.html">INCOMPLETE</a> ([i915#750]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb2/igt@drm_import_export@prime.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@vecs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-iclb8/igt@gem_exec_endless@dispatch@vecs0.html">INCOMPLETE</a> ([i915#2502]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb1/igt@gem_exec_endless@dispatch@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-deadline}:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-kbl1/igt@gem_exec_fair@basic-deadline.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-kbl6/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-none-share@rcs0}:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> +2 similar issues</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb3/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-none-solo@rcs0}:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace-share@rcs0}:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace@rcs0}:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-throttle@rcs0}:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_schedule@u-fairslice@bcs0}:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-tglb2/igt@gem_exec_schedule@u-fairslice@bcs0.html">DMESG-WARN</a> ([i915#2803]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb7/igt@gem_exec_schedule@u-fairslice@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_schedule@u-fairslice@rcs0}:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-kbl1/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-kbl1/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-iclb8/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> ([i915#2803]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb4/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_schedule@u-fairslice@vecs0}:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-glk4/igt@gem_exec_schedule@u-fairslice@vecs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-glk7/igt@gem_exec_schedule@u-fairslice@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@requests:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl3/igt@i915_selftest@mock@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl3/igt@i915_selftest@mock@requests.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html">FAIL</a> ([i915#54]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-c:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl7/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-c.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1036">i915#1036</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl6/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / [i915#265]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-iclb3/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#2681] / [i915#2684]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</a> / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-kbl1/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / [i915#2426]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-kbl6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / [i915#483])</p>
</li>
<li>
<p>shard-iclb:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-iclb8/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-iclb2/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / [i915#2426] / [i915#2724]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-iclb3/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / [i915#2724])</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-apl7/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-apl1/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / [i915#2426])</p>
</li>
<li>
<p>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-glk4/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-glk5/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-glk6/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / [i915#2426] / [k.org#202321]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-glk1/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-glk2/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / [k.org#202321])</p>
</li>
<li>
<p>shard-tglb:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-tglb2/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-tglb8/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / [i915#2426] / [i915#2667] / [i915#2803]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-tglb2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / [i915#2667])</p>
</li>
<li>
<p>shard-skl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/shard-skl3/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / [i915#2426] / [i915#2722]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl6/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19214/shard-skl4/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / [i915#2426])</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<p>[i915</p>

</body>
</html>

--===============2309629920228517575==--

--===============1767832656==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1767832656==--
