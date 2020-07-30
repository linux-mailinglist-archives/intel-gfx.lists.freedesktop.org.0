Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 510D8233906
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jul 2020 21:28:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63D2C6E2B0;
	Thu, 30 Jul 2020 19:28:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 24E056E2A8;
 Thu, 30 Jul 2020 19:28:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1DB79A0BA8;
 Thu, 30 Jul 2020 19:28:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bhanuprakash Modem" <bhanuprakash.modem@intel.com>
Date: Thu, 30 Jul 2020 19:28:33 -0000
Message-ID: <159613731308.11111.18084632775452381600@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200730184931.14049-1-bhanuprakash.modem@intel.com>
In-Reply-To: <20200730184931.14049-1-bhanuprakash.modem@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgRXhw?=
 =?utf-8?q?ose_crtc_dither_state_and_connector_max_bpc_via_debugfs_=28rev4?=
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
Content-Type: multipart/mixed; boundary="===============1604380111=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1604380111==
Content-Type: multipart/alternative;
 boundary="===============0718052669030818040=="

--===============0718052669030818040==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Expose crtc dither state and connector max bpc via debugfs (rev4)
URL   : https://patchwork.freedesktop.org/series/79664/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8817_full -> Patchwork_18272_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18272_full:

### IGT changes ###

#### Possible regressions ####

  * {igt@kms_dither@fb-10bpc-vs-panel-8bpc@dp-1-pipe-a} (NEW):
    - shard-kbl:          NOTRUN -> [FAIL][1] +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-kbl4/igt@kms_dither@fb-10bpc-vs-panel-8bpc@dp-1-pipe-a.html

  * {igt@kms_dither@fb-10bpc-vs-panel-8bpc@edp-1-pipe-a} (NEW):
    - shard-skl:          NOTRUN -> [FAIL][2] +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl10/igt@kms_dither@fb-10bpc-vs-panel-8bpc@edp-1-pipe-a.html

  * {igt@kms_dither@fb-16bpc-vs-panel-10bpc@hdmi-a-2-pipe-a} (NEW):
    - shard-glk:          NOTRUN -> [FAIL][3] +5 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-glk8/igt@kms_dither@fb-16bpc-vs-panel-10bpc@hdmi-a-2-pipe-a.html

  * {igt@kms_dither@fb-16bpc-vs-panel-8bpc-suspend@edp-1-pipe-a} (NEW):
    - shard-iclb:         NOTRUN -> [FAIL][4] +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-iclb7/igt@kms_dither@fb-16bpc-vs-panel-8bpc-suspend@edp-1-pipe-a.html

  * {igt@kms_dither@fb-8bpc-vs-panel-10bpc-suspend} (NEW):
    - shard-iclb:         NOTRUN -> [SKIP][5] +7 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-iclb4/igt@kms_dither@fb-8bpc-vs-panel-10bpc-suspend.html

  * {igt@kms_dither@fb-8bpc-vs-panel-8bpc} (NEW):
    - shard-tglb:         NOTRUN -> [SKIP][6] +11 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-tglb1/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8817_full and Patchwork_18272_full:

