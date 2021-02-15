Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1194831C16C
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Feb 2021 19:21:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9A1189F99;
	Mon, 15 Feb 2021 18:21:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 57CD7897F6;
 Mon, 15 Feb 2021 18:21:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 50673A8169;
 Mon, 15 Feb 2021 18:21:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>
Date: Mon, 15 Feb 2021 18:21:13 -0000
Message-ID: <161341327329.26464.15843788251552232441@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210215142137.64476-1-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20210215142137.64476-1-andriy.shevchenko@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv1=2C1/3=5D_string=3A_Consolidate_yesno=28?=
 =?utf-8?q?=29_helpers_under_string=2Eh_hood?=
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
Content-Type: multipart/mixed; boundary="===============1392645764=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1392645764==
Content-Type: multipart/alternative;
 boundary="===============2223363429450691063=="

--===============2223363429450691063==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v1,1/3] string: Consolidate yesno() helpers under string.h hood
URL   : https://patchwork.freedesktop.org/series/87096/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9776_full -> Patchwork_19680_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19680_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19680_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19680_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc.html

  
Known issues
------------

  Here are the changes found in Patchwork_19680_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_create@madvise:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-glk6/igt@gem_exec_create@madvise.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-glk3/igt@gem_exec_create@madvise.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][5] ([i915#2842])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][6] -> [FAIL][7] ([i915#2842])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_reloc@basic-many-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][8] ([i915#2389])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-iclb4/igt@gem_exec_reloc@basic-many-active@vcs1.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-apl6/igt@gem_softpin@noreloc-s3.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-apl2/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@huge-split:
    - shard-apl:          [PASS][11] -> [INCOMPLETE][12] ([i915#2502])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-apl4/igt@gem_userptr_blits@huge-split.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-apl6/igt@gem_userptr_blits@huge-split.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#198] / [i915#2295])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-skl6/igt@gem_workarounds@suspend-resume-context.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-skl10/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen3_mixed_blits:
    - shard-kbl:          NOTRUN -> [SKIP][15] ([fdo#109271]) +17 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-kbl4/igt@gen3_mixed_blits.html

  * igt@gen7_exec_parse@cmd-crossing-page:
    - shard-iclb:         NOTRUN -> [SKIP][16] ([fdo#109289])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-iclb3/igt@gen7_exec_parse@cmd-crossing-page.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-iclb:         NOTRUN -> [SKIP][17] ([fdo#109293] / [fdo#109506])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-iclb3/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_selftest@live@hangcheck:
    - shard-hsw:          [PASS][18] -> [INCOMPLETE][19] ([i915#2782])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-hsw2/igt@i915_selftest@live@hangcheck.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-hsw2/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][20] ([fdo#110725] / [fdo#111614])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-iclb3/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-apl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#2705])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-apl1/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_chamelium@dp-hpd-enable-disable-mode:
    - shard-skl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [fdo#111827])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-skl4/igt@kms_chamelium@dp-hpd-enable-disable-mode.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-75:
    - shard-kbl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-kbl4/igt@kms_color_chamelium@pipe-a-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-a-ctm-red-to-blue:
    - shard-iclb:         NOTRUN -> [SKIP][24] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-iclb3/igt@kms_color_chamelium@pipe-a-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-c-ctm-max:
    - shard-apl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-apl7/igt@kms_color_chamelium@pipe-c-ctm-max.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x170-random:
    - shard-iclb:         NOTRUN -> [SKIP][26] ([fdo#109278] / [fdo#109279]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-iclb3/igt@kms_cursor_crc@pipe-a-cursor-512x170-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#54]) +8 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x85-onscreen:
    - shard-iclb:         NOTRUN -> [SKIP][29] ([fdo#109278]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-iclb3/igt@kms_cursor_crc@pipe-d-cursor-256x85-onscreen.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#109274] / [fdo#109278])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-iclb3/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-skl:          NOTRUN -> [FAIL][31] ([i915#2346])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_flip@2x-blocking-wf_vblank:
    - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#109274]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-iclb3/igt@kms_flip@2x-blocking-wf_vblank.html

  * igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@a-edp1:
    - shard-skl:          [PASS][33] -> [DMESG-WARN][34] ([i915#1982])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-skl1/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@a-edp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-skl5/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#79])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
    - shard-skl:          [PASS][37] -> [INCOMPLETE][38] ([i915#198])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-skl8/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#2122]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_flip@plain-flip-ts-check@a-hdmi-a1:
    - shard-glk:          [PASS][41] -> [FAIL][42] ([i915#2122]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-glk6/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-glk3/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-kbl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#2642])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-kbl4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][44] ([fdo#109280]) +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
    - shard-skl:          NOTRUN -> [SKIP][45] ([fdo#109271]) +8 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-skl9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:
    - shard-apl:          NOTRUN -> [SKIP][46] ([fdo#109271]) +36 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-apl7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-apl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#533])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-apl7/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([fdo#108145] / [i915#265])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-apl:          NOTRUN -> [FAIL][50] ([fdo#108145] / [i915#265])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
    - shard-iclb:         NOTRUN -> [SKIP][51] ([i915#658])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
    - shard-apl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#658])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-apl7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([fdo#109441]) +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-iclb6/igt@kms_psr@psr2_primary_page_flip.html

  * igt@nouveau_crc@pipe-b-ctx-flip-detection:
    - shard-iclb:         NOTRUN -> [SKIP][55] ([i915#2530])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-iclb3/igt@nouveau_crc@pipe-b-ctx-flip-detection.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [PASS][56] -> [FAIL][57] ([i915#1542])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-glk9/igt@perf@polling-parameterized.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-glk6/igt@perf@polling-parameterized.html

  * igt@prime_nv_api@nv_i915_import_twice_check_flink_name:
    - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109291])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-iclb3/igt@prime_nv_api@nv_i915_import_twice_check_flink_name.html

  * igt@sysfs_clients@recycle:
    - shard-hsw:          [PASS][59] -> [FAIL][60] ([i915#3028])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-hsw5/igt@sysfs_clients@recycle.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-hsw2/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@sema-25@vecs0:
    - shard-skl:          [PASS][61] -> [SKIP][62] ([fdo#109271])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-skl9/igt@sysfs_clients@sema-25@vecs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-skl4/igt@sysfs_clients@sema-25@vecs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-kbl:          [TIMEOUT][63] ([i915#2918]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-kbl3/igt@gem_ctx_persistence@close-replace-race.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-kbl2/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [TIMEOUT][65] ([i915#1037] / [i915#2481]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-iclb6/igt@gem_eio@unwedge-stress.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-iclb8/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-iclb:         [FAIL][67] ([i915#2842]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-iclb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-iclb8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [FAIL][69] ([i915#2842]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-tglb:         [FAIL][71] ([i915#2842]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-tglb1/igt@gem_exec_fair@basic-pace@vecs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-tglb8/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [FAIL][73] ([i915#2842]) -> [PASS][74] +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html
    - shard-iclb:         [FAIL][75] ([i915#2849]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-glk:          [FAIL][77] ([i915#2389]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-glk2/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-glk6/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_schedule@u-fairslice-all:
    - shard-iclb:         [DMESG-WARN][79] ([i915#2803]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-iclb4/igt@gem_exec_schedule@u-fairslice-all.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-iclb3/igt@gem_exec_schedule@u-fairslice-all.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-hsw:          [WARN][81] ([i915#1519]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-hsw5/igt@i915_pm_rc6_residency@rc6-idle.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-hsw4/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [FAIL][83] ([i915#2574]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-tglb6/igt@kms_async_flips@test-time-stamp.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-tglb2/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-random:
    - shard-skl:          [FAIL][85] ([i915#54]) -> [PASS][86] +8 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-tglb:         [FAIL][87] ([i915#2346]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-tglb3/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
    - shard-skl:          [FAIL][89] ([i915#2346]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [INCOMPLETE][91] ([i915#155] / [i915#180] / [i915#636]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@dpms-off-confusion-interruptible@a-edp1:
    - shard-skl:          [DMESG-WARN][93] ([i915#1982]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-skl9/igt@kms_flip@dpms-off-confusion-interruptible@a-edp1.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-skl4/igt@kms_flip@dpms-off-confusion-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@c-edp1:
    - shard-skl:          [FAIL][95] ([i915#2122]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-skl3/igt@kms_flip@flip-vs-absolute-wf_vblank@c-edp1.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-skl3/igt@kms_flip@flip-vs-absolute-wf_vblank@c-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-tglb:         [FAIL][97] ([i915#2598]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-apl:          [DMESG-WARN][99] ([i915#180]) -> [PASS][100] +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][101] ([i915#1188]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-skl7/igt@kms_hdr@bpc-switch.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-skl5/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][103] ([fdo#108145] / [i915#265]) -> [PASS][104] +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][105] ([fdo#109441]) -> [PASS][106] +2 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@perf@blocking:
    - shard-skl:          [FAIL][107] ([i915#1542]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-skl9/igt@perf@blocking.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-skl7/igt@perf@blocking.html

  * {igt@sysfs_clients@recycle-many}:
    - shard-skl:          [FAIL][109] ([i915#3028]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-skl2/igt@sysfs_clients@recycle-many.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-skl7/igt@sysfs_clients@recycle-many.html
    - shard-tglb:         [FAIL][111] ([i915#3028]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-tglb2/igt@sysfs_clients@recycle-many.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-tglb3/igt@sysfs_clients@recycle-many.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][113] ([i915#1804] / [i915#2684]) -> [WARN][114] ([i915#2684])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_selftest@live@gt_pm:
    - shard-tglb:         [DMESG-FAIL][115] ([i915#1759] / [i915#2291]) -> [DMESG-FAIL][116] ([i915#2291])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-tglb5/igt@i915_selftest@live@gt_pm.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-tglb7/igt@i915_selftest@live@gt_pm.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][117] ([i915#1226]) -> [SKIP][118] ([fdo#109349])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][119] ([i915#2920]) -> [SKIP][120] ([i915#658]) +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
    - shard-iclb:         [SKIP][121] ([i915#658]) -> [SKIP][122] ([i915#2920])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-iclb6/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127]) ([i915#2295] / [i915#3002] / [i915#92]) -> ([FAIL][128], [FAIL][129], [FAIL][130]) ([i915#2295] / [i915#3002])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-kbl3/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-kbl3/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-kbl3/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-kbl4/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-kbl1/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-kbl2/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-kbl4/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-kbl2/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134]) ([i915#2295] / [i915#2426] / [i915#2724] / [i915#3002]) -> ([FAIL][135], [FAIL][136], [FAIL][137]) ([i915#2295] / [i915#2724] / [i915#3002])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-iclb1/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-iclb7/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-iclb3/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-iclb4/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-iclb1/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-iclb5/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-iclb5/igt@runner@aborted.html
    - shard-apl:          ([FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143]) ([i915#1610] / [i915#2292] / [i915#2295] / [i915#3002]) -> ([FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148]) ([fdo#109271] / [i915#1814] / [i915#2295] / [i915#3002])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-apl2/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-apl7/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-apl3/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-apl4/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-apl4/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-apl7/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-apl3/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-apl6/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-apl2/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-apl2/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-apl3/igt@runner@aborted.html

  
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
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1759]: https://gitlab.freedesktop.o

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/index.html

--===============2223363429450691063==
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
<tr><td><b>Series:</b></td><td>series starting with [v1,1/3] string: Consol=
idate yesno() helpers under string.h hood</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/87096/">https://patchwork.freedesktop.org/series/87096/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19680/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19680/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9776_full -&gt; Patchwork_19680_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19680_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19680_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19680_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc:<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-s=
hrfb-draw-mmap-wc.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19680/shard-tglb6/igt@kms_frontbuffer_tracking@ps=
r-1p-offscren-pri-shrfb-draw-mmap-wc.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19680_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_create@madvise:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-glk6/igt@gem_exec_create@madvise.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-glk=
3/igt@gem_exec_create@madvise.html">DMESG-WARN</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/118">i915#118</a> / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19680/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1=
.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_196=
80/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915=
#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19680/shard-iclb4/igt@gem_exec_reloc@basic-many-act=
ive@vcs1.html">FAIL</a> ([i915#2389])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-apl6/igt@gem_softpin@noreloc-s3.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-apl2=
/igt@gem_softpin@noreloc-s3.html">DMESG-WARN</a> ([i915#180]) +2 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@huge-split:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-apl4/igt@gem_userptr_blits@huge-split.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shar=
d-apl6/igt@gem_userptr_blits@huge-split.html">INCOMPLETE</a> ([i915#2502])<=
/li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-skl6/igt@gem_workarounds@suspend-resume-context.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19680/shard-skl10/igt@gem_workarounds@suspend-resume-context.html">INCOMPLE=
TE</a> ([i915#198] / [i915#2295])</li>
</ul>
</li>
<li>
<p>igt@gen3_mixed_blits:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19680/shard-kbl4/igt@gen3_mixed_blits.html">SKIP</a=
> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10=
9271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19680/shard-iclb3/igt@gen7_exec_parse@cmd-crossing-=
page.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19680/shard-iclb3/igt@i915_pm_rpm@gem-execbuf-stres=
s-pc8.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109293">fdo#109293</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-hsw2/igt@i915_selftest@live@hangcheck.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shar=
d-hsw2/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#2782])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19680/shard-iclb3/igt@kms_big_fb@y-tiled-64bpp-rota=
te-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D110725">fdo#110725</a> / <a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19680/shard-apl1/igt@kms_big_joiner@invalid-modeset=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19680/shard-skl4/igt@kms_chamelium@dp-hpd-enable-di=
sable-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19680/shard-kbl4/igt@kms_color_chamelium@pipe-a-ctm=
-0-75.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-red-to-blue:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19680/shard-iclb3/igt@kms_color_chamelium@pipe-a-ct=
m-red-to-blue.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19680/shard-apl7/igt@kms_color_chamelium@pipe-c-ctm=
-max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x170-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19680/shard-iclb3/igt@kms_cursor_crc@pipe-a-cursor-=
512x170-random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109279">fdo#109279</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19680/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html">F=
AIL</a> ([i915#54]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x85-onscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19680/shard-iclb3/igt@kms_cursor_crc@pipe-d-cursor-=
256x85-onscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109278">fdo#109278</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19680/shard-iclb3/igt@kms_cursor_legacy@2x-long-cur=
sor-vs-flip-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19680/shard-skl3/igt@kms_cursor_legacy@flip-vs-curs=
or-busy-crc-atomic.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19680/shard-iclb3/igt@kms_flip@2x-blocking-wf_vblan=
k.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109274">fdo#109274</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-skl1/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interrupti=
ble@a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19680/shard-skl5/igt@kms_flip@flip-vs-dpms-off-vs-modese=
t-interruptible@a-edp1.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19680/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interrup=
tible@a-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19680/shard-skl8/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.h=
tml">INCOMPLETE</a> ([i915#198])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@c=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19680/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interrup=
tible@c-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-glk6/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19680/shard-glk3/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html">FAIL</a> =
([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19680/shard-kbl4/igt@kms_flip_scaled_crc@flip-32bpp=
-ytileccs-to-64bpp-ytile.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19680/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +2 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19680/shard-skl9/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-pri-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19680/shard-apl7/igt@kms_frontbuffer_tracking@psr-r=
gb565-draw-pwrite.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a>) +36 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19680/shard-apl7/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d-frame-sequence.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19680/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-m=
in.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D108145">fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19680/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-7efc.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D108145">fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19680/shard-iclb3/igt@kms_psr2_sf@overlay-primary-u=
pdate-sf-dmg-area-1.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19680/shard-apl7/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-1.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/s=
hard-iclb6/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-detection:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19680/shard-iclb3/igt@nouveau_crc@pipe-b-ctx-flip-d=
etection.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-glk9/igt@perf@polling-parameterized.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-=
glk6/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@nv_i915_import_twice_check_flink_name:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19680/shard-iclb3/igt@prime_nv_api@nv_i915_import_t=
wice_check_flink_name.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-hsw5/igt@sysfs_clients@recycle.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-hsw2/=
igt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-skl9/igt@sysfs_clients@sema-25@vecs0.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard=
-skl4/igt@sysfs_clients@sema-25@vecs0.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@close-replace-race:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-kbl3/igt@gem_ctx_persistence@close-replace-race.html">TI=
MEOUT</a> ([i915#2918]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19680/shard-kbl2/igt@gem_ctx_persistence@close-replace-rac=
e.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-iclb6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a> =
/ [i915#2481]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19680/shard-iclb8/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-iclb6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19680/shard-iclb8/igt@gem_exec_fair@basic-pace-share@rcs0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([=
i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19680/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-tglb1/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19680/shard-tglb8/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9776/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a>=
 ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19680/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</=
a> +2 similar issues</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9776/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a=
> ([i915#2849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19680/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS=
</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-glk2/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAI=
L</a> ([i915#2389]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19680/shard-glk6/igt@gem_exec_reloc@basic-many-active@rcs0.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice-all:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-iclb4/igt@gem_exec_schedule@u-fairslice-all.html">DMESG-=
WARN</a> ([i915#2803]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19680/shard-iclb3/igt@gem_exec_schedule@u-fairslice-all.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-hsw5/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1519">i915#1519<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
680/shard-hsw4/igt@i915_pm_rc6_residency@rc6-idle.html">PASS</a> +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-tglb6/igt@kms_async_flips@test-time-stamp.html">FAIL</a>=
 ([i915#2574]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19680/shard-tglb2/igt@kms_async_flips@test-time-stamp.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.htm=
l">FAIL</a> ([i915#54]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19680/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x128-=
random.html">PASS</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-tglb3/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">=
FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19680/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-atom=
ic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legac=
y.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19680/shard-skl7/igt@kms_cursor_legacy@flip-vs-curs=
or-busy-crc-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</=
a> / [i915#180] / [i915#636]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19680/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-off-confusion-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-skl9/igt@kms_flip@dpms-off-confusion-interruptible@a-edp=
1.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_19680/shard-skl4/igt@kms_flip@dpms-off-confus=
ion-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-skl3/igt@kms_flip@flip-vs-absolute-wf_vblank@c-edp1.html=
">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19680/shard-skl3/igt@kms_flip@flip-vs-absolute-wf_vblank@=
c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">F=
AIL</a> ([i915#2598]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19680/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank@a-edp1=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19680/shard-apl7/igt@kms_flip@flip-vs-suspend-inte=
rruptible@a-dp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-skl7/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-sk=
l5/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / [i915#265]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19680/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-=
coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9680/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> +2 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-skl9/igt@perf@blocking.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-skl7/ig=
t@perf@blocking.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@recycle-many}:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9776/shard-skl2/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915=
#3028]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19680/shard-skl7/igt@sysfs_clients@recycle-many.html">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9776/shard-tglb2/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i91=
5#3028]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19680/shard-tglb3/igt@sysfs_clients@recycle-many.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 ([i915#1804] / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19680/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence=
.html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-tglb5/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.o">i915#1759</a> / [i915#2291]) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard=
-tglb7/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> ([i915#2291])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1226">i9=
15#1226</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19680/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109349">fdo#1093=
49</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4=
.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19680/shard-iclb6/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-4.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-3:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-iclb6/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html">SKI=
P</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19680/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html=
">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-kbl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9776/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-kbl4/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_97=
76/shard-kbl1/igt@runner@aborted.html">FAIL</a>) ([i915#2295] / [i915#3002]=
 / [i915#92]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19680/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-kbl4/igt@runner@=
aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19680/shard-kbl2/igt@runner@aborted.html">FAIL</a>) ([i915#2295]=
 / [i915#3002])</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-iclb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-iclb7/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9776/shard-iclb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-iclb4/igt@runner@aborte=
d.html">FAIL</a>) ([i915#2295] / [i915#2426] / [i915#2724] / [i915#3002]) -=
&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/s=
hard-iclb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_19680/shard-iclb5/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
680/shard-iclb5/igt@runner@aborted.html">FAIL</a>) ([i915#2295] / [i915#272=
4] / [i915#3002])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9776/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-apl7/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9776/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-apl4/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_97=
76/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_9776/shard-apl7/igt@runner@aborted.html">F=
AIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">=
i915#1610</a> / [i915#2292] / [i915#2295] / [i915#3002]) -&gt; (<a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-apl3/igt@run=
ner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19680/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-apl2/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19680/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19680/shard-apl3/=
igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#1814] / [i915#2295] / [i9=
15#3002])</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============2223363429450691063==--

--===============1392645764==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1392645764==--
