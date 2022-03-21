Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD3A4E2B00
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 15:39:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9589A10E49F;
	Mon, 21 Mar 2022 14:39:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E73DB10E49E;
 Mon, 21 Mar 2022 14:39:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E2162A0078;
 Mon, 21 Mar 2022 14:39:41 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4466711717896229961=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Mon, 21 Mar 2022 14:39:41 -0000
Message-ID: <164787358191.18156.7156765122350224394@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220321104904.12425-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20220321104904.12425-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/adl=5Fp=3A_Increase_CDCLK_by_15=25_if_PSR2_is_used_=28rev?=
 =?utf-8?q?2=29?=
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

--===============4466711717896229961==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/adl_p: Increase CDCLK by 15% if PSR2 is used (rev2)
URL   : https://patchwork.freedesktop.org/series/101533/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11389_full -> Patchwork_22625_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22625_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_color@pipe-c-legacy-gamma-reset:
    - {shard-rkl}:        ([SKIP][1], [SKIP][2]) ([i915#4070] / [i915#4098]) -> ([SKIP][3], [SKIP][4]) ([i915#4070])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-rkl-4/igt@kms_color@pipe-c-legacy-gamma-reset.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-rkl-1/igt@kms_color@pipe-c-legacy-gamma-reset.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-1/igt@kms_color@pipe-c-legacy-gamma-reset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_color@pipe-c-legacy-gamma-reset.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen:
    - {shard-rkl}:        [PASS][5] -> ([SKIP][6], [SKIP][7]) ([fdo#112022] / [i915#4070])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x10-rapid-movement:
    - {shard-rkl}:        [SKIP][8] ([fdo#112022] / [i915#4070]) -> ([SKIP][9], [SKIP][10]) ([fdo#112022])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-32x10-rapid-movement.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_cursor_crc@pipe-a-cursor-32x10-rapid-movement.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-32x10-rapid-movement.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement:
    - {shard-rkl}:        [SKIP][11] ([fdo#112022]) -> [SKIP][12] +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement.html

  * igt@kms_cursor_crc@pipe-a-cursor-max-size-rapid-movement:
    - {shard-rkl}:        NOTRUN -> ([SKIP][13], [SKIP][14]) ([fdo#112022] / [i915#4070])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_cursor_crc@pipe-a-cursor-max-size-rapid-movement.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-max-size-rapid-movement.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding:
    - {shard-rkl}:        ([SKIP][15], [SKIP][16]) ([fdo#112022]) -> ([SKIP][17], [SKIP][18]) ([fdo#112022] / [i915#4070]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-rkl-4/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-rkl-5/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-1/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html

  * igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge:
    - {shard-rkl}:        ([SKIP][19], [SKIP][20]) ([i915#4070] / [i915#4098]) -> [SKIP][21]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-rkl-4/igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge.html

  * igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge:
    - {shard-rkl}:        NOTRUN -> ([SKIP][22], [SKIP][23]) ([i915#1849] / [i915#4098])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-5/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - {shard-rkl}:        NOTRUN -> [SKIP][24] +6 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
    - {shard-rkl}:        [SKIP][25] ([i915#4098]) -> ([PASS][26], [SKIP][27]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:
    - {shard-rkl}:        ([SKIP][28], [SKIP][29]) ([i915#1849] / [i915#4098]) -> ([SKIP][30], [SKIP][31]) ([i915#1849]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:
    - {shard-rkl}:        [SKIP][32] ([i915#1849]) -> [SKIP][33] +3 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - {shard-rkl}:        ([SKIP][34], [SKIP][35]) ([fdo#111825] / [i915#1825] / [i915#4098]) -> ([SKIP][36], [SKIP][37]) ([i915#1849])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - {shard-rkl}:        [SKIP][38] ([fdo#111825] / [i915#1825]) -> ([SKIP][39], [SKIP][40]) ([i915#1849])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-pwrite:
    - {shard-rkl}:        [SKIP][41] ([i915#4098]) -> [SKIP][42] +10 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-pwrite.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:
    - {shard-rkl}:        ([SKIP][43], [PASS][44]) ([i915#4098]) -> ([SKIP][45], [SKIP][46]) ([i915#1849])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-blt:
    - {shard-rkl}:        NOTRUN -> ([SKIP][47], [SKIP][48]) ([i915#1849]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-blt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - {shard-rkl}:        [SKIP][49] ([i915#4098]) -> ([SKIP][50], [SKIP][51]) ([i915#1849]) +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:
    - {shard-rkl}:        [PASS][52] -> ([SKIP][53], [SKIP][54]) ([i915#1849])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - {shard-rkl}:        [SKIP][55] ([i915#4098]) -> ([SKIP][56], [SKIP][57]) ([i915#1849] / [i915#4098])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-rkl-4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - {shard-rkl}:        ([SKIP][58], [SKIP][59]) ([i915#1849] / [i915#4070] / [i915#4098]) -> [SKIP][60]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-rkl-4/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_properties@plane-properties-legacy:
    - {shard-rkl}:        ([SKIP][61], [SKIP][62]) ([i915#1849] / [i915#4098]) -> [SKIP][63] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-rkl-2/igt@kms_properties@plane-properties-legacy.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-rkl-4/igt@kms_properties@plane-properties-legacy.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_properties@plane-properties-legacy.html

  
Known issues
------------

  Here are the changes found in Patchwork_22625_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-apl:          ([PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88]) -> ([PASS][89], [PASS][90], [FAIL][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][104], [PASS][105], [PASS][106], [PASS][107], [PASS][108], [PASS][109], [PASS][110], [PASS][111], [PASS][112], [PASS][113]) ([i915#4386])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl3/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl3/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl3/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl3/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl4/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl4/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl2/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl4/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl2/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl2/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl1/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl1/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl6/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl6/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl7/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl7/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl7/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl8/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl8/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl1/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl8/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl1/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl1/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl1/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl3/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl2/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl1/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl1/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl1/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl1/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl8/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl8/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl8/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl7/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl7/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl7/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl6/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl6/boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl6/boot.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl6/boot.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl6/boot.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl4/boot.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl4/boot.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl4/boot.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl4/boot.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl3/boot.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl3/boot.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl3/boot.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl2/boot.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl2/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [PASS][114] -> [SKIP][115] ([i915#658])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-iclb2/igt@feature_discovery@psr2.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-iclb5/igt@feature_discovery@psr2.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][116] ([i915#5076]) +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-kbl1/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-skl:          NOTRUN -> [SKIP][117] ([fdo#109271]) +202 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-skl8/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-kbl:          [PASS][118] -> [FAIL][119] ([i915#2842])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-kbl4/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-kbl4/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [PASS][120] -> [FAIL][121] ([i915#2842])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_params@no-blt:
    - shard-tglb:         NOTRUN -> [SKIP][122] ([fdo#109283])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-tglb6/igt@gem_exec_params@no-blt.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][123] -> [SKIP][124] ([i915#2190])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-tglb5/igt@gem_huc_copy@huc-copy.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-tglb7/igt@gem_huc_copy@huc-copy.html
    - shard-kbl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#2190])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-kbl3/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-skl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#4613]) +2 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-skl4/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-apl:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#4613]) +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl7/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@random:
    - shard-kbl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#4613])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-kbl1/igt@gem_lmem_swapping@random.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-skl:          NOTRUN -> [WARN][129] ([i915#2658])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-skl8/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_softpin@allocator-evict-all-engines:
    - shard-glk:          [PASS][130] -> [FAIL][131] ([i915#4171])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-glk7/igt@gem_softpin@allocator-evict-all-engines.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-glk9/igt@gem_softpin@allocator-evict-all-engines.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][132] ([fdo#109312])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-iclb7/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-skl:          NOTRUN -> [SKIP][133] ([fdo#109271] / [i915#3323])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-skl8/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@input-checking:
    - shard-skl:          NOTRUN -> [DMESG-WARN][134] ([i915#4991])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-skl9/igt@gem_userptr_blits@input-checking.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][135] -> [DMESG-WARN][136] ([i915#1436] / [i915#716])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl8/igt@gen9_exec_parse@allowed-all.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl1/igt@gen9_exec_parse@allowed-all.html
    - shard-glk:          [PASS][137] -> [DMESG-WARN][138] ([i915#1436] / [i915#716])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-glk8/igt@gen9_exec_parse@allowed-all.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-glk2/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - shard-iclb:         NOTRUN -> [SKIP][139] ([fdo#110892])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-iclb7/igt@i915_pm_rpm@modeset-non-lpsp-stress.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [PASS][140] -> [INCOMPLETE][141] ([i915#5183] / [i915#5187])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-skl10/igt@i915_selftest@mock@requests.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-skl1/igt@i915_selftest@mock@requests.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-tglb:         NOTRUN -> [SKIP][142] ([i915#5286])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-tglb1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][143] ([fdo#110725] / [fdo#111614])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-iclb7/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][144] ([fdo#109271] / [i915#3777]) +1 similar issue
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-kbl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][145] ([i915#3743])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][146] ([fdo#109271] / [i915#3777]) +5 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][147] ([fdo#109271] / [i915#3777]) +1 similar issue
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][148] ([fdo#110723])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-iclb7/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html

  * igt@kms_big_joiner@2x-modeset:
    - shard-tglb:         NOTRUN -> [SKIP][149] ([i915#2705])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-tglb1/igt@kms_big_joiner@2x-modeset.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][150] ([fdo#109271] / [i915#3886])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-kbl1/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][151] ([fdo#109271] / [i915#3886]) +7 similar issues
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-skl10/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][152] ([fdo#109271] / [i915#3886]) +7 similar issues
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl3/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][153] ([fdo#109278]) +5 similar issues
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-iclb7/igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][154] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-iclb7/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@vga-frame-dump:
    - shard-skl:          NOTRUN -> [SKIP][155] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-skl8/igt@kms_chamelium@vga-frame-dump.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][156] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl3/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-kbl:          NOTRUN -> [SKIP][157] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-kbl1/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-tglb:         NOTRUN -> [SKIP][158] ([fdo#109284] / [fdo#111827])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-tglb6/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_color_chamelium@pipe-d-ctm-negative:
    - shard-iclb:         NOTRUN -> [SKIP][159] ([fdo#109278] / [fdo#109284] / [fdo#111827]) +1 similar issue
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-iclb7/igt@kms_color_chamelium@pipe-d-ctm-negative.html

  * igt@kms_content_protection@content_type_change:
    - shard-tglb:         NOTRUN -> [SKIP][160] ([i915#1063])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-tglb1/igt@kms_content_protection@content_type_change.html

  * igt@kms_content_protection@srm:
    - shard-apl:          NOTRUN -> [TIMEOUT][161] ([i915#1319])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl3/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][162] ([fdo#109279] / [i915#3359])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][163] ([fdo#109278] / [fdo#109279]) +1 similar issue
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-iclb7/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:
    - shard-iclb:         [PASS][164] -> [FAIL][165] ([i915#5072])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-iclb2/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][166] -> [FAIL][167] ([i915#79])
   [166]: https://in

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/index.html

--===============4466711717896229961==
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
<tr><td><b>Series:</b></td><td>drm/i915/adl_p: Increase CDCLK by 15% if PSR=
2 is used (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/101533/">https://patchwork.freedesktop.org/series/101533/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22625/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22625/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11389_full -&gt; Patchwork_22625_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22625_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_color@pipe-c-legacy-gamma-reset:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11389/shard-rkl-4/igt@kms_color@pipe-c-legacy-gamma-reset.html">SK=
IP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/sh=
ard-rkl-1/igt@kms_color@pipe-c-legacy-gamma-reset.html">SKIP</a>) ([i915#40=
70] / [i915#4098]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22625/shard-rkl-1/igt@kms_color@pipe-c-legacy-gamma-reset.html=
">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2625/shard-rkl-3/igt@kms_color@pipe-c-legacy-gamma-reset.html">SKIP</a>) ([=
i915#4070])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11389/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x128-offscree=
n.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22625/shard-rkl-3/igt@kms_cursor_crc@pipe-a-cursor-128x128-offsc=
reen.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22625/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-128x128-offscree=
n.html">SKIP</a>) ([fdo#112022] / [i915#4070])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x10-rapid-movement:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11389/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-32x10-rapid-move=
ment.html">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; (<a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_cursor=
_crc@pipe-a-cursor-32x10-rapid-movement.html">SKIP</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-5/igt@kms_cursor=
_crc@pipe-a-cursor-32x10-rapid-movement.html">SKIP</a>) ([fdo#112022])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11389/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-move=
ment.html">SKIP</a> ([fdo#112022]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_cursor_crc@pipe-a-cur=
sor-64x64-rapid-movement.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-max-size-rapid-movement:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_cursor_crc@pipe-a-cursor=
-max-size-rapid-movement.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22625/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cur=
sor-max-size-rapid-movement.html">SKIP</a>) ([fdo#112022] / [i915#4070])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11389/shard-rkl-4/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding=
.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_11389/shard-rkl-5/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html">S=
KIP</a>) ([fdo#112022]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22625/shard-rkl-1/igt@kms_cursor_crc@pipe-c-cursor-256x25=
6-sliding.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22625/shard-rkl-3/igt@kms_cursor_crc@pipe-c-cursor-256x256-sli=
ding.html">SKIP</a>) ([fdo#112022] / [i915#4070]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11389/shard-rkl-4/igt@kms_cursor_edge_walk@pipe-c-256x256-right-ed=
ge.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11389/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge.htm=
l">SKIP</a>) ([i915#4070] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_cursor_edge_wal=
k@pipe-c-256x256-right-edge.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_22625/shard-rkl-5/igt@kms_cursor_edge_walk@pipe-c-=
64x64-left-edge.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_cursor_edge_walk@pipe-c-64x64-=
left-edge.html">SKIP</a>) ([i915#1849] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-=
1p-offscren-pri-shrfb-draw-pwrite.html">SKIP</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11389/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indf=
b-pgflip-blt.html">SKIP</a> ([i915#4098]) -&gt; (<a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-6/igt@kms_frontbuffer_t=
racking@fbc-1p-primscrn-indfb-pgflip-blt.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_front=
buffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html">SKIP</a>) +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11389/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptr=
ack-mmap-gtt.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11389/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fl=
iptrack-mmap-gtt.html">SKIP</a>) ([i915#1849] / [i915#4098]) -&gt; (<a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/ig=
t@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-r=
kl-1/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html">SKI=
P</a>) ([i915#1849]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11389/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-=
indfb-draw-render.html">SKIP</a> ([i915#1849]) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_frontbuff=
er_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html">SKIP</a> +3 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11389/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri=
-shrfb-draw-mmap-gtt.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11389/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-=
scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a>) ([fdo#111825] / [i915#1825=
] / [i915#4098]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22625/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-p=
ri-shrfb-draw-mmap-gtt.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_frontbuffer_tracking@fb=
c-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a>) ([i915#1849])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11389/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-=
indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#111825] / [i915#1825]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-2=
/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html"=
>SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
625/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw=
-mmap-gtt.html">SKIP</a>) ([i915#1849])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-pwrite:</=
p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11389/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-p=
ri-indfb-draw-pwrite.html">SKIP</a> ([i915#4098]) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_frontb=
uffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> +10 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11389/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-=
pwrite.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11389/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pw=
rite.html">PASS</a>) ([i915#4098]) -&gt; (<a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_frontbuffer_tracking=
@fbcpsr-rgb565-draw-pwrite.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22625/shard-rkl-2/igt@kms_frontbuffer_trackin=
g@fbcpsr-rgb565-draw-pwrite.html">SKIP</a>) ([i915#1849])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_frontbuffer_tracking@psr=
-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-5/igt@kms_frontbuffer_tr=
acking@psr-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a>) ([i915#1849]) +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11389/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-=
indfb-draw-mmap-gtt.html">SKIP</a> ([i915#4098]) -&gt; (<a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-5/igt@kms_frontb=
uffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-3=
/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html"=
>SKIP</a>) ([i915#1849]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11389/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap=
-cpu.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22625/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-rgb565-dra=
w-mmap-cpu.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22625/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-rgb565-dra=
w-mmap-cpu.html">SKIP</a>) ([i915#1849])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11389/shard-rkl-4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-m=
in.html">SKIP</a> ([i915#4098]) -&gt; (<a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_plane_alpha_blend@pipe-=
a-constant-alpha-min.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-rkl-5/igt@kms_plane_alpha_blend@pipe-a-=
constant-alpha-min.html">SKIP</a>) ([i915#1849] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11389/shard-rkl-4/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.htm=
l">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_113=
89/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html">SKIP</a>)=
 ([i915#1849] / [i915#4070] / [i915#4098]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_plane_alpha_b=
lend@pipe-b-alpha-basic.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-legacy:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11389/shard-rkl-2/igt@kms_properties@plane-properties-legacy.html"=
>SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389=
/shard-rkl-4/igt@kms_properties@plane-properties-legacy.html">SKIP</a>) ([i=
915#1849] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22625/shard-rkl-3/igt@kms_properties@plane-properties-leg=
acy.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22625_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11389/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl3/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl3/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11389/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11389/shard-apl4/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/sha=
rd-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11389/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl2/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl2/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11389/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11389/shard-apl1/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389=
/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11389/shard-apl7/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-ap=
l7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11389/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1389/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11389/shard-apl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shard-apl1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11389/shar=
d-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11389/shard-apl3/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/=
shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22625/shard-apl1/boot.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl1/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/=
shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22625/shard-apl8/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/=
shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22625/shard-apl7/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/=
shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22625/shard-apl6/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/=
shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22625/shard-apl6/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/=
shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22625/shard-apl4/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/=
shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22625/shard-apl3/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/=
shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22625/shard-apl2/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-apl2/boot.html">PAS=
S</a>) ([i915#4386])</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11389/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-ic=
lb5/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-kbl1/igt@gem_exec_balancer@parallel-con=
texts.html">DMESG-WARN</a> ([i915#5076]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-skl8/igt@gem_exec_fair@basic-flow@rcs0.=
html">SKIP</a> ([fdo#109271]) +202 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11389/shard-kbl4/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_226=
25/shard-kbl4/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#=
2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11389/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/s=
hard-apl3/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-tglb6/igt@gem_exec_params@no-blt.html">=
SKIP</a> ([fdo#109283])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11389/shard-tglb5/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard-tglb=
7/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22625/shard-kbl3/igt@gem_huc_copy@huc-copy.html">SKI=
P</a> ([fdo#109271] / [i915#2190])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-skl4/igt@gem_lmem_swapping@heavy-verify=
-random.html">SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-apl7/igt@gem_lmem_swapping@parallel-mul=
ti.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-kbl1/igt@gem_lmem_swapping@random.html"=
>SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-skl8/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict-all-engines:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11389/shard-glk7/igt@gem_softpin@allocator-evict-all-engines.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_22625/shard-glk9/igt@gem_softpin@allocator-evict-all-engines.html">FAIL</=
a> ([i915#4171])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-iclb7/igt@gem_softpin@evict-snoop-inter=
ruptible.html">SKIP</a> ([fdo#109312])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-skl8/igt@gem_userptr_blits@dmabuf-sync.=
html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-skl9/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11389/shard-apl8/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard=
-apl1/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / [=
i915#716])</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11389/shard-glk8/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/shard=
-glk2/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / [=
i915#716])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-iclb7/igt@i915_pm_rpm@modeset-non-lpsp-=
stress.html">SKIP</a> ([fdo#110892])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@requests:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11389/shard-skl10/igt@i915_selftest@mock@requests.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22625/sha=
rd-skl1/igt@i915_selftest@mock@requests.html">INCOMPLETE</a> ([i915#5183] /=
 [i915#5187])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-tglb1/igt@kms_big_fb@4-tiled-max-hw-str=
ide-64bpp-rotate-0-hflip.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-iclb7/igt@kms_big_fb@linear-8bpp-rotate=
-90.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-kbl1/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 si=
milar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-str=
ide-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#37=
77]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-apl6/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 si=
milar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-iclb7/igt@kms_big_fb@yf-tiled-64bpp-rot=
ate-270.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@2x-modeset:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-tglb1/igt@kms_big_joiner@2x-modeset.htm=
l">SKIP</a> ([i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-kbl1/igt@kms_ccs@pipe-b-ccs-on-another-=
bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-skl10/igt@kms_ccs@pipe-b-crc-primary-ro=
tation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#388=
6]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-apl3/igt@kms_ccs@pipe-c-bad-rotation-90=
-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +7 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-iclb7/igt@kms_ccs@pipe-d-ccs-on-another=
-bo-yf_tiled_ccs.html">SKIP</a> ([fdo#109278]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-iclb7/igt@kms_chamelium@common-hpd-afte=
r-suspend.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-frame-dump:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-skl8/igt@kms_chamelium@vga-frame-dump.h=
tml">SKIP</a> ([fdo#109271] / [fdo#111827]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-apl3/igt@kms_chamelium@vga-hpd.html">SK=
IP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-kbl1/igt@kms_color_chamelium@pipe-a-ctm=
-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-tglb6/igt@kms_color_chamelium@pipe-b-ct=
m-max.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-negative:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-iclb7/igt@kms_color_chamelium@pipe-d-ct=
m-negative.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827]) +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content_type_change:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-tglb1/igt@kms_content_protection@conten=
t_type_change.html">SKIP</a> ([i915#1063])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-apl3/igt@kms_content_protection@srm.htm=
l">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-=
512x170-sliding.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22625/shard-iclb7/igt@kms_cursor_crc@pipe-a-cursor-=
512x512-offscreen.html">SKIP</a> ([fdo#109278] / [fdo#109279]) +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11389/shard-iclb2/igt@kms_cursor_legacy@cursor-vs-flip-atomic-trans=
itions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22625/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-atomi=
c-transitions.html">FAIL</a> ([i915#5072])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://in">PASS</a> -&gt; [FAIL][167] (=
[i915#79])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============4466711717896229961==--