### New IGT tests (57) ###

  * igt@kms_dither@fb-10bpc-vs-panel-10bpc:
    - Statuses : 4 skip(s)
    - Exec time: [0.0, 0.01] s

  * igt@kms_dither@fb-10bpc-vs-panel-10bpc-suspend:
    - Statuses : 4 skip(s)
    - Exec time: [0.0, 0.01] s

  * igt@kms_dither@fb-10bpc-vs-panel-10bpc-suspend@dp-1-pipe-a:
    - Statuses : 2 pass(s)
    - Exec time: [1.03, 1.44] s

  * igt@kms_dither@fb-10bpc-vs-panel-10bpc-suspend@hdmi-a-1-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [1.38] s

  * igt@kms_dither@fb-10bpc-vs-panel-10bpc@dp-1-pipe-a:
    - Statuses : 2 pass(s)
    - Exec time: [0.17, 0.19] s

  * igt@kms_dither@fb-10bpc-vs-panel-10bpc@hdmi-a-1-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [0.45] s

  * igt@kms_dither@fb-10bpc-vs-panel-6bpc:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_dither@fb-10bpc-vs-panel-6bpc-suspend:
    - Statuses : 2 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_dither@fb-10bpc-vs-panel-6bpc-suspend@dp-1-pipe-a:
    - Statuses : 2 pass(s)
    - Exec time: [1.01, 1.57] s

  * igt@kms_dither@fb-10bpc-vs-panel-6bpc-suspend@edp-1-pipe-a:
    - Statuses : 3 pass(s)
    - Exec time: [3.07, 3.77] s

  * igt@kms_dither@fb-10bpc-vs-panel-8bpc:
    - Statuses : 3 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_dither@fb-10bpc-vs-panel-8bpc-suspend:
    - Statuses : 2 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_dither@fb-10bpc-vs-panel-8bpc-suspend@dp-1-pipe-a:
    - Statuses : 2 fail(s)
    - Exec time: [1.07, 1.56] s

  * igt@kms_dither@fb-10bpc-vs-panel-8bpc-suspend@edp-1-pipe-a:
    - Statuses : 2 fail(s)
    - Exec time: [3.01, 3.54] s

  * igt@kms_dither@fb-10bpc-vs-panel-8bpc-suspend@hdmi-a-1-pipe-a:
    - Statuses : 1 fail(s)
    - Exec time: [1.45] s

  * igt@kms_dither@fb-10bpc-vs-panel-8bpc@dp-1-pipe-a:
    - Statuses : 2 fail(s)
    - Exec time: [0.15, 0.16] s

  * igt@kms_dither@fb-10bpc-vs-panel-8bpc@edp-1-pipe-a:
    - Statuses : 1 fail(s)
    - Exec time: [1.38] s

  * igt@kms_dither@fb-10bpc-vs-panel-8bpc@hdmi-a-1-pipe-a:
    - Statuses : 1 fail(s)
    - Exec time: [0.31] s

  * igt@kms_dither@fb-16bpc-vs-panel-10bpc:
    - Statuses : 4 skip(s)
    - Exec time: [0.0, 0.01] s

  * igt@kms_dither@fb-16bpc-vs-panel-10bpc-suspend:
    - Statuses : 4 skip(s)
    - Exec time: [0.0, 0.01] s

  * igt@kms_dither@fb-16bpc-vs-panel-10bpc-suspend@dp-1-pipe-a:
    - Statuses : 2 fail(s)
    - Exec time: [1.02, 1.60] s

  * igt@kms_dither@fb-16bpc-vs-panel-10bpc-suspend@hdmi-a-1-pipe-a:
    - Statuses : 1 fail(s)
    - Exec time: [1.17] s

  * igt@kms_dither@fb-16bpc-vs-panel-10bpc@dp-1-pipe-a:
    - Statuses : 2 fail(s)
    - Exec time: [0.17, 0.26] s

  * igt@kms_dither@fb-16bpc-vs-panel-10bpc@hdmi-a-2-pipe-a:
    - Statuses : 1 fail(s)
    - Exec time: [0.35] s

  * igt@kms_dither@fb-16bpc-vs-panel-6bpc:
    - Statuses : 2 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_dither@fb-16bpc-vs-panel-6bpc-suspend:
    - Statuses : 2 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_dither@fb-16bpc-vs-panel-6bpc-suspend@dp-1-pipe-a:
    - Statuses : 2 pass(s)
    - Exec time: [1.11, 1.64] s

  * igt@kms_dither@fb-16bpc-vs-panel-6bpc-suspend@edp-1-pipe-a:
    - Statuses : 3 pass(s)
    - Exec time: [3.21, 4.25] s

  * igt@kms_dither@fb-16bpc-vs-panel-6bpc@dp-1-pipe-a:
    - Statuses : 2 pass(s)
    - Exec time: [0.17, 0.20] s

  * igt@kms_dither@fb-16bpc-vs-panel-6bpc@edp-1-pipe-a:
    - Statuses : 3 pass(s)
    - Exec time: [1.43, 1.75] s

  * igt@kms_dither@fb-16bpc-vs-panel-8bpc:
    - Statuses : 3 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_dither@fb-16bpc-vs-panel-8bpc-suspend:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@kms_dither@fb-16bpc-vs-panel-8bpc-suspend@edp-1-pipe-a:
    - Statuses : 2 fail(s)
    - Exec time: [2.79, 3.47] s

  * igt@kms_dither@fb-16bpc-vs-panel-8bpc-suspend@hdmi-a-2-pipe-a:
    - Statuses : 1 fail(s)
    - Exec time: [2.60] s

  * igt@kms_dither@fb-16bpc-vs-panel-8bpc@dp-1-pipe-a:
    - Statuses : 2 fail(s)
    - Exec time: [0.16, 0.27] s

  * igt@kms_dither@fb-16bpc-vs-panel-8bpc@edp-1-pipe-a:
    - Statuses : 1 fail(s)
    - Exec time: [1.48] s

  * igt@kms_dither@fb-16bpc-vs-panel-8bpc@hdmi-a-2-pipe-a:
    - Statuses : 1 fail(s)
    - Exec time: [0.33] s

  * igt@kms_dither@fb-8bpc-vs-panel-10bpc:
    - Statuses : 4 skip(s)
    - Exec time: [0.0, 0.01] s

  * igt@kms_dither@fb-8bpc-vs-panel-10bpc-suspend:
    - Statuses : 4 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_dither@fb-8bpc-vs-panel-10bpc-suspend@dp-1-pipe-a:
    - Statuses : 2 pass(s)
    - Exec time: [1.07, 1.58] s

  * igt@kms_dither@fb-8bpc-vs-panel-10bpc-suspend@hdmi-a-1-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [1.54] s

  * igt@kms_dither@fb-8bpc-vs-panel-10bpc@dp-1-pipe-a:
    - Statuses : 2 pass(s)
    - Exec time: [0.17, 0.20] s

  * igt@kms_dither@fb-8bpc-vs-panel-10bpc@hdmi-a-1-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [0.50] s

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - Statuses : 2 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc-suspend:
    - Statuses : 2 skip(s)
    - Exec time: [0.0, 0.01] s

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc-suspend@dp-1-pipe-a:
    - Statuses : 2 pass(s)
    - Exec time: [1.03, 1.54] s

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc-suspend@edp-1-pipe-a:
    - Statuses : 3 pass(s)
    - Exec time: [3.08, 3.46] s

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@dp-1-pipe-a:
    - Statuses : 2 pass(s)
    - Exec time: [0.17, 0.20] s

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@edp-1-pipe-a:
    - Statuses : 3 pass(s)
    - Exec time: [1.41, 1.73] s

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc-suspend:
    - Statuses : 2 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc-suspend@dp-1-pipe-a:
    - Statuses : 2 pass(s)
    - Exec time: [1.01, 1.76] s

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc-suspend@edp-1-pipe-a:
    - Statuses : 2 pass(s)
    - Exec time: [3.11, 3.53] s

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc-suspend@hdmi-a-1-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [2.52] s

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc@dp-1-pipe-a:
    - Statuses : 2 pass(s)
    - Exec time: [0.17, 0.20] s

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a:
    - Statuses : 2 pass(s)
    - Exec time: [1.50, 1.65] s

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc@hdmi-a-1-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [0.48] s

  

