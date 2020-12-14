Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7B82D9B94
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 16:59:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 192326E2EF;
	Mon, 14 Dec 2020 15:58:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 54C236E2DC;
 Mon, 14 Dec 2020 15:58:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 45C08A0003;
 Mon, 14 Dec 2020 15:58:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 14 Dec 2020 15:58:57 -0000
Message-ID: <160796153727.28164.13497927613625473060@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201214100949.11387-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201214100949.11387-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/69=5D_drm/i915=3A_Use_cmpxchg64_for_32b?=
 =?utf-8?q?_compatilibity?=
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
Content-Type: multipart/mixed; boundary="===============0875249115=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0875249115==
Content-Type: multipart/alternative;
 boundary="===============5426756568805385419=="

--===============5426756568805385419==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/69] drm/i915: Use cmpxchg64 for 32b compatilibity
URL   : https://patchwork.freedesktop.org/series/84900/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9478_full -> Patchwork_19133_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19133_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19133_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19133_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-glk:          [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-glk4/igt@gem_ctx_persistence@close-replace-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-glk1/igt@gem_ctx_persistence@close-replace-race.html

  * igt@perf_pmu@other-init-4:
    - shard-apl:          [PASS][3] -> [FAIL][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-apl6/igt@perf_pmu@other-init-4.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-apl6/igt@perf_pmu@other-init-4.html
    - shard-tglb:         [PASS][5] -> [FAIL][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-tglb7/igt@perf_pmu@other-init-4.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-tglb3/igt@perf_pmu@other-init-4.html
    - shard-glk:          [PASS][7] -> [FAIL][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-glk3/igt@perf_pmu@other-init-4.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-glk5/igt@perf_pmu@other-init-4.html
    - shard-skl:          [PASS][9] -> [FAIL][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-skl6/igt@perf_pmu@other-init-4.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-skl6/igt@perf_pmu@other-init-4.html
    - shard-kbl:          [PASS][11] -> [FAIL][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-kbl6/igt@perf_pmu@other-init-4.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-kbl4/igt@perf_pmu@other-init-4.html

  * igt@perf_pmu@other-read-4:
    - shard-snb:          [PASS][13] -> [FAIL][14] +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-snb5/igt@perf_pmu@other-read-4.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-snb4/igt@perf_pmu@other-read-4.html
    - shard-iclb:         [PASS][15] -> [FAIL][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-iclb3/igt@perf_pmu@other-read-4.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-iclb2/igt@perf_pmu@other-read-4.html
    - shard-hsw:          [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-hsw1/igt@perf_pmu@other-read-4.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-hsw7/igt@perf_pmu@other-read-4.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9478_full and Patchwork_19133_full:

### New IGT tests (3) ###

  * igt@i915_selftest@live@scheduler:
    - Statuses : 8 pass(s)
    - Exec time: [0.66, 9.28] s

  * igt@i915_selftest@mock@scheduler:
    - Statuses : 8 pass(s)
    - Exec time: [0.15, 1.56] s

  * igt@i915_selftest@perf@scheduler:
    - Statuses : 8 pass(s)
    - Exec time: [11.33, 19.49] s

  

Known issues
------------

  Here are the changes found in Patchwork_19133_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-snb:          [PASS][19] -> [SKIP][20] ([fdo#109271])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-snb7/igt@gem_ctx_param@set-priority-not-supported.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-snb5/igt@gem_ctx_param@set-priority-not-supported.html
    - shard-hsw:          [PASS][21] -> [SKIP][22] ([fdo#109271])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-hsw4/igt@gem_ctx_param@set-priority-not-supported.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-hsw4/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-iclb:         NOTRUN -> [SKIP][23] ([fdo#109283])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_reloc@basic-wide-active@rcs0:
    - shard-iclb:         NOTRUN -> [FAIL][24] ([i915#2389]) +3 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@gem_exec_reloc@basic-wide-active@rcs0.html
    - shard-kbl:          NOTRUN -> [FAIL][25] ([i915#2389]) +4 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-kbl3/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * igt@gem_exec_schedule@lateslice@vcs0:
    - shard-hsw:          NOTRUN -> [SKIP][26] ([fdo#109271]) +27 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-hsw7/igt@gem_exec_schedule@lateslice@vcs0.html

  * igt@gem_exec_schedule@thriceslice@bcs0:
    - shard-snb:          NOTRUN -> [SKIP][27] ([fdo#109271]) +20 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-snb5/igt@gem_exec_schedule@thriceslice@bcs0.html

  * igt@gem_exec_whisper@basic-forked-all:
    - shard-glk:          [PASS][28] -> [DMESG-WARN][29] ([i915#118] / [i915#95])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-glk8/igt@gem_exec_whisper@basic-forked-all.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-glk7/igt@gem_exec_whisper@basic-forked-all.html

  * igt@gem_render_copy@y-tiled-to-vebox-linear:
    - shard-iclb:         NOTRUN -> [SKIP][30] ([i915#768])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@gem_render_copy@y-tiled-to-vebox-linear.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#112306])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@gen9_exec_parse@batch-without-end.html

  * igt@i915_pm_rpm@gem-idle:
    - shard-hsw:          [PASS][32] -> [INCOMPLETE][33] ([i915#151] / [i915#2055])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-hsw1/igt@i915_pm_rpm@gem-idle.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-hsw8/igt@i915_pm_rpm@gem-idle.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#110725] / [fdo#111614])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#110723])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html

  * igt@kms_chamelium@hdmi-frame-dump:
    - shard-skl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-skl6/igt@kms_chamelium@hdmi-frame-dump.html

  * igt@kms_color_chamelium@pipe-a-ctm-max:
    - shard-iclb:         NOTRUN -> [SKIP][37] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@kms_color_chamelium@pipe-a-ctm-max.html

  * igt@kms_color_chamelium@pipe-d-ctm-max:
    - shard-kbl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-kbl3/igt@kms_color_chamelium@pipe-d-ctm-max.html
    - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@kms_color_chamelium@pipe-d-ctm-max.html

  * igt@kms_content_protection@legacy:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109300] / [fdo#111066])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@uevent:
    - shard-kbl:          NOTRUN -> [FAIL][41] ([i915#2105])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-kbl3/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen:
    - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109278] / [fdo#109279]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#54]) +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding:
    - shard-skl:          NOTRUN -> [FAIL][45] ([i915#54]) +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-128x128-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109278]) +6 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@kms_cursor_crc@pipe-d-cursor-128x128-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([i915#2346]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
    - shard-tglb:         [PASS][49] -> [FAIL][50] ([i915#2346])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@2x-plain-flip:
    - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109274])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][52] -> [FAIL][53] ([i915#79])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-tglb:         [PASS][54] -> [FAIL][55] ([i915#2598]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
    - shard-skl:          [PASS][56] -> [FAIL][57] ([i915#2122])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-skl8/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-kbl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#2672])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-kbl3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
    - shard-iclb:         NOTRUN -> [SKIP][59] ([i915#2587])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:
    - shard-skl:          NOTRUN -> [FAIL][60] ([i915#2628])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-skl10/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw:
    - shard-iclb:         NOTRUN -> [SKIP][61] ([fdo#109280]) +9 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
    - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271]) +45 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-skl3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][63] -> [FAIL][64] ([i915#1188])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-skl7/igt@kms_hdr@bpc-switch.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-skl9/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][65] ([fdo#108145] / [i915#265]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          NOTRUN -> [FAIL][66] ([fdo#108145] / [i915#265]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-d-tiling-x:
    - shard-kbl:          NOTRUN -> [SKIP][67] ([fdo#109271]) +68 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-kbl3/igt@kms_plane_multiple@atomic-pipe-d-tiling-x.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         NOTRUN -> [SKIP][68] ([fdo#109441])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][69] -> [SKIP][70] ([fdo#109441])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-kbl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#533]) +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-kbl3/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-kbl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#2437])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-kbl3/igt@kms_writeback@writeback-fb-id.html
    - shard-iclb:         NOTRUN -> [SKIP][73] ([i915#2437])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@kms_writeback@writeback-fb-id.html

  * igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:
    - shard-iclb:         NOTRUN -> [SKIP][74] ([i915#2530])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame.html

  * igt@perf_pmu@event-wait@rcs0:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#112283])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@perf_pmu@event-wait@rcs0.html

  * igt@prime_nv_test@nv_i915_sharing:
    - shard-iclb:         NOTRUN -> [SKIP][76] ([fdo#109291])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@prime_nv_test@nv_i915_sharing.html

  * igt@prime_vgem@coherency-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([fdo#109292])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@prime_vgem@coherency-gtt.html

  * igt@runner@aborted:
    - shard-snb:          NOTRUN -> [FAIL][78] ([i915#2292] / [i915#2426])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-snb2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-glk:          [DMESG-WARN][79] ([i915#118] / [i915#95]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-glk4/igt@gem_exec_whisper@basic-contexts-forked.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-glk1/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-hsw:          [SKIP][81] ([fdo#109271]) -> [PASS][82] +22 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-hsw8/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-hsw4/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][83] ([i915#644]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-random:
    - shard-skl:          [FAIL][85] ([i915#54]) -> [PASS][86] +4 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][87] ([i915#2346] / [i915#533]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][89] ([i915#180]) -> [PASS][90] +3 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [SKIP][91] ([fdo#109441]) -> [PASS][92] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@perf_pmu@busy-accuracy-50@rcs0:
    - shard-snb:          [SKIP][93] ([fdo#109271]) -> [PASS][94] +19 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-snb4/igt@perf_pmu@busy-accuracy-50@rcs0.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-snb5/igt@perf_pmu@busy-accuracy-50@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][95] ([i915#2684]) -> [WARN][96] ([i915#1804] / [i915#2684])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][97] ([i915#1804] / [i915#2684]) -> [WARN][98] ([i915#2684])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][99], [FAIL][100], [FAIL][101], [FAIL][102]) ([i915#1814] / [i915#2295] / [i915#2722] / [i915#483]) -> [FAIL][103] ([i915#2295] / [i915#2722] / [i915#483])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-kbl7/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-kbl3/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-kbl1/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-kbl4/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-kbl6/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][104], [FAIL][105]) ([i915#1569] / [i915#2295] / [i915#2722] / [i915#2724]) -> [FAIL][106] ([i915#2295] / [i915#2722] / [i915#2724])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-iclb2/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-iclb2/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-iclb2/igt@runner@aborted.html
    - shard-skl:          ([FAIL][107], [FAIL][108]) ([i915#1814] / [i915#2029] / [i915#2295] / [i915#2722] / [i915#483]) -> ([FAIL][109], [FAIL][110]) ([i915#1814] / [i915#2029] / [i915#2295] / [i915#2722])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-skl3/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-skl5/igt@runner@aborted.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-skl6/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-skl3/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109292]: https://bugs.freedesktop.org/show_bug.cgi?id=109292
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
  [fdo#111066]: https://bugs.freedesktop.org/show_bug.cgi?id=111066
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [fdo#112306]: https://bugs.freedesktop.org/show_bug.cgi?id=112306
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1569]: https://gitlab.freedesktop.org/drm/intel/issues/1569
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2105]: https://gitlab.freedesktop.org/drm/intel/issues/2105
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2292]: https://gitlab.freedesktop.org/drm/intel/issues/2292
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#2628]: https://gitlab.freedesktop.org/drm/intel/issues/2628
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9478 -> Patchwork_19133

  CI-20190529: 20190529
  CI_DRM_9478: 94cf3a4cc350324f21728c70954c46e535405c87 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5890: 0e209dc3cd7561a57ec45be74b8b299eaf391950 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19133: 70d710616a47edbf414439350c1821774c8b9a6c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/index.html

--===============5426756568805385419==
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
<tr><td><b>Series:</b></td><td>series starting with [01/69] drm/i915: Use c=
mpxchg64 for 32b compatilibity</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/84900/">https://patchwork.freedesktop.org/series/84900/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19133/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19133/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9478_full -&gt; Patchwork_19133_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19133_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19133_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19133_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@close-replace-race:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9478/shard-glk4/igt@gem_ctx_persistence@close-replace-race.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19133/shard-glk1/igt@gem_ctx_persistence@close-replace-race.html">TIMEOUT</=
a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@other-init-4:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9478/shard-apl6/igt@perf_pmu@other-init-4.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-apl6/i=
gt@perf_pmu@other-init-4.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9478/shard-tglb7/igt@perf_pmu@other-init-4.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-tglb3=
/igt@perf_pmu@other-init-4.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9478/shard-glk3/igt@perf_pmu@other-init-4.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-glk5/i=
gt@perf_pmu@other-init-4.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9478/shard-skl6/igt@perf_pmu@other-init-4.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-skl6/i=
gt@perf_pmu@other-init-4.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9478/shard-kbl6/igt@perf_pmu@other-init-4.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-kbl4/i=
gt@perf_pmu@other-init-4.html">FAIL</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@other-read-4:</p>
<ul>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9478/shard-snb5/igt@perf_pmu@other-read-4.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-snb4/i=
gt@perf_pmu@other-read-4.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9478/shard-iclb3/igt@perf_pmu@other-read-4.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-iclb2=
/igt@perf_pmu@other-read-4.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9478/shard-hsw1/igt@perf_pmu@other-read-4.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-hsw7/i=
gt@perf_pmu@other-read-4.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9478_full and Patchwork_19=
133_full:</p>
<h3>New IGT tests (3)</h3>
<ul>
<li>
<p>igt@i915_selftest@live@scheduler:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.66, 9.28] s</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@scheduler:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.15, 1.56] s</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@perf@scheduler:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [11.33, 19.49] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19133_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9478/shard-snb7/igt@gem_ctx_param@set-priority-not-supported.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19133/shard-snb5/igt@gem_ctx_param@set-priority-not-supported.html">SKIP</=
a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#1=
09271</a>)</p>
</li>
<li>
<p>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9478/shard-hsw4/igt@gem_ctx_param@set-priority-not-supported.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19133/shard-hsw4/igt@gem_ctx_param@set-priority-not-supported.html">SKIP</=
a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#1=
09271</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@gem_exec_params@rsvd2-dirt.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
283">fdo#109283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@rcs0:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19133/shard-iclb3/igt@gem_exec_reloc@basic-wide-acti=
ve@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2389">i915#2389</a>) +3 similar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19133/shard-kbl3/igt@gem_exec_reloc@basic-wide-activ=
e@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2389">i915#2389</a>) +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@lateslice@vcs0:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19133/shard-hsw7/igt@gem_exec_schedule@lateslice@vc=
s0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@thriceslice@bcs0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19133/shard-snb5/igt@gem_exec_schedule@thriceslice@=
bcs0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a>) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9478/shard-glk8/igt@gem_exec_whisper@basic-forked-all.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133=
/shard-glk7/igt@gem_exec_whisper@basic-forked-all.html">DMESG-WARN</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-linear:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@gem_render_copy@y-tiled-to-ve=
box-linear.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/768">i915#768</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@gen9_exec_parse@batch-without=
-end.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D112306">fdo#112306</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-idle:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9478/shard-hsw1/igt@i915_pm_rpm@gem-idle.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-hsw8/i=
gt@i915_pm_rpm@gem-idle.html">INCOMPLETE</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/151">i915#151</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/2055">i915#2055</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@kms_big_fb@y-tiled-64bpp-rota=
te-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D110725">fdo#110725</a> / <a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@kms_big_fb@yf-tiled-8bpp-rota=
te-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-frame-dump:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19133/shard-skl6/igt@kms_chamelium@hdmi-frame-dump.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-max:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@kms_color_chamelium@pipe-a-ct=
m-max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-max:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19133/shard-kbl3/igt@kms_color_chamelium@pipe-d-ctm-=
max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +6 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19133/shard-iclb3/igt@kms_color_chamelium@pipe-d-ctm=
-max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109278">fdo#109278</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@kms_content_protection@legacy=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109300">fdo#109300</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111066">fdo#111066</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19133/shard-kbl3/igt@kms_content_protection@uevent.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2105">i915#2105</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@kms_cursor_crc@pipe-b-cursor-=
512x512-onscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109279">fdo#109279</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9478/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19133/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54"=
>i915#54</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19133/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-=
128x42-sliding.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/54">i915#54</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x128-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@kms_cursor_crc@pipe-d-cursor-=
128x128-sliding.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109278">fdo#109278</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9478/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19133/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#234=
6</a>) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9478/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19133/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2=
346</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@kms_flip@2x-plain-flip.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109274"=
>fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9478/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19133/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interrup=
tible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9478/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19133/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2598">i915#25=
98</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9478/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19133/shard-skl8/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#212=
2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19133/shard-kbl3/igt@kms_flip_scaled_crc@flip-32bpp-=
ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19133/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2587">i915#2587</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19133/shard-skl10/igt@kms_flip_scaled_crc@flip-64bp=
p-ytile-to-16bpp-ytile.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2628">i915#2628</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-=
2p-pri-indfb-multidraw.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109280">fdo#109280</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19133/shard-skl3/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-pri-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +45 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9478/shard-skl7/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-skl9/igt=
@kms_hdr@bpc-switch.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19133/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19133/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-=
coverage-7efc.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-d-tiling-x:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19133/shard-kbl3/igt@kms_plane_multiple@atomic-pipe=
-d-tiling-x.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a>) +68 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@kms_psr@psr2_primary_page_fli=
p.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9478/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-ic=
lb3/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19133/shard-kbl3/igt@kms_vblank@pipe-d-wait-idle.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/533">i915#533</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19133/shard-kbl3/igt@kms_writeback@writeback-fb-id.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2437">i915#2437</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19133/shard-iclb3/igt@kms_writeback@writeback-fb-id.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2437">i915#2437</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@nouveau_crc@pipe-c-ctx-flip-s=
kip-current-frame.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@event-wait@rcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@perf_pmu@event-wait@rcs0.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11228=
3">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@nv_i915_sharing:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@prime_nv_test@nv_i915_sharing=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19133/shard-iclb3/igt@prime_vgem@coherency-gtt.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10929=
2">fdo#109292</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19133/shard-snb2/igt@runner@aborted.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2292">i915#2292=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i91=
5#2426</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9478/shard-glk4/igt@gem_exec_whisper@basic-contexts-forked.html">DM=
ESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/11=
8">i915#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/95">i915#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19133/shard-glk1/igt@gem_exec_whisper@basic-contexts-forked.htm=
l">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority-all:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9478/shard-hsw8/igt@gem_exec_whisper@basic-contexts-priority-all.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19133/shard-hsw4/igt@gem_exec_whisper@basic-contexts-priority=
-all.html">PASS</a> +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@flink-and-close-vma-leak:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9478/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/644">i915#64=
4</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19133/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9478/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54"=
>i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19133/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.htm=
l">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9478/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/533">i915#533</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-skl8/igt@kms_cursor_legacy=
@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9478/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
133/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> +3 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9478/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_cpu.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9133/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html">PASS</a> +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-accuracy-50@rcs0:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9478/shard-snb4/igt@perf_pmu@busy-accuracy-50@rcs0.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10927=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19133/shard-snb5/igt@perf_pmu@busy-accuracy-50@rcs0.html">PASS</a> +19 simi=
lar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9478/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#268=
4</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19133/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684=
</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9478/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19133/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</=
a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9478/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-kbl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9478/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-kbl4/igt@runner@aborted.ht=
ml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2722">i915#2722</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/483">i915#483</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_19133/shard-kbl6/igt@runner@aborted.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915=
#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722=
">i915#2722</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/483">i915#483</a>)</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9478/shard-iclb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-iclb2/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1569">i915#1569</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2722">i915#2722</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2724">i915#2724</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-iclb2/igt@runner@aborted.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2722">i915#2722</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2724">i915#2724</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9478/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/shard-skl5/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2029">i915#2029</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2722">i915#2722</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/483">i915#483</a>) -&gt; (<a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/shard-skl6/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19133/shard-skl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722=
</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9478 -&gt; Patchwork_19133</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9478: 94cf3a4cc350324f21728c70954c46e535405c87 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5890: 0e209dc3cd7561a57ec45be74b8b299eaf391950 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19133: 70d710616a47edbf414439350c1821774c8b9a6c @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============5426756568805385419==--

--===============0875249115==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0875249115==--
