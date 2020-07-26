Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F8E22DC5F
	for <lists+intel-gfx@lfdr.de>; Sun, 26 Jul 2020 08:56:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1A356E0BC;
	Sun, 26 Jul 2020 06:56:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 33D216E0BC;
 Sun, 26 Jul 2020 06:56:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2E27AA363B;
 Sun, 26 Jul 2020 06:56:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bhanuprakash Modem" <bhanuprakash.modem@intel.com>
Date: Sun, 26 Jul 2020 06:56:24 -0000
Message-ID: <159574658417.29008.1569441866107168979@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200726130400.10160-1-bhanuprakash.modem@intel.com>
In-Reply-To: <20200726130400.10160-1-bhanuprakash.modem@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRXhw?=
 =?utf-8?q?ose_crtc_dither_state_and_connector_max_bpc_via_debugfs_=28rev3?=
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
Content-Type: multipart/mixed; boundary="===============1855773524=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1855773524==
Content-Type: multipart/alternative;
 boundary="===============3343288270052872721=="

--===============3343288270052872721==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Expose crtc dither state and connector max bpc via debugfs (rev3)
URL   : https://patchwork.freedesktop.org/series/79664/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8786_full -> Patchwork_18243_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18243_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18243_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18243_full:

### IGT changes ###

#### Possible regressions ####

  * {igt@kms_dither@fb-10bpc-vs-panel-8bpc@dp-1-pipe-a} (NEW):
    - shard-kbl:          NOTRUN -> [FAIL][1] +5 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-kbl4/igt@kms_dither@fb-10bpc-vs-panel-8bpc@dp-1-pipe-a.html

  * {igt@kms_dither@fb-10bpc-vs-panel-8bpc@edp-1-pipe-a} (NEW):
    - shard-skl:          NOTRUN -> [FAIL][2] +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl6/igt@kms_dither@fb-10bpc-vs-panel-8bpc@edp-1-pipe-a.html

  * {igt@kms_dither@fb-16bpc-vs-panel-10bpc} (NEW):
    - shard-iclb:         NOTRUN -> [SKIP][3] +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-iclb5/igt@kms_dither@fb-16bpc-vs-panel-10bpc.html

  * {igt@kms_dither@fb-16bpc-vs-panel-6bpc@hdmi-a-1-pipe-a} (NEW):
    - shard-hsw:          NOTRUN -> [FAIL][4] +7 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-hsw4/igt@kms_dither@fb-16bpc-vs-panel-6bpc@hdmi-a-1-pipe-a.html

  * {igt@kms_dither@fb-16bpc-vs-panel-8bpc@edp-1-pipe-a} (NEW):
    - shard-iclb:         NOTRUN -> [FAIL][5] +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-iclb4/igt@kms_dither@fb-16bpc-vs-panel-8bpc@edp-1-pipe-a.html

  * {igt@kms_dither@fb-8bpc-vs-panel-6bpc@edp-1-pipe-a} (NEW):
    - shard-tglb:         NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-tglb3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@edp-1-pipe-a.html

  * {igt@kms_dither@fb-8bpc-vs-panel-8bpc} (NEW):
    - shard-tglb:         NOTRUN -> [SKIP][7] +5 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-tglb6/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * {igt@kms_dither@fb-8bpc-vs-panel-8bpc@hdmi-a-1-pipe-a} (NEW):
    - shard-glk:          NOTRUN -> [FAIL][8] +7 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-glk4/igt@kms_dither@fb-8bpc-vs-panel-8bpc@hdmi-a-1-pipe-a.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-skl:          [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl8/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8786_full and Patchwork_18243_full:

### New IGT tests (33) ###

  * igt@kms_dither@fb-10bpc-vs-panel-10bpc:
    - Statuses : 4 skip(s)
    - Exec time: [0.0, 0.01] s

  * igt@kms_dither@fb-10bpc-vs-panel-10bpc@dp-1-pipe-a:
    - Statuses : 2 pass(s)
    - Exec time: [0.16, 0.19] s

  * igt@kms_dither@fb-10bpc-vs-panel-10bpc@hdmi-a-1-pipe-a:
    - Statuses : 2 pass(s)
    - Exec time: [0.10, 0.46] s

  * igt@kms_dither@fb-10bpc-vs-panel-6bpc:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_dither@fb-10bpc-vs-panel-6bpc@dp-1-pipe-a:
    - Statuses : 2 pass(s)
    - Exec time: [0.17, 0.19] s

  * igt@kms_dither@fb-10bpc-vs-panel-6bpc@edp-1-pipe-a:
    - Statuses : 2 pass(s)
    - Exec time: [1.46, 1.49] s

  * igt@kms_dither@fb-10bpc-vs-panel-6bpc@hdmi-a-1-pipe-a:
    - Statuses : 2 fail(s)
    - Exec time: [0.09] s

  * igt@kms_dither@fb-10bpc-vs-panel-8bpc:
    - Statuses : 2 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_dither@fb-10bpc-vs-panel-8bpc@dp-1-pipe-a:
    - Statuses : 2 fail(s)
    - Exec time: [0.15, 0.26] s

  * igt@kms_dither@fb-10bpc-vs-panel-8bpc@edp-1-pipe-a:
    - Statuses : 2 fail(s)
    - Exec time: [1.18, 1.38] s

  * igt@kms_dither@fb-10bpc-vs-panel-8bpc@hdmi-a-1-pipe-a:
    - Statuses : 2 fail(s)
    - Exec time: [0.08, 0.34] s

  * igt@kms_dither@fb-16bpc-vs-panel-10bpc:
    - Statuses : 4 skip(s)
    - Exec time: [0.0, 0.01] s

  * igt@kms_dither@fb-16bpc-vs-panel-10bpc@dp-1-pipe-a:
    - Statuses : 2 fail(s)
    - Exec time: [0.15, 0.26] s

  * igt@kms_dither@fb-16bpc-vs-panel-10bpc@hdmi-a-1-pipe-a:
    - Statuses : 2 fail(s)
    - Exec time: [0.08, 0.36] s

  * igt@kms_dither@fb-16bpc-vs-panel-6bpc:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_dither@fb-16bpc-vs-panel-6bpc@dp-1-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [0.21] s

  * igt@kms_dither@fb-16bpc-vs-panel-6bpc@edp-1-pipe-a:
    - Statuses : 3 pass(s)
    - Exec time: [1.44, 1.73] s

  * igt@kms_dither@fb-16bpc-vs-panel-6bpc@hdmi-a-1-pipe-a:
    - Statuses : 2 fail(s)
    - Exec time: [0.08] s

  * igt@kms_dither@fb-16bpc-vs-panel-8bpc:
    - Statuses : 2 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_dither@fb-16bpc-vs-panel-8bpc@dp-1-pipe-a:
    - Statuses : 2 fail(s)
    - Exec time: [0.17, 0.20] s

  * igt@kms_dither@fb-16bpc-vs-panel-8bpc@edp-1-pipe-a:
    - Statuses : 2 fail(s)
    - Exec time: [1.16, 1.50] s

  * igt@kms_dither@fb-16bpc-vs-panel-8bpc@hdmi-a-1-pipe-a:
    - Statuses : 2 fail(s)
    - Exec time: [0.16, 0.35] s

  * igt@kms_dither@fb-8bpc-vs-panel-10bpc:
    - Statuses : 4 skip(s)
    - Exec time: [0.0, 0.01] s

  * igt@kms_dither@fb-8bpc-vs-panel-10bpc@dp-1-pipe-a:
    - Statuses : 2 fail(s)
    - Exec time: [0.01, 0.09] s

  * igt@kms_dither@fb-8bpc-vs-panel-10bpc@hdmi-a-1-pipe-a:
    - Statuses : 2 fail(s)
    - Exec time: [0.02, 0.11] s

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@dp-1-pipe-a:
    - Statuses : 2 fail(s)
    - Exec time: [0.02, 0.07] s

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@edp-1-pipe-a:
    - Statuses : 3 fail(s)
    - Exec time: [0.01, 0.06] s

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@hdmi-a-1-pipe-a:
    - Statuses : 2 fail(s)
    - Exec time: [0.02, 0.06] s

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - Statuses : 2 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc@dp-1-pipe-a:
    - Statuses : 2 fail(s)
    - Exec time: [0.01, 0.02] s

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a:
    - Statuses : 2 fail(s)
    - Exec time: [0.01, 0.08] s

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc@hdmi-a-1-pipe-a:
    - Statuses : 2 fail(s)
    - Exec time: [0.01, 0.02] s

  

Known issues
------------

  Here are the changes found in Patchwork_18243_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#165])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-kbl3/igt@gem_softpin@noreloc-s3.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-kbl1/igt@gem_softpin@noreloc-s3.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
    - shard-tglb:         [PASS][13] -> [DMESG-WARN][14] ([i915#402]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#300])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-glk7/igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-glk9/igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible@ab-vga1-hdmi-a1:
    - shard-hsw:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-hsw4/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible@ab-vga1-hdmi-a1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-hsw6/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +7 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +62 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl9/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl1/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_frontbuffer_tracking@basic:
    - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#1635] / [i915#1982]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-apl4/igt@kms_frontbuffer_tracking@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-apl3/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack:
    - shard-tglb:         [PASS][27] -> [DMESG-WARN][28] ([i915#1982]) +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#1982])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#1188])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][33] -> [INCOMPLETE][34] ([i915#155] / [i915#648])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-iclb7/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_universal_plane@disable-primary-vs-flip-pipe-c:
    - shard-skl:          [PASS][37] -> [SKIP][38] ([fdo#109271]) +13 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl1/igt@kms_universal_plane@disable-primary-vs-flip-pipe-c.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl2/igt@kms_universal_plane@disable-primary-vs-flip-pipe-c.html

  * igt@kms_vblank@pipe-b-wait-idle-hang:
    - shard-hsw:          [PASS][39] -> [TIMEOUT][40] ([i915#1958] / [i915#2119])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-hsw1/igt@kms_vblank@pipe-b-wait-idle-hang.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-hsw6/igt@kms_vblank@pipe-b-wait-idle-hang.html
    - shard-snb:          [PASS][41] -> [TIMEOUT][42] ([i915#1958] / [i915#2119])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-snb1/igt@kms_vblank@pipe-b-wait-idle-hang.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-snb5/igt@kms_vblank@pipe-b-wait-idle-hang.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@engines@bcs0:
    - shard-tglb:         [INCOMPLETE][43] -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-tglb8/igt@gem_exec_gttfill@engines@bcs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-tglb3/igt@gem_exec_gttfill@engines@bcs0.html

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-glk:          [DMESG-WARN][45] ([i915#118] / [i915#95]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-glk3/igt@gem_exec_whisper@basic-fds-forked.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-glk1/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-skl:          [INCOMPLETE][47] ([i915#198]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl2/igt@gem_workarounds@suspend-resume-fd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl5/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_getparams_basic@basic-subslice-total:
    - shard-hsw:          [TIMEOUT][49] ([i915#1958] / [i915#2119]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-hsw6/igt@i915_getparams_basic@basic-subslice-total.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-hsw6/igt@i915_getparams_basic@basic-subslice-total.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglb:         [DMESG-WARN][51] ([i915#402]) -> [PASS][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-tglb1/igt@i915_module_load@reload-with-fault-injection.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-tglb5/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][53] ([i915#454]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
    - shard-skl:          [FAIL][55] ([i915#454]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl10/igt@i915_pm_dc@dc6-psr.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [INCOMPLETE][57] ([i915#636]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl2/igt@i915_suspend@forcewake.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl1/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][59] ([i915#118] / [i915#95]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-glk7/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-bottom-edge:
    - shard-glk:          [DMESG-WARN][61] ([i915#1982]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-glk4/igt@kms_cursor_edge_walk@pipe-b-256x256-bottom-edge.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-glk6/igt@kms_cursor_edge_walk@pipe-b-256x256-bottom-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
    - shard-glk:          [FAIL][63] ([i915#1566]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-xtiled:
    - shard-kbl:          [DMESG-WARN][65] ([i915#1982]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-kbl6/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-xtiled.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-kbl1/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-xtiled.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a1:
    - shard-hsw:          [INCOMPLETE][67] ([i915#2055]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-hsw4/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-hsw2/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][69] ([i915#1188]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-skl:          [SKIP][71] ([fdo#109271]) -> [PASS][72] +3 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl2/igt@kms_panel_fitting@atomic-fastset.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl6/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +4 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][75] ([fdo#108145] / [i915#265]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [DMESG-FAIL][77] ([fdo#108145] / [i915#1982]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-128:
    - shard-skl:          [DMESG-WARN][79] ([i915#1982]) -> [PASS][80] +61 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl1/igt@kms_plane_cursor@pipe-a-viewport-size-128.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl5/igt@kms_plane_cursor@pipe-a-viewport-size-128.html

  * igt@kms_psr@psr2_primary_render:
    - shard-iclb:         [SKIP][81] ([fdo#109441]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-iclb4/igt@kms_psr@psr2_primary_render.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-iclb2/igt@kms_psr@psr2_primary_render.html

  * igt@perf@polling-parameterized:
    - shard-iclb:         [FAIL][83] ([i915#1542]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-iclb7/igt@perf@polling-parameterized.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-iclb1/igt@perf@polling-parameterized.html

  * igt@perf_pmu@module-unload:
    - shard-tglb:         [DMESG-WARN][85] ([i915#1982]) -> [PASS][86] +3 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-tglb2/igt@perf_pmu@module-unload.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-tglb3/igt@perf_pmu@module-unload.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [FAIL][87] ([i915#1930]) -> [TIMEOUT][88] ([i915#1958] / [i915#2119])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][89] ([i915#588]) -> [SKIP][90] ([i915#658])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-90:
    - shard-hsw:          [TIMEOUT][91] ([i915#1958] / [i915#2119]) -> [SKIP][92] ([fdo#109271]) +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-hsw6/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-hsw8/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html

  * igt@kms_ccs@pipe-c-crc-primary-basic:
    - shard-skl:          [SKIP][93] ([fdo#109271]) -> [SKIP][94] ([fdo#109271] / [fdo#111304])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl2/igt@kms_ccs@pipe-c-crc-primary-basic.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl4/igt@kms_ccs@pipe-c-crc-primary-basic.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render:
    - shard-hsw:          [SKIP][95] ([fdo#109271]) -> [TIMEOUT][96] ([i915#1958] / [i915#2119]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-hsw8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-hsw6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html

  * igt@kms_plane@plane-position-covered-pipe-c-planes:
    - shard-skl:          [SKIP][97] ([fdo#109271]) -> [DMESG-WARN][98] ([i915#1982])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl2/igt@kms_plane@plane-position-covered-pipe-c-planes.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl10/igt@kms_plane@plane-position-covered-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          [DMESG-FAIL][99] ([fdo#108145] / [i915#1982]) -> [FAIL][100] ([fdo#108145] / [i915#265]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-skl:          [FAIL][101] ([fdo#108145] / [i915#265]) -> [SKIP][102] ([fdo#109271])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-skl:          [FAIL][103] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][104] ([fdo#108145] / [i915#1982])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][105] ([fdo#108145] / [i915#265]) -> [DMESG-WARN][106] ([i915#1982])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-snb:          [SKIP][107] ([fdo#109271]) -> [TIMEOUT][108] ([i915#1958] / [i915#2119]) +4 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-snb4/igt@kms_psr@psr2_no_drrs.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-snb5/igt@kms_psr@psr2_no_drrs.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111304]: https://bugs.freedesktop.org/show_bug.cgi?id=111304
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1566]: https://gitlab.freedesktop.org/drm/intel/issues/1566
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * IGT: IGT_5747 -> IGTPW_4803
  * Linux: CI_DRM_8786 -> Patchwork_18243

  CI-20190529: 20190529
  CI_DRM_8786: e9ecbe8de4e7e7c08363c1ecaaee9270b9c6f2ec @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_4803: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4803/index.html
  IGT_5747: 6980775bcadec862cd5e5affd65928ef79e5b580 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18243: 051cfceeae4d6336b8a63df49a470e055e6a59d5 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/index.html

--===============3343288270052872721==
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
<tr><td><b>Series:</b></td><td>Expose crtc dither state and connector max bpc via debugfs (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/79664/">https://patchwork.freedesktop.org/series/79664/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8786_full -&gt; Patchwork_18243_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18243_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18243_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18243_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>{igt@kms_dither@fb-10bpc-vs-panel-8bpc@dp-1-pipe-a} (NEW):</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-kbl4/igt@kms_dither@fb-10bpc-vs-panel-8bpc@dp-1-pipe-a.html">FAIL</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_dither@fb-10bpc-vs-panel-8bpc@edp-1-pipe-a} (NEW):</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl6/igt@kms_dither@fb-10bpc-vs-panel-8bpc@edp-1-pipe-a.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_dither@fb-16bpc-vs-panel-10bpc} (NEW):</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-iclb5/igt@kms_dither@fb-16bpc-vs-panel-10bpc.html">SKIP</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_dither@fb-16bpc-vs-panel-6bpc@hdmi-a-1-pipe-a} (NEW):</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-hsw4/igt@kms_dither@fb-16bpc-vs-panel-6bpc@hdmi-a-1-pipe-a.html">FAIL</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_dither@fb-16bpc-vs-panel-8bpc@edp-1-pipe-a} (NEW):</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-iclb4/igt@kms_dither@fb-16bpc-vs-panel-8bpc@edp-1-pipe-a.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_dither@fb-8bpc-vs-panel-6bpc@edp-1-pipe-a} (NEW):</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-tglb3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@edp-1-pipe-a.html">FAIL</a></li>
</ul>
</li>
<li>
<p>{igt@kms_dither@fb-8bpc-vs-panel-8bpc} (NEW):</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-tglb6/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">SKIP</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_dither@fb-8bpc-vs-panel-8bpc@hdmi-a-1-pipe-a} (NEW):</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-glk4/igt@kms_dither@fb-8bpc-vs-panel-8bpc@hdmi-a-1-pipe-a.html">FAIL</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl8/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_8786_full and Patchwork_18243_full:</p>
<h3>New IGT tests (33)</h3>
<ul>
<li>
<p>igt@kms_dither@fb-10bpc-vs-panel-10bpc:</p>
<ul>
<li>Statuses : 4 skip(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-10bpc-vs-panel-10bpc@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.16, 0.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-10bpc-vs-panel-10bpc@hdmi-a-1-pipe-a:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.10, 0.46] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-10bpc-vs-panel-6bpc:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-10bpc-vs-panel-6bpc@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.17, 0.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-10bpc-vs-panel-6bpc@edp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [1.46, 1.49] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-10bpc-vs-panel-6bpc@hdmi-a-1-pipe-a:</p>
<ul>
<li>Statuses : 2 fail(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-10bpc-vs-panel-8bpc:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-10bpc-vs-panel-8bpc@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 fail(s)</li>
<li>Exec time: [0.15, 0.26] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-10bpc-vs-panel-8bpc@edp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 fail(s)</li>
<li>Exec time: [1.18, 1.38] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-10bpc-vs-panel-8bpc@hdmi-a-1-pipe-a:</p>
<ul>
<li>Statuses : 2 fail(s)</li>
<li>Exec time: [0.08, 0.34] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-16bpc-vs-panel-10bpc:</p>
<ul>
<li>Statuses : 4 skip(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-16bpc-vs-panel-10bpc@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 fail(s)</li>
<li>Exec time: [0.15, 0.26] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-16bpc-vs-panel-10bpc@hdmi-a-1-pipe-a:</p>
<ul>
<li>Statuses : 2 fail(s)</li>
<li>Exec time: [0.08, 0.36] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-16bpc-vs-panel-6bpc:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-16bpc-vs-panel-6bpc@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-16bpc-vs-panel-6bpc@edp-1-pipe-a:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.44, 1.73] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-16bpc-vs-panel-6bpc@hdmi-a-1-pipe-a:</p>
<ul>
<li>Statuses : 2 fail(s)</li>
<li>Exec time: [0.08] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-16bpc-vs-panel-8bpc:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-16bpc-vs-panel-8bpc@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 fail(s)</li>
<li>Exec time: [0.17, 0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-16bpc-vs-panel-8bpc@edp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 fail(s)</li>
<li>Exec time: [1.16, 1.50] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-16bpc-vs-panel-8bpc@hdmi-a-1-pipe-a:</p>
<ul>
<li>Statuses : 2 fail(s)</li>
<li>Exec time: [0.16, 0.35] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-10bpc:</p>
<ul>
<li>Statuses : 4 skip(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-10bpc@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 fail(s)</li>
<li>Exec time: [0.01, 0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-10bpc@hdmi-a-1-pipe-a:</p>
<ul>
<li>Statuses : 2 fail(s)</li>
<li>Exec time: [0.02, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 fail(s)</li>
<li>Exec time: [0.02, 0.07] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@edp-1-pipe-a:</p>
<ul>
<li>Statuses : 3 fail(s)</li>
<li>Exec time: [0.01, 0.06] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@hdmi-a-1-pipe-a:</p>
<ul>
<li>Statuses : 2 fail(s)</li>
<li>Exec time: [0.02, 0.06] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 fail(s)</li>
<li>Exec time: [0.01, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 fail(s)</li>
<li>Exec time: [0.01, 0.08] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc@hdmi-a-1-pipe-a:</p>
<ul>
<li>Statuses : 2 fail(s)</li>
<li>Exec time: [0.01, 0.02] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18243_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-kbl3/igt@gem_softpin@noreloc-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-kbl1/igt@gem_softpin@noreloc-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/300">i915#300</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-glk7/igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-glk9/igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-hsw4/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible@ab-vga1-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-hsw6/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible@ab-vga1-hdmi-a1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl9/igt@kms_flip@flip-vs-suspend@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl1/igt@kms_flip@flip-vs-suspend@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +62 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-apl4/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-apl3/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/648">i915#648</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-iclb7/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip-pipe-c:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl1/igt@kms_universal_plane@disable-primary-vs-flip-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl2/igt@kms_universal_plane@disable-primary-vs-flip-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-wait-idle-hang:</p>
<ul>
<li>
<p>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-hsw1/igt@kms_vblank@pipe-b-wait-idle-hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-hsw6/igt@kms_vblank@pipe-b-wait-idle-hang.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>)</p>
</li>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-snb1/igt@kms_vblank@pipe-b-wait-idle-hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-snb5/igt@kms_vblank@pipe-b-wait-idle-hang.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@engines@bcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-tglb8/igt@gem_exec_gttfill@engines@bcs0.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-tglb3/igt@gem_exec_gttfill@engines@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-glk3/igt@gem_exec_whisper@basic-fds-forked.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-glk1/igt@gem_exec_whisper@basic-fds-forked.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl2/igt@gem_workarounds@suspend-resume-fd.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl5/igt@gem_workarounds@suspend-resume-fd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_getparams_basic@basic-subslice-total:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-hsw6/igt@i915_getparams_basic@basic-subslice-total.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-hsw6/igt@i915_getparams_basic@basic-subslice-total.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-tglb1/igt@i915_module_load@reload-with-fault-injection.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-tglb5/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-iclb2/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-iclb6/igt@i915_pm_dc@dc6-psr.html">PASS</a></p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl10/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl3/igt@i915_pm_dc@dc6-psr.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl2/igt@i915_suspend@forcewake.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/636">i915#636</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl1/igt@i915_suspend@forcewake.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-glk7/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-bottom-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-glk4/igt@kms_cursor_edge_walk@pipe-b-256x256-bottom-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-glk6/igt@kms_cursor_edge_walk@pipe-b-256x256-bottom-edge.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1566">i915#1566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-xtiled:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-kbl6/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-xtiled.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-kbl1/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-xtiled.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-hsw4/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2055">i915#2055</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-hsw2/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl2/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl6/igt@kms_panel_fitting@atomic-fastset.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-viewport-size-128:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl1/igt@kms_plane_cursor@pipe-a-viewport-size-128.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl5/igt@kms_plane_cursor@pipe-a-viewport-size-128.html">PASS</a> +61 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-iclb4/igt@kms_psr@psr2_primary_render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-iclb2/igt@kms_psr@psr2_primary_render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-iclb7/igt@perf@polling-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-iclb1/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-tglb2/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-tglb3/igt@perf_pmu@module-unload.html">PASS</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-concurrent16:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1930">i915#1930</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-hsw6/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-hsw8/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl2/igt@kms_ccs@pipe-c-crc-primary-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl4/igt@kms_ccs@pipe-c-crc-primary-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111304">fdo#111304</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-hsw8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-hsw6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered-pipe-c-planes:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl2/igt@kms_plane@plane-position-covered-pipe-c-planes.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl10/igt@kms_plane@plane-position-covered-pipe-c-planes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8786/shard-snb4/igt@kms_psr@psr2_no_drrs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18243/shard-snb5/igt@kms_psr@psr2_no_drrs.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>) +4 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_5747 -&gt; IGTPW_4803</li>
<li>Linux: CI_DRM_8786 -&gt; Patchwork_18243</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8786: e9ecbe8de4e7e7c08363c1ecaaee9270b9c6f2ec @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_4803: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4803/index.html<br />
  IGT_5747: 6980775bcadec862cd5e5affd65928ef79e5b580 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18243: 051cfceeae4d6336b8a63df49a470e055e6a59d5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============3343288270052872721==--

--===============1855773524==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1855773524==--