Known issues
------------

  Here are the changes found in Patchwork_18272_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1436] / [i915#1635] / [i915#716])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-apl3/igt@gen9_exec_parse@allowed-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-apl6/igt@gen9_exec_parse@allowed-all.html
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1436] / [i915#716])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl3/igt@gen9_exec_parse@allowed-all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-kbl1/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1635] / [i915#1982])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-apl4/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-apl7/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_color@pipe-b-ctm-negative:
    - shard-skl:          [PASS][13] -> [SKIP][14] ([fdo#109271]) +19 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl5/igt@kms_color@pipe-b-ctm-negative.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl4/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite:
    - shard-snb:          [PASS][15] -> [SKIP][16] ([fdo#109271]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-snb5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-snb5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc:
    - shard-skl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +67 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl8/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl10/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html
    - shard-tglb:         [PASS][21] -> [DMESG-WARN][22] ([i915#1982]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-tglb6/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-tglb2/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +5 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_cursor@pipe-b-viewport-size-64:
    - shard-glk:          [PASS][25] -> [DMESG-WARN][26] ([i915#1982])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-glk1/igt@kms_plane_cursor@pipe-b-viewport-size-64.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-glk8/igt@kms_plane_cursor@pipe-b-viewport-size-64.html

  * igt@kms_prop_blob@blob-prop-validate:
    - shard-snb:          [PASS][27] -> [TIMEOUT][28] ([i915#1958] / [i915#2119])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-snb6/igt@kms_prop_blob@blob-prop-validate.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-snb6/igt@kms_prop_blob@blob-prop-validate.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-iclb1/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][31] -> [FAIL][32] ([i915#31])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl6/igt@kms_setmode@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-kbl3/igt@kms_setmode@basic.html

  * igt@kms_setmode@invalid-clone-single-crtc-stealing:
    - shard-skl:          [PASS][33] -> [WARN][34] ([i915#2100])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl9/igt@kms_setmode@invalid-clone-single-crtc-stealing.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl4/igt@kms_setmode@invalid-clone-single-crtc-stealing.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [PASS][35] -> [FAIL][36] ([i915#1820])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl7/igt@perf_pmu@semaphore-busy@rcs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-kbl7/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Possible fixes ####

  * igt@core_setmaster@master-drop-set-user:
    - shard-iclb:         [FAIL][37] ([i915#2247]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-iclb5/igt@core_setmaster@master-drop-set-user.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-iclb6/igt@core_setmaster@master-drop-set-user.html
    - shard-kbl:          [FAIL][39] ([i915#2247]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl3/igt@core_setmaster@master-drop-set-user.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-kbl3/igt@core_setmaster@master-drop-set-user.html
    - shard-snb:          [FAIL][41] ([i915#2247]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-snb2/igt@core_setmaster@master-drop-set-user.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-snb2/igt@core_setmaster@master-drop-set-user.html
    - shard-tglb:         [FAIL][43] ([i915#2247]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-tglb2/igt@core_setmaster@master-drop-set-user.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-tglb7/igt@core_setmaster@master-drop-set-user.html
    - shard-skl:          [FAIL][45] ([i915#2247]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl8/igt@core_setmaster@master-drop-set-user.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl6/igt@core_setmaster@master-drop-set-user.html
    - shard-apl:          [FAIL][47] ([i915#1635] / [i915#2247]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-apl8/igt@core_setmaster@master-drop-set-user.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-apl2/igt@core_setmaster@master-drop-set-user.html
    - shard-glk:          [FAIL][49] ([i915#2247]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-glk7/igt@core_setmaster@master-drop-set-user.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-glk1/igt@core_setmaster@master-drop-set-user.html

  * igt@gem_ctx_persistence@legacy-engines-mixed@render:
    - shard-skl:          [FAIL][51] -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed@render.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl3/igt@gem_ctx_persistence@legacy-engines-mixed@render.html

  * igt@gem_ctx_persistence@processes:
    - shard-apl:          [FAIL][53] ([i915#1528] / [i915#1635]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-apl7/igt@gem_ctx_persistence@processes.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-apl4/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_balancer@bonded-early:
    - shard-tglb:         [FAIL][55] ([i915#2079]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-tglb1/igt@gem_exec_balancer@bonded-early.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-tglb6/igt@gem_exec_balancer@bonded-early.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-skl:          [DMESG-WARN][57] ([i915#1982]) -> [PASS][58] +59 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl4/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl8/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_whisper@basic-forked:
    - shard-glk:          [DMESG-WARN][59] ([i915#118] / [i915#95]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-glk2/igt@gem_exec_whisper@basic-forked.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-glk8/igt@gem_exec_whisper@basic-forked.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [INCOMPLETE][61] ([i915#155]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl6/igt@i915_suspend@debugfs-reader.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-kbl1/igt@i915_suspend@debugfs-reader.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - shard-skl:          [SKIP][63] ([fdo#109271]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl4/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl9/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-random:
    - shard-apl:          [FAIL][65] ([i915#1635] / [i915#54]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge:
    - shard-snb:          [TIMEOUT][67] ([i915#1958] / [i915#2119]) -> [PASS][68] +3 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-snb5/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-snb5/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html

  * igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge:
    - shard-glk:          [DMESG-WARN][69] ([i915#1982]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-glk9/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-glk8/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html
    - shard-apl:          [DMESG-WARN][71] ([i915#1635] / [i915#1982]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-apl4/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-apl6/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +4 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:
    - shard-tglb:         [DMESG-WARN][75] ([i915#1982]) -> [PASS][76] +4 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][77] ([i915#1188]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-iclb:         [DMESG-WARN][79] ([i915#1982]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-iclb4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-iclb5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][81] ([fdo#108145] / [i915#265]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][83] ([fdo#109441]) -> [PASS][84] +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_psr@suspend:
    - shard-skl:          [INCOMPLETE][85] ([i915#198]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl9/igt@kms_psr@suspend.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl3/igt@kms_psr@suspend.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [FAIL][87] ([i915#1542]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-iclb1/igt@perf@blocking-parameterized.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-iclb5/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@gem_ctx_persistence@engines-mixed-process:
    - shard-snb:          [SKIP][89] ([fdo#109271] / [i915#1099]) -> [TIMEOUT][90] ([i915#1958] / [i915#2119])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-snb6/igt@gem_ctx_persistence@engines-mixed-process.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-snb6/igt@gem_ctx_persistence@engines-mixed-process.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [TIMEOUT][91] ([i915#1319] / [i915#2119]) -> [TIMEOUT][92] ([i915#1319] / [i915#1958] / [i915#2119])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl2/igt@kms_content_protection@atomic.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-kbl1/igt@kms_content_protection@atomic.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-random:
    - shard-snb:          [TIMEOUT][93] ([i915#1958] / [i915#2119]) -> [SKIP][94] ([fdo#109271])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-snb5/igt@kms_cursor_crc@pipe-c-cursor-512x512-random.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-snb2/igt@kms_cursor_crc@pipe-c-cursor-512x512-random.html

  * igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge:
    - shard-skl:          [DMESG-WARN][95] ([i915#1982]) -> [SKIP][96] ([fdo#109271])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl7/igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl4/igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-snb:          [SKIP][97] ([fdo#109271]) -> [TIMEOUT][98] ([i915#1958] / [i915#2119]) +3 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-snb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-snb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt:
    - shard-skl:          [SKIP][99] ([fdo#109271]) -> [DMESG-WARN][100] ([i915#1982])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl4/igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl4/igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][101] ([i915#1188]) -> [SKIP][102] ([fdo#109271])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          [FAIL][103] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][104] ([fdo#108145] / [i915#1982])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-skl:          [SKIP][105] ([fdo#109271]) -> [FAIL][106] ([fdo#108145] / [i915#265])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [DMESG-FAIL][107] ([fdo#108145] / [i915#1982]) -> [FAIL][108] ([fdo#108145] / [i915#265]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2079]: https://gitlab.freedesktop.org/drm/intel/issues/2079
  [i915#2100]: https://gitlab.freedesktop.org/drm/intel/issues/2100
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#2247]: https://gitlab.freedesktop.org/drm/intel/issues/2247
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * IGT: IGT_5752 -> IGTPW_4826
  * Linux: CI_DRM_8817 -> Patchwork_18272

  CI-20190529: 20190529
  CI_DRM_8817: 9694a4caf26c3c4f3d50f335415218c709029450 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_4826: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4826/index.html
  IGT_5752: 3ecf9d88803a686354394ea60164551646235273 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18272: 0711a10a5a33516ac85763a

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/index.html

--===============0718052669030818040==
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
<tr><td><b>Series:</b></td><td>Expose crtc dither state and connector max bpc via debugfs (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/79664/">https://patchwork.freedesktop.org/series/79664/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8817_full -&gt; Patchwork_18272_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18272_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>{igt@kms_dither@fb-10bpc-vs-panel-8bpc@dp-1-pipe-a} (NEW):</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-kbl4/igt@kms_dither@fb-10bpc-vs-panel-8bpc@dp-1-pipe-a.html">FAIL</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_dither@fb-10bpc-vs-panel-8bpc@edp-1-pipe-a} (NEW):</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl10/igt@kms_dither@fb-10bpc-vs-panel-8bpc@edp-1-pipe-a.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_dither@fb-16bpc-vs-panel-10bpc@hdmi-a-2-pipe-a} (NEW):</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-glk8/igt@kms_dither@fb-16bpc-vs-panel-10bpc@hdmi-a-2-pipe-a.html">FAIL</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_dither@fb-16bpc-vs-panel-8bpc-suspend@edp-1-pipe-a} (NEW):</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-iclb7/igt@kms_dither@fb-16bpc-vs-panel-8bpc-suspend@edp-1-pipe-a.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@kms_dither@fb-8bpc-vs-panel-10bpc-suspend} (NEW):</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-iclb4/igt@kms_dither@fb-8bpc-vs-panel-10bpc-suspend.html">SKIP</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_dither@fb-8bpc-vs-panel-8bpc} (NEW):</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-tglb1/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">SKIP</a> +11 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_8817_full and Patchwork_18272_full:</p>
<h3>New IGT tests (57)</h3>
<ul>
<li>
<p>igt@kms_dither@fb-10bpc-vs-panel-10bpc:</p>
<ul>
<li>Statuses : 4 skip(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-10bpc-vs-panel-10bpc-suspend:</p>
<ul>
<li>Statuses : 4 skip(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-10bpc-vs-panel-10bpc-suspend@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [1.03, 1.44] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-10bpc-vs-panel-10bpc-suspend@hdmi-a-1-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.38] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-10bpc-vs-panel-10bpc@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.17, 0.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-10bpc-vs-panel-10bpc@hdmi-a-1-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.45] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-10bpc-vs-panel-6bpc:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-10bpc-vs-panel-6bpc-suspend:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-10bpc-vs-panel-6bpc-suspend@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [1.01, 1.57] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-10bpc-vs-panel-6bpc-suspend@edp-1-pipe-a:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [3.07, 3.77] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-10bpc-vs-panel-8bpc:</p>
<ul>
<li>Statuses : 3 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-10bpc-vs-panel-8bpc-suspend:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-10bpc-vs-panel-8bpc-suspend@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 fail(s)</li>
<li>Exec time: [1.07, 1.56] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-10bpc-vs-panel-8bpc-suspend@edp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 fail(s)</li>
<li>Exec time: [3.01, 3.54] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-10bpc-vs-panel-8bpc-suspend@hdmi-a-1-pipe-a:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [1.45] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-10bpc-vs-panel-8bpc@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 fail(s)</li>
<li>Exec time: [0.15, 0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-10bpc-vs-panel-8bpc@edp-1-pipe-a:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [1.38] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-10bpc-vs-panel-8bpc@hdmi-a-1-pipe-a:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.31] s</li>
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
<p>igt@kms_dither@fb-16bpc-vs-panel-10bpc-suspend:</p>
<ul>
<li>Statuses : 4 skip(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-16bpc-vs-panel-10bpc-suspend@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 fail(s)</li>
<li>Exec time: [1.02, 1.60] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-16bpc-vs-panel-10bpc-suspend@hdmi-a-1-pipe-a:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [1.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-16bpc-vs-panel-10bpc@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 fail(s)</li>
<li>Exec time: [0.17, 0.26] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-16bpc-vs-panel-10bpc@hdmi-a-2-pipe-a:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.35] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-16bpc-vs-panel-6bpc:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-16bpc-vs-panel-6bpc-suspend:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-16bpc-vs-panel-6bpc-suspend@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [1.11, 1.64] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-16bpc-vs-panel-6bpc-suspend@edp-1-pipe-a:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [3.21, 4.25] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-16bpc-vs-panel-6bpc@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.17, 0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-16bpc-vs-panel-6bpc@edp-1-pipe-a:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.43, 1.75] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-16bpc-vs-panel-8bpc:</p>
<ul>
<li>Statuses : 3 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-16bpc-vs-panel-8bpc-suspend:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-16bpc-vs-panel-8bpc-suspend@edp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 fail(s)</li>
<li>Exec time: [2.79, 3.47] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-16bpc-vs-panel-8bpc-suspend@hdmi-a-2-pipe-a:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [2.60] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-16bpc-vs-panel-8bpc@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 fail(s)</li>
<li>Exec time: [0.16, 0.27] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-16bpc-vs-panel-8bpc@edp-1-pipe-a:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [1.48] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-16bpc-vs-panel-8bpc@hdmi-a-2-pipe-a:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.33] s</li>
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
<p>igt@kms_dither@fb-8bpc-vs-panel-10bpc-suspend:</p>
<ul>
<li>Statuses : 4 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-10bpc-suspend@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [1.07, 1.58] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-10bpc-suspend@hdmi-a-1-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.54] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-10bpc@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.17, 0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-10bpc@hdmi-a-1-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.50] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc-suspend:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc-suspend@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [1.03, 1.54] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc-suspend@edp-1-pipe-a:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [3.08, 3.46] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.17, 0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@edp-1-pipe-a:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.41, 1.73] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc-suspend:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc-suspend@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [1.01, 1.76] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc-suspend@edp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [3.11, 3.53] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc-suspend@hdmi-a-1-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.52] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.17, 0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [1.50, 1.65] s</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc@hdmi-a-1-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.48] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18272_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-apl3/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-apl6/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>)</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl3/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-kbl1/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-apl4/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-apl7/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-negative:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl5/igt@kms_color@pipe-b-ctm-negative.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl4/igt@kms_color@pipe-b-ctm-negative.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-snb5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-snb5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl8/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl10/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +67 similar issues</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-tglb6/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-tglb2/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-viewport-size-64:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-glk1/igt@kms_plane_cursor@pipe-b-viewport-size-64.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-glk8/igt@kms_plane_cursor@pipe-b-viewport-size-64.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prop_blob@blob-prop-validate:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-snb6/igt@kms_prop_blob@blob-prop-validate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-snb6/igt@kms_prop_blob@blob-prop-validate.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-iclb1/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl6/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-kbl3/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc-stealing:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl9/igt@kms_setmode@invalid-clone-single-crtc-stealing.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl4/igt@kms_setmode@invalid-clone-single-crtc-stealing.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2100">i915#2100</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@semaphore-busy@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl7/igt@perf_pmu@semaphore-busy@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-kbl7/igt@perf_pmu@semaphore-busy@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1820">i915#1820</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_setmaster@master-drop-set-user:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-iclb5/igt@core_setmaster@master-drop-set-user.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2247">i915#2247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-iclb6/igt@core_setmaster@master-drop-set-user.html">PASS</a></p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl3/igt@core_setmaster@master-drop-set-user.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2247">i915#2247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-kbl3/igt@core_setmaster@master-drop-set-user.html">PASS</a></p>
</li>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-snb2/igt@core_setmaster@master-drop-set-user.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2247">i915#2247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-snb2/igt@core_setmaster@master-drop-set-user.html">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-tglb2/igt@core_setmaster@master-drop-set-user.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2247">i915#2247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-tglb7/igt@core_setmaster@master-drop-set-user.html">PASS</a></p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl8/igt@core_setmaster@master-drop-set-user.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2247">i915#2247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl6/igt@core_setmaster@master-drop-set-user.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-apl8/igt@core_setmaster@master-drop-set-user.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2247">i915#2247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-apl2/igt@core_setmaster@master-drop-set-user.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-glk7/igt@core_setmaster@master-drop-set-user.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2247">i915#2247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-glk1/igt@core_setmaster@master-drop-set-user.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed@render:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed@render.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl3/igt@gem_ctx_persistence@legacy-engines-mixed@render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@processes:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-apl7/igt@gem_ctx_persistence@processes.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1528">i915#1528</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-apl4/igt@gem_ctx_persistence@processes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-early:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-tglb1/igt@gem_exec_balancer@bonded-early.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2079">i915#2079</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-tglb6/igt@gem_exec_balancer@bonded-early.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl4/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl8/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">PASS</a> +59 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-glk2/igt@gem_exec_whisper@basic-forked.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-glk8/igt@gem_exec_whisper@basic-forked.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl6/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-kbl1/igt@i915_suspend@debugfs-reader.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl4/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl9/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x128-random:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-snb5/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-snb5/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-glk9/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-glk8/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-apl4/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-apl6/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-iclb4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-iclb5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl9/igt@kms_psr@suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl3/igt@kms_psr@suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@blocking-parameterized:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-iclb1/igt@perf@blocking-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-iclb5/igt@perf@blocking-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@engines-mixed-process:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-snb6/igt@gem_ctx_persistence@engines-mixed-process.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1099">i915#1099</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-snb6/igt@gem_ctx_persistence@engines-mixed-process.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl2/igt@kms_content_protection@atomic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-kbl1/igt@kms_content_protection@atomic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-random:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-snb5/igt@kms_cursor_crc@pipe-c-cursor-512x512-random.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-snb2/igt@kms_cursor_crc@pipe-c-cursor-512x512-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl7/igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl4/igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-snb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-snb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl4/igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl4/igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18272/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_5752 -&gt; IGTPW_4826</li>
<li>Linux: CI_DRM_8817 -&gt; Patchwork_18272</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8817: 9694a4caf26c3c4f3d50f335415218c709029450 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_4826: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4826/index.html<br />
  IGT_5752: 3ecf9d88803a686354394ea60164551646235273 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18272: 0711a10a5a33516ac85763a</p>

</body>
</html>

--===============0718052669030818040==--

--===============1604380111==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1604380111==--
