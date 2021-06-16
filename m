Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE5B3AA76B
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 01:23:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 786AF89CB2;
	Wed, 16 Jun 2021 23:23:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1AEDE89B70;
 Wed, 16 Jun 2021 23:23:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1340AA0078;
 Wed, 16 Jun 2021 23:23:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Wed, 16 Jun 2021 23:23:44 -0000
Message-ID: <162388582407.8273.1982741499876863871@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210616004213.1705079-1-matthew.d.roper@intel.com>
In-Reply-To: <20210616004213.1705079-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRXhw?=
 =?utf-8?q?licity_steer_l3bank_multicast_reads_when_necessary_=28rev4=29?=
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
Content-Type: multipart/mixed; boundary="===============1645356328=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1645356328==
Content-Type: multipart/alternative;
 boundary="===============5070031395965227489=="

--===============5070031395965227489==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Explicity steer l3bank multicast reads when necessary (rev4)
URL   : https://patchwork.freedesktop.org/series/91485/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10230_full -> Patchwork_20391_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20391_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20391_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20391_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-iclb:         [PASS][1] -> [DMESG-WARN][2] +129 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-iclb6/igt@gem_eio@in-flight-contexts-1us.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-iclb7/igt@gem_eio@in-flight-contexts-1us.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-wide-active@rcs0:
    - shard-iclb:         [FAIL][3] ([i915#2389]) -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-iclb7/igt@gem_exec_reloc@basic-wide-active@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-iclb1/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_20391_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_mm@all@insert_range:
    - shard-skl:          NOTRUN -> [INCOMPLETE][5] ([i915#2485])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-skl9/igt@drm_mm@all@insert_range.html

  * igt@gem_create@create-clear:
    - shard-glk:          [PASS][6] -> [FAIL][7] ([i915#3160])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-glk3/igt@gem_create@create-clear.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-glk5/igt@gem_create@create-clear.html
    - shard-skl:          [PASS][8] -> [FAIL][9] ([i915#3160])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-skl2/igt@gem_create@create-clear.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-skl1/igt@gem_create@create-clear.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-tglb:         NOTRUN -> [SKIP][10] ([fdo#109314])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_persistence@legacy-engines-queued:
    - shard-snb:          NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#1099]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-snb6/igt@gem_ctx_persistence@legacy-engines-queued.html

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [PASS][12] -> [FAIL][13] ([i915#2410])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-tglb6/igt@gem_ctx_persistence@many-contexts.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-tglb3/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@in-flight-1us:
    - shard-skl:          [PASS][14] -> [TIMEOUT][15] ([i915#3063])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-skl9/igt@gem_eio@in-flight-1us.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-skl6/igt@gem_eio@in-flight-1us.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][16] -> [FAIL][17] ([i915#2846])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-glk2/igt@gem_exec_fair@basic-deadline.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-glk4/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [PASS][18] -> [FAIL][19] ([i915#2842])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-glk8/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][20] -> [FAIL][21] ([i915#2842])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-kbl3/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-apl:          NOTRUN -> [FAIL][22] ([i915#2389]) +3 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-apl3/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_exec_reloc@basic-wide-active@rcs0:
    - shard-snb:          NOTRUN -> [FAIL][23] ([i915#2389]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-snb6/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * igt@gem_exec_reloc@basic-wide-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][24] ([i915#2389])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-iclb1/igt@gem_exec_reloc@basic-wide-active@vcs1.html

  * igt@gem_mmap_gtt@big-copy-xy:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#307])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-skl10/igt@gem_mmap_gtt@big-copy-xy.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-skl10/igt@gem_mmap_gtt@big-copy-xy.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-tglb:         NOTRUN -> [WARN][27] ([i915#2658])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@gem_pwrite@basic-exhaustion.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-tglb:         NOTRUN -> [SKIP][28] ([fdo#112306])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@gen9_exec_parse@unaligned-jump.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][29] ([fdo#111614])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
    - shard-tglb:         NOTRUN -> [SKIP][30] ([fdo#111615]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html

  * igt@kms_chamelium@hdmi-mode-timings:
    - shard-snb:          NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +17 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-snb7/igt@kms_chamelium@hdmi-mode-timings.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +22 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-apl3/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-5:
    - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@kms_color_chamelium@pipe-b-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-c-ctm-negative:
    - shard-kbl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-kbl4/igt@kms_color_chamelium@pipe-c-ctm-negative.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          NOTRUN -> [TIMEOUT][35] ([i915#1319])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-apl3/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][36] ([i915#3359])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][37] ([i915#3319])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@kms_cursor_crc@pipe-b-cursor-32x32-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x170-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][38] ([fdo#109279] / [i915#3359]) +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-512x170-onscreen.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#79]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][41] -> [DMESG-WARN][42] ([i915#180]) +9 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#2122])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-tglb:         NOTRUN -> [SKIP][45] ([i915#2587])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-apl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#2642])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-apl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#2672])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-apl1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-glk:          [PASS][48] -> [DMESG-WARN][49] ([i915#118] / [i915#95]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:
    - shard-skl:          NOTRUN -> [SKIP][50] ([fdo#109271]) +3 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-skl6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         NOTRUN -> [SKIP][51] ([fdo#111825]) +14 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render:
    - shard-kbl:          NOTRUN -> [SKIP][52] ([fdo#109271]) +18 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-kbl4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff:
    - shard-snb:          NOTRUN -> [SKIP][53] ([fdo#109271]) +354 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-snb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-apl:          NOTRUN -> [DMESG-WARN][54] ([i915#180]) +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-apl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-apl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#533])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-apl8/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-apl:          [PASS][56] -> [DMESG-WARN][57] ([i915#180]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][58] ([fdo#108145] / [i915#265]) +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-kbl:          NOTRUN -> [FAIL][59] ([fdo#108145] / [i915#265])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][60] ([i915#265])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-apl3/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_lowres@pipe-d-tiling-x:
    - shard-tglb:         NOTRUN -> [SKIP][61] ([i915#3536])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@kms_plane_lowres@pipe-d-tiling-x.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-apl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#658]) +2 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-apl3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-tglb:         NOTRUN -> [SKIP][63] ([i915#1911])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][64] -> [SKIP][65] ([fdo#109441])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][66] -> [DMESG-WARN][67] ([i915#180] / [i915#295])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#2437]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-apl1/igt@kms_writeback@writeback-check-output.html

  * igt@nouveau_crc@pipe-b-source-outp-complete:
    - shard-tglb:         NOTRUN -> [SKIP][69] ([i915#2530])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@nouveau_crc@pipe-b-source-outp-complete.html

  * igt@perf@polling-parameterized:
    - shard-iclb:         [PASS][70] -> [FAIL][71] ([i915#1542])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-iclb2/igt@perf@polling-parameterized.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-iclb2/igt@perf@polling-parameterized.html

  * igt@perf_pmu@module-unload:
    - shard-iclb:         [PASS][72] -> [DMESG-WARN][73] ([i915#262])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-iclb8/igt@perf_pmu@module-unload.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-iclb8/igt@perf_pmu@module-unload.html

  * igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
    - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271]) +215 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-apl3/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html

  * igt@prime_nv_test@nv_i915_sharing:
    - shard-tglb:         NOTRUN -> [SKIP][75] ([fdo#109291])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@prime_nv_test@nv_i915_sharing.html

  * igt@sysfs_clients@busy:
    - shard-tglb:         NOTRUN -> [SKIP][76] ([i915#2994])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@sysfs_clients@busy.html
    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#2994]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-apl3/igt@sysfs_clients@busy.html

  
#### Possible fixes ####

  * igt@gem_exec_endless@dispatch@bcs0:
    - shard-iclb:         [INCOMPLETE][78] -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-iclb2/igt@gem_exec_endless@dispatch@bcs0.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-iclb4/igt@gem_exec_endless@dispatch@bcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [FAIL][80] ([i915#2842]) -> [PASS][81] +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-kbl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [SKIP][82] ([fdo#109271]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][84] ([i915#2849]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-iclb:         [FAIL][86] ([i915#307]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_vm_create@destroy-race:
    - shard-tglb:         [FAIL][88] ([i915#2822]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-tglb5/igt@gem_vm_create@destroy-race.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@gem_vm_create@destroy-race.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [INCOMPLETE][90] ([i915#2782]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-snb2/igt@i915_selftest@live@hangcheck.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-snb7/igt@i915_selftest@live@hangcheck.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [FAIL][92] ([i915#2521]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge:
    - shard-skl:          [DMESG-WARN][94] ([i915#1982]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-skl7/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-skl5/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][96] ([i915#2346]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled:
    - shard-skl:          [FAIL][98] -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-skl5/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-skl4/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [DMESG-WARN][100] ([i915#180]) -> [PASS][101] +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-suspend@b-dp1:
    - shard-kbl:          [DMESG-WARN][102] ([i915#180]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-kbl3/igt@kms_flip@flip-vs-suspend@b-dp1.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-kbl4/igt@kms_flip@flip-vs-suspend@b-dp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-skl:          [FAIL][104] ([i915#49]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
    - shard-iclb:         [FAIL][106] ([i915#49]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-iclb3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-iclb2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][108] ([fdo#108145] / [i915#265]) -> [PASS][109] +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][110] ([fdo#109441]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-iclb3/igt@kms_psr@psr2_sprite_blt.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * igt@perf@oa-exponents:
    - shard-tglb:         [INCOMPLETE][112] -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-tglb6/igt@perf@oa-exponents.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@perf@oa-exponents.html

  * igt@perf@polling:
    - shard-skl:          [FAIL][114] ([i915#1542]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-skl1/igt@perf@polling.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-skl1/igt@perf@polling.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [FAIL][116] ([i915#1722]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-skl2/igt@perf@polling-small-buf.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-skl8/igt@perf@polling-small-buf.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][118] ([i915#2684]) -> [WARN][119] ([i915#1804] / [i915#2684])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
    - shard-iclb:         [SKIP][120] ([i915#658]) -> [SKIP][121] ([i915#2920]) +2 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127]) ([i915#1436] / [i915#180] / [i915#3002] / [i915#3363]) -> ([FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2505] / [i915#3002] / [i915#3363] / [i915#602])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-kbl1/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-kbl1/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-kbl4/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-kbl1/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-kbl3/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-kbl1/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-kbl7/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-kbl1/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-kbl7/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-kbl6/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-kbl2/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-kbl2/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-kbl1/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-kbl2/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-kbl7/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-kbl2/igt@runner@aborted.html
    - shard-apl:          ([FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#3363]) -> ([FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150]) ([fdo#109271] / [i915#1610] / [i915#180] / [i915#1814] / [i915#2292] / [i915#3002] / [i915#3363])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-apl8/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-apl2/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-apl3/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-apl2/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-apl6/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-apl2/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-apl3/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-apl3/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-apl6/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-apl1/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-apl6/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-apl8/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-apl6/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112306]: https://bugs.freedesktop.org/show_bug.cgi?id=112306
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/10

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/index.html

--===============5070031395965227489==
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
<tr><td><b>Series:</b></td><td>Explicity steer l3bank multicast reads when =
necessary (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/91485/">https://patchwork.freedesktop.org/series/91485/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20391/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20391/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10230_full -&gt; Patchwork_20391_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20391_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_20391_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
20391_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_eio@in-flight-contexts-1us:<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-iclb6/igt@gem_eio@in-flight-contexts-1us.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/=
shard-iclb7/igt@gem_eio@in-flight-contexts-1us.html">DMESG-WARN</a> +129 si=
milar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_exec_reloc@basic-wide-active@rcs0:<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-iclb7/igt@gem_exec_reloc@basic-wide-active@rcs0.html">F=
AIL</a> ([i915#2389]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20391/shard-iclb1/igt@gem_exec_reloc@basic-wide-active@rcs0.=
html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20391_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_mm@all@insert_range:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-skl9/igt@drm_mm@all@insert_range.html">=
INCOMPLETE</a> ([i915#2485])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-clear:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10230/shard-glk3/igt@gem_create@create-clear.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-glk=
5/igt@gem_create@create-clear.html">FAIL</a> ([i915#3160])</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10230/shard-skl2/igt@gem_create@create-clear.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-skl=
1/igt@gem_create@create-clear.html">FAIL</a> ([i915#3160])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@gem_ctx_param@set-priority-no=
t-supported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109314">fdo#109314</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-queued:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-snb6/igt@gem_ctx_persistence@legacy-eng=
ines-queued.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/10">i915#1099</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-tglb6/igt@gem_ctx_persistence@many-contexts.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_203=
91/shard-tglb3/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> ([i915#=
2410])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-1us:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-skl9/igt@gem_eio@in-flight-1us.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-skl6=
/igt@gem_eio@in-flight-1us.html">TIMEOUT</a> ([i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-glk2/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/sha=
rd-glk4/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_203=
91/shard-glk8/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#=
2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/sh=
ard-kbl3/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-apl3/igt@gem_exec_reloc@basic-wide-acti=
ve@bcs0.html">FAIL</a> ([i915#2389]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@rcs0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-snb6/igt@gem_exec_reloc@basic-wide-acti=
ve@rcs0.html">FAIL</a> ([i915#2389]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-iclb1/igt@gem_exec_reloc@basic-wide-act=
ive@vcs1.html">FAIL</a> ([i915#2389])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-xy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-skl10/igt@gem_mmap_gtt@big-copy-xy.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-=
skl10/igt@gem_mmap_gtt@big-copy-xy.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@gem_pwrite@basic-exhaustion.h=
tml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@gen9_exec_parse@unaligned-jum=
p.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D112306">fdo#112306</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@kms_big_fb@x-tiled-64bpp-rota=
te-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@kms_big_fb@yf-tiled-addfb-siz=
e-overflow.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111615">fdo#111615</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-mode-timings:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-snb7/igt@kms_chamelium@hdmi-mode-timing=
s.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-apl3/igt@kms_chamelium@vga-hpd.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11827">fdo#111827</a>) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-5:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@kms_color_chamelium@pipe-b-ct=
m-0-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-negative:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-kbl4/igt@kms_color_chamelium@pipe-c-ctm=
-negative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-apl3/igt@kms_content_protection@legacy.=
html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-=
32x10-offscreen.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@kms_cursor_crc@pipe-b-cursor-=
32x32-rapid-movement.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x170-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-=
512x170-onscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109279">fdo#109279</a> / [i915#3359]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20391/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interru=
ptible@a-edp1.html">FAIL</a> ([i915#79]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20391/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">DMESG-WARN</a> ([i915#180]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20391/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">FAIL</a>=
 ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@kms_flip_scaled_crc@flip-32bp=
p-ytile-to-32bpp-ytileccs.html">SKIP</a> ([i915#2587])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp=
-ytileccs-to-64bpp-ytile.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-apl1/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-32bpp-ytilercccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-i=
ndfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_20391/shard-glk9/igt@kms_frontbuffer_tracking@fb=
c-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">DMESG-WARN</a> ([i915#118] / [i=
915#95]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-skl6/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +3 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-primscrn-pri-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +14 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render:</=
p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-kbl4/igt@kms_frontbuffer_tracking@fbcps=
r-2p-scndscrn-pri-indfb-draw-render.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +18 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-snb2/igt@kms_frontbuffer_tracking@psr-1=
p-primscrn-cur-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +354 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-apl3/igt@kms_hdr@bpc-switch-suspend.htm=
l">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-apl8/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d-frame-sequence.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20391/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html">=
DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D108145">fdo#108145</a> / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D108145">fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-apl3/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-d-tiling-x:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@kms_plane_lowres@pipe-d-tilin=
g-x.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-apl3/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-3.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@kms_psr2_su@frontbuffer.html"=
>SKIP</a> ([i915#1911])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/sh=
ard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_20391/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DM=
ESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-apl1/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / [i915#2437]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-source-outp-complete:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@nouveau_crc@pipe-b-source-out=
p-complete.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-iclb2/igt@perf@polling-parameterized.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shar=
d-iclb2/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-iclb8/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-ic=
lb8/igt@perf_pmu@module-unload.html">DMESG-WARN</a> ([i915#262])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-apl3/igt@prime_nv_api@i915_nv_reimport_=
twice_check_flink_name.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271">fdo#109271</a>) +215 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@nv_i915_sharing:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20391/shard-tglb6/igt@prime_nv_test@nv_i915_sharing=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20391/shard-tglb6/igt@sysfs_clients@busy.html">SKIP<=
/a> ([i915#2994])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20391/shard-apl3/igt@sysfs_clients@busy.html">SKIP</=
a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#1=
09271</a> / [i915#2994]) +1 similar issue</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_endless@dispatch@bcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-iclb2/igt@gem_exec_endless@dispatch@bcs0.html">INCOMPLE=
TE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20391/shard-iclb4/igt@gem_exec_endless@dispatch@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-kbl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20391/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PA=
SS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10927=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20391/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> ([i915#2849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20391/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</=
a> ([i915#307]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20391/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_vm_create@destroy-race:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-tglb5/igt@gem_vm_create@destroy-race.html">FAIL</a> ([i=
915#2822]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_20391/shard-tglb6/igt@gem_vm_create@destroy-race.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-snb2/igt@i915_selftest@live@hangcheck.html">INCOMPLETE<=
/a> ([i915#2782]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20391/shard-snb7/igt@i915_selftest@live@hangcheck.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html=
">FAIL</a> ([i915#2521]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_20391/shard-skl9/igt@kms_async_flips@alternate-sync-async=
-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-skl7/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.h=
tml">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_20391/shard-skl5/igt@kms_cursor_edge_walk@pipe-b=
-256x256-top-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_20391/shard-skl1/igt@kms_cursor_legacy@flip-vs-=
cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-skl5/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-un=
tiled.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_20391/shard-skl4/igt@kms_draw_crc@draw-method-xrgb2101010-pwr=
ite-untiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20391/shard-apl2/igt@kms_flip@flip-vs-suspend-int=
erruptible@c-dp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-kbl3/igt@kms_flip@flip-vs-suspend@b-dp1.html">DMESG-WAR=
N</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20391/shard-kbl4/igt@kms_flip@flip-vs-suspend@b-dp1.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb=
-plflip-blt.html">FAIL</a> ([i915#49]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_20391/shard-skl4/igt@kms_frontbuffer_tracki=
ng@psr-1p-primscrn-indfb-plflip-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-iclb3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-r=
ender.html">FAIL</a> ([i915#49]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20391/shard-iclb2/igt@kms_frontbuffer_tracking@ps=
r-rgb101010-draw-render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mi=
n.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D108145">fdo#108145</a> / [i915#265]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_20391/shard-skl4/igt@kms_plane_alpha_blend=
@pipe-a-constant-alpha-min.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-iclb3/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391=
/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@oa-exponents:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-tglb6/igt@perf@oa-exponents.html">INCOMPLETE</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-t=
glb6/igt@perf@oa-exponents.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-skl1/igt@perf@polling.html">FAIL</a> ([i915#1542]) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard=
-skl1/igt@perf@polling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-skl2/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1=
722]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0391/shard-skl8/igt@perf@polling-small-buf.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 ([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20391/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 ([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-=
1.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20391/shard-iclb2/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-1.html">SKIP</a> ([i915#2920]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-kbl1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10230/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-kbl1/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10230/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-kbl1/igt@runner@aborted.h=
tml">FAIL</a>) ([i915#1436] / [i915#180] / [i915#3002] / [i915#3363]) -&gt;=
 (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard=
-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_20391/shard-kbl1/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/sh=
ard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20391/shard-kbl6/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391=
/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_20391/shard-kbl2/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
391/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-kbl2/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20391/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-kbl2/igt@runner@aborted=
.html">FAIL</a>) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2505] / [i=
915#3002] / [i915#3363] / [i915#602])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10230/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-apl2/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10230/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-apl2/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10230/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/shard-apl2/igt@runner@aborted.h=
tml">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / [i915#180] / [i915#3002] / [i915#3363]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-apl3/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_20391/shard-apl3/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard-ap=
l6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20391/shard-apl1/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/shard=
-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_20391/shard-apl8/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/sh=
ard-apl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#1610] / [i915#18=
0] / [i915#1814] / [i915#2292] / [i915#3002] / [i915#3363])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5070031395965227489==--

--===============1645356328==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1645356328==--
