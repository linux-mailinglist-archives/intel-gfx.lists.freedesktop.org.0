Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DABD723F1BC
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 19:10:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 373806E0E1;
	Fri,  7 Aug 2020 17:10:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 525C16E0E1;
 Fri,  7 Aug 2020 17:10:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4B5F2A47EA;
 Fri,  7 Aug 2020 17:10:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Karthik B S" <karthik.b.s@intel.com>
Date: Fri, 07 Aug 2020 17:10:20 -0000
Message-ID: <159682022027.26557.10637643954480883883@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200807093551.10673-1-karthik.b.s@intel.com>
In-Reply-To: <20200807093551.10673-1-karthik.b.s@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgQXN5?=
 =?utf-8?q?nchronous_flip_implementation_for_i915_=28rev6=29?=
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
Content-Type: multipart/mixed; boundary="===============0867068419=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0867068419==
Content-Type: multipart/alternative;
 boundary="===============7164135247766959982=="

--===============7164135247766959982==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Asynchronous flip implementation for i915 (rev6)
URL   : https://patchwork.freedesktop.org/series/74386/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8856_full -> Patchwork_18320_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18320_full:

### IGT changes ###

#### Possible regressions ####

  * {igt@kms_async_flips@async-flip-with-page-flip-events} (NEW):
    - shard-kbl:          NOTRUN -> [FAIL][1] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-kbl2/igt@kms_async_flips@async-flip-with-page-flip-events.html
    - shard-glk:          NOTRUN -> [FAIL][2] +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-glk5/igt@kms_async_flips@async-flip-with-page-flip-events.html

  * {igt@kms_async_flips@test-time-stamp} (NEW):
    - shard-skl:          NOTRUN -> [FAIL][3] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl4/igt@kms_async_flips@test-time-stamp.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8856_full and Patchwork_18320_full:

### New IGT tests (3) ###

  * igt@kms_async_flips@async-flip-with-page-flip-events:
    - Statuses : 3 fail(s) 3 pass(s) 2 skip(s)
    - Exec time: [0.0, 3.00] s

  * igt@kms_async_flips@async-flip-without-page-flip-events:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 3.00] s

  * igt@kms_async_flips@test-time-stamp:
    - Statuses : 4 fail(s) 2 pass(s) 2 skip(s)
    - Exec time: [0.0, 0.34] s

  

Known issues
------------

  Here are the changes found in Patchwork_18320_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-queues-all:
    - shard-glk:          [PASS][4] -> [DMESG-WARN][5] ([i915#118] / [i915#95])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-glk3/igt@gem_exec_whisper@basic-queues-all.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-glk5/igt@gem_exec_whisper@basic-queues-all.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-snb:          [PASS][6] -> [DMESG-WARN][7] ([i915#42])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-snb6/igt@gem_workarounds@suspend-resume-fd.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-snb1/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_atomic_interruptible@legacy-dpms:
    - shard-snb:          [PASS][8] -> [SKIP][9] ([fdo#109271])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-snb1/igt@kms_atomic_interruptible@legacy-dpms.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-snb4/igt@kms_atomic_interruptible@legacy-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][10] -> [DMESG-WARN][11] ([i915#180]) +9 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-random:
    - shard-skl:          [PASS][12] -> [SKIP][13] ([fdo#109271]) +18 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:
    - shard-skl:          [PASS][14] -> [DMESG-WARN][15] ([i915#1982]) +45 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl6/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl8/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - shard-tglb:         [PASS][16] -> [DMESG-WARN][17] ([i915#1982]) +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-tglb3/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-tglb1/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][18] -> [INCOMPLETE][19] ([i915#155])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][20] -> [FAIL][21] ([i915#1188])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl1/igt@kms_hdr@bpc-switch.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl9/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c:
    - shard-skl:          [PASS][22] -> [FAIL][23] ([i915#53])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl5/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl7/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-skl:          [PASS][24] -> [INCOMPLETE][25] ([i915#198])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@cursor_mmap_gtt:
    - shard-skl:          [PASS][26] -> [CRASH][27] ([i915#2212])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl4/igt@kms_psr@cursor_mmap_gtt.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl1/igt@kms_psr@cursor_mmap_gtt.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][28] -> [SKIP][29] ([fdo#109441]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-iclb1/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-tglb:         [PASS][30] -> [INCOMPLETE][31] ([i915#1602] / [i915#1887] / [i915#456])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-tglb1/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-tglb1/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-b-wait-forked-hang:
    - shard-apl:          [PASS][32] -> [DMESG-WARN][33] ([i915#1635] / [i915#1982])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-apl3/igt@kms_vblank@pipe-b-wait-forked-hang.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-apl8/igt@kms_vblank@pipe-b-wait-forked-hang.html

  * igt@prime_busy@hang-wait@bcs0:
    - shard-hsw:          [PASS][34] -> [FAIL][35] ([i915#2258]) +6 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-hsw8/igt@prime_busy@hang-wait@bcs0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-hsw8/igt@prime_busy@hang-wait@bcs0.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@bonded-early:
    - shard-kbl:          [FAIL][36] ([i915#2079]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-kbl6/igt@gem_exec_balancer@bonded-early.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-kbl2/igt@gem_exec_balancer@bonded-early.html

  * igt@gem_sync@basic-all:
    - shard-glk:          [DMESG-WARN][38] ([i915#118] / [i915#95]) -> [PASS][39] +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-glk1/igt@gem_sync@basic-all.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-glk1/igt@gem_sync@basic-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [FAIL][40] ([i915#454]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl9/igt@i915_pm_dc@dc6-psr.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-skl:          [DMESG-WARN][42] ([i915#1982]) -> [PASS][43] +32 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl6/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl8/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-apl:          [DMESG-WARN][44] ([i915#1635] / [i915#1982]) -> [PASS][45] +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-apl4/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-apl3/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_cursor_legacy@pipe-c-torture-move:
    - shard-tglb:         [DMESG-WARN][46] ([i915#128]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-tglb2/igt@kms_cursor_legacy@pipe-c-torture-move.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-tglb6/igt@kms_cursor_legacy@pipe-c-torture-move.html

  * igt@kms_draw_crc@fill-fb:
    - shard-skl:          [FAIL][48] ([i915#52]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl9/igt@kms_draw_crc@fill-fb.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl4/igt@kms_draw_crc@fill-fb.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:
    - shard-apl:          [FAIL][50] ([i915#1635] / [i915#79]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
    - shard-skl:          [INCOMPLETE][52] -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc:
    - shard-iclb:         [DMESG-WARN][54] ([i915#1982]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render:
    - shard-kbl:          [DMESG-WARN][56] ([i915#1982]) -> [PASS][57] +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:
    - shard-glk:          [FAIL][58] ([i915#49]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc:
    - shard-tglb:         [DMESG-WARN][60] ([i915#1982]) -> [PASS][61] +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-skl:          [FAIL][62] ([i915#49]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-skl:          [DMESG-FAIL][64] ([i915#1982] / [i915#83]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl4/igt@kms_panel_fitting@atomic-fastset.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl7/igt@kms_panel_fitting@atomic-fastset.html
    - shard-iclb:         [FAIL][66] ([i915#83]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-iclb6/igt@kms_panel_fitting@atomic-fastset.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-iclb8/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_plane@plane-position-hole-dpms-pipe-a-planes:
    - shard-skl:          [SKIP][68] ([fdo#109271]) -> [PASS][69] +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl4/igt@kms_plane@plane-position-hole-dpms-pipe-a-planes.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl2/igt@kms_plane@plane-position-hole-dpms-pipe-a-planes.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][70] ([fdo#109441]) -> [PASS][71] +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-iclb4/igt@kms_psr@psr2_no_drrs.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_vblank@pipe-a-accuracy-idle:
    - shard-glk:          [FAIL][72] ([i915#43]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-glk3/igt@kms_vblank@pipe-a-accuracy-idle.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-glk3/igt@kms_vblank@pipe-a-accuracy-idle.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][74] ([i915#180]) -> [PASS][75] +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@prime_busy@hang@bcs0:
    - shard-hsw:          [FAIL][76] ([i915#2258]) -> [PASS][77] +2 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-hsw4/igt@prime_busy@hang@bcs0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-hsw1/igt@prime_busy@hang@bcs0.html

  * {igt@syncobj_timeline@etime-multi-wait-all-for-submit-submitted}:
    - shard-hsw:          [TIMEOUT][78] ([i915#1958]) -> [PASS][79] +3 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-hsw8/igt@syncobj_timeline@etime-multi-wait-all-for-submit-submitted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-hsw7/igt@syncobj_timeline@etime-multi-wait-all-for-submit-submitted.html

  * igt@syncobj_wait@invalid-wait-zero-handles:
    - shard-snb:          [TIMEOUT][80] ([i915#1958]) -> [PASS][81] +4 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-snb4/igt@syncobj_wait@invalid-wait-zero-handles.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-snb4/igt@syncobj_wait@invalid-wait-zero-handles.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][82] ([i915#588]) -> [SKIP][83] ([i915#658])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-5:
    - shard-hsw:          [TIMEOUT][84] ([i915#1958]) -> [SKIP][85] ([fdo#109271] / [fdo#111827])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-hsw8/igt@kms_color_chamelium@pipe-b-ctm-0-5.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-hsw2/igt@kms_color_chamelium@pipe-b-ctm-0-5.html
    - shard-snb:          [TIMEOUT][86] ([i915#1958]) -> [SKIP][87] ([fdo#109271] / [fdo#111827])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-snb4/igt@kms_color_chamelium@pipe-b-ctm-0-5.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-snb6/igt@kms_color_chamelium@pipe-b-ctm-0-5.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
    - shard-skl:          [DMESG-WARN][88] ([i915#1982]) -> [SKIP][89] ([fdo#109271]) +3 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html

  * igt@kms_flip_tiling@flip-changes-tiling-yf:
    - shard-skl:          [DMESG-WARN][90] ([i915#1982]) -> [FAIL][91] ([i915#699])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl4/igt@kms_flip_tiling@flip-changes-tiling-yf.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl7/igt@kms_flip_tiling@flip-changes-tiling-yf.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-snb:          [SKIP][92] ([fdo#109271]) -> [TIMEOUT][93] ([i915#1958]) +2 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-snb2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-snb2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
    - shard-skl:          [DMESG-FAIL][94] ([fdo#108145] / [i915#1982]) -> [FAIL][95] ([fdo#108145] / [i915#265])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-skl:          [FAIL][96] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][97] ([fdo#108145] / [i915#1982])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [SKIP][98] ([fdo#109271]) -> [FAIL][99] ([fdo#108145] / [i915#265])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1887]: https://gitlab.freedesktop.org/drm/intel/issues/1887
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2079]: https://gitlab.freedesktop.org/drm/intel/issues/2079
  [i915#2212]: https://gitlab.freedesktop.org/drm/intel/issues/2212
  [i915#2258]: https://gitlab.freedesktop.org/drm/intel/issues/2258
  [i915#2310]: https://gitlab.freedesktop.org/drm/intel/issues/2310
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#43]: https://gitlab.freedesktop.org/drm/intel/issues/43
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#83]: https://gitlab.freedesktop.org/drm/intel/issues/83
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * IGT: IGT_5764 -> IGTPW_4861
  * Linux: CI_DRM_8856 -> Patchwork_18320

  CI-20190529: 20190529
  CI_DRM_8856: 238c742f0beea85fc171bfc3eef05cf284af6d4d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_4861: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4861/index.html
  IGT_5764: 0f91c80b4c809cf48afff65a2ea68590389aa5ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18320: 4f2669d75a4cad149edc1f11f7dc1c05eb56815e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/index.html

--===============7164135247766959982==
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
<tr><td><b>Series:</b></td><td>Asynchronous flip implementation for i915 (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/74386/">https://patchwork.freedesktop.org/series/74386/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8856_full -&gt; Patchwork_18320_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18320_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>{igt@kms_async_flips@async-flip-with-page-flip-events} (NEW):</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-kbl2/igt@kms_async_flips@async-flip-with-page-flip-events.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-glk5/igt@kms_async_flips@async-flip-with-page-flip-events.html">FAIL</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@test-time-stamp} (NEW):</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl4/igt@kms_async_flips@test-time-stamp.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_8856_full and Patchwork_18320_full:</p>
<h3>New IGT tests (3)</h3>
<ul>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events:</p>
<ul>
<li>Statuses : 3 fail(s) 3 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 3.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-without-page-flip-events:</p>
<ul>
<li>Statuses : 6 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 3.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>Statuses : 4 fail(s) 2 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 0.34] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18320_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-queues-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-glk3/igt@gem_exec_whisper@basic-queues-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-glk5/igt@gem_exec_whisper@basic-queues-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-snb6/igt@gem_workarounds@suspend-resume-fd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-snb1/igt@gem_workarounds@suspend-resume-fd.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/42">i915#42</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-dpms:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-snb1/igt@kms_atomic_interruptible@legacy-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-snb4/igt@kms_atomic_interruptible@legacy-dpms.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl6/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl8/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +45 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-tglb3/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-tglb1/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl1/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl9/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl5/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl7/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_mmap_gtt:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl4/igt@kms_psr@cursor_mmap_gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl1/igt@kms_psr@cursor_mmap_gtt.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2212">i915#2212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-iclb1/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-tglb1/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-tglb1/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1887">i915#1887</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/456">i915#456</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-wait-forked-hang:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-apl3/igt@kms_vblank@pipe-b-wait-forked-hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-apl8/igt@kms_vblank@pipe-b-wait-forked-hang.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_busy@hang-wait@bcs0:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-hsw8/igt@prime_busy@hang-wait@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-hsw8/igt@prime_busy@hang-wait@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2258">i915#2258</a>) +6 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@bonded-early:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-kbl6/igt@gem_exec_balancer@bonded-early.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2079">i915#2079</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-kbl2/igt@gem_exec_balancer@bonded-early.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-glk1/igt@gem_sync@basic-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-glk1/igt@gem_sync@basic-all.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl9/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl2/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl6/igt@kms_big_fb@linear-32bpp-rotate-180.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl8/igt@kms_big_fb@linear-32bpp-rotate-180.html">PASS</a> +32 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-apl4/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-apl3/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-c-torture-move:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-tglb2/igt@kms_cursor_legacy@pipe-c-torture-move.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/128">i915#128</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-tglb6/igt@kms_cursor_legacy@pipe-c-torture-move.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@fill-fb:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl9/igt@kms_draw_crc@fill-fb.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/52">i915#52</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl4/igt@kms_draw_crc@fill-fb.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl4/igt@kms_panel_fitting@atomic-fastset.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/83">i915#83</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl7/igt@kms_panel_fitting@atomic-fastset.html">PASS</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-iclb6/igt@kms_panel_fitting@atomic-fastset.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/83">i915#83</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-iclb8/igt@kms_panel_fitting@atomic-fastset.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole-dpms-pipe-a-planes:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl4/igt@kms_plane@plane-position-hole-dpms-pipe-a-planes.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl2/igt@kms_plane@plane-position-hole-dpms-pipe-a-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-iclb4/igt@kms_psr@psr2_no_drrs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-accuracy-idle:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-glk3/igt@kms_vblank@pipe-a-accuracy-idle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/43">i915#43</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-glk3/igt@kms_vblank@pipe-a-accuracy-idle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_busy@hang@bcs0:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-hsw4/igt@prime_busy@hang@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2258">i915#2258</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-hsw1/igt@prime_busy@hang@bcs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>{igt@syncobj_timeline@etime-multi-wait-all-for-submit-submitted}:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-hsw8/igt@syncobj_timeline@etime-multi-wait-all-for-submit-submitted.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-hsw7/igt@syncobj_timeline@etime-multi-wait-all-for-submit-submitted.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@invalid-wait-zero-handles:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-snb4/igt@syncobj_wait@invalid-wait-zero-handles.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-snb4/igt@syncobj_wait@invalid-wait-zero-handles.html">PASS</a> +4 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-5:</p>
<ul>
<li>
<p>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-hsw8/igt@kms_color_chamelium@pipe-b-ctm-0-5.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-hsw2/igt@kms_color_chamelium@pipe-b-ctm-0-5.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-snb4/igt@kms_color_chamelium@pipe-b-ctm-0-5.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-snb6/igt@kms_color_chamelium@pipe-b-ctm-0-5.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-changes-tiling-yf:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl4/igt@kms_flip_tiling@flip-changes-tiling-yf.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl7/igt@kms_flip_tiling@flip-changes-tiling-yf.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/699">i915#699</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-snb2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-snb2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18320/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_5764 -&gt; IGTPW_4861</li>
<li>Linux: CI_DRM_8856 -&gt; Patchwork_18320</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8856: 238c742f0beea85fc171bfc3eef05cf284af6d4d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_4861: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4861/index.html<br />
  IGT_5764: 0f91c80b4c809cf48afff65a2ea68590389aa5ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18320: 4f2669d75a4cad149edc1f11f7dc1c05eb56815e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============7164135247766959982==--

--===============0867068419==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0867068419==--
