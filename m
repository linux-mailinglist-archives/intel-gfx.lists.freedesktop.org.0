Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 308D54E2557
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 12:40:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77DD710E311;
	Mon, 21 Mar 2022 11:40:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DD8C310E311;
 Mon, 21 Mar 2022 11:40:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DDAF8A008A;
 Mon, 21 Mar 2022 11:40:37 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2696461519135041244=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Mon, 21 Mar 2022 11:40:37 -0000
Message-ID: <164786283789.18157.11776837336166562585@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220321091025.5203-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20220321091025.5203-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_DP_MST_DSC_support_to_i915_=28rev2=29?=
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

--===============2696461519135041244==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add DP MST DSC support to i915 (rev2)
URL   : https://patchwork.freedesktop.org/series/101492/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11387_full -> Patchwork_22624_full
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

  Here are the unknown changes that may have been introduced in Patchwork_22624_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:
    - {shard-rkl}:        NOTRUN -> ([SKIP][1], [SKIP][2]) ([fdo#112022] / [i915#4070]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-random:
    - {shard-rkl}:        NOTRUN -> ([SKIP][3], [SKIP][4]) ([fdo#112022])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-512x512-random.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_cursor_crc@pipe-a-cursor-512x512-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:
    - {shard-rkl}:        [SKIP][5] ([fdo#109279] / [i915#3359] / [i915#4070]) -> ([SKIP][6], [SKIP][7]) ([fdo#112022] / [i915#4070])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement:
    - {shard-rkl}:        [SKIP][8] ([fdo#112022] / [i915#4070]) -> [SKIP][9] +2 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen:
    - {shard-rkl}:        [SKIP][10] ([fdo#112022]) -> ([SKIP][11], [SKIP][12]) ([fdo#112022] / [i915#4070]) +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-5/igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding:
    - {shard-rkl}:        [SKIP][13] ([fdo#112022]) -> [SKIP][14] +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-4/igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-rapid-movement:
    - {shard-rkl}:        [SKIP][15] ([fdo#112022] / [i915#4070]) -> ([SKIP][16], [PASS][17])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-64x21-rapid-movement.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_cursor_crc@pipe-b-cursor-64x21-rapid-movement.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-64x21-rapid-movement.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-random:
    - {shard-rkl}:        [PASS][18] -> [SKIP][19] +3 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html

  * igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge:
    - {shard-rkl}:        [SKIP][20] ([i915#1849] / [i915#4098]) -> ([SKIP][21], [SKIP][22]) ([i915#4070])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-5/igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-1/igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge.html

  * igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge:
    - {shard-rkl}:        ([SKIP][23], [SKIP][24]) ([i915#1849] / [i915#4098]) -> [SKIP][25]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-5/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-4/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen:
    - {shard-rkl}:        [SKIP][26] ([i915#1849]) -> ([SKIP][27], [PASS][28])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - {shard-rkl}:        [SKIP][29] ([fdo#111825] / [i915#1825]) -> ([SKIP][30], [SKIP][31]) ([i915#1849])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - {shard-rkl}:        [SKIP][32] ([fdo#111825] / [i915#1825]) -> [SKIP][33] +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - {shard-rkl}:        [PASS][34] -> ([SKIP][35], [SKIP][36]) ([i915#1849]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc:
    - {shard-rkl}:        NOTRUN -> ([SKIP][37], [SKIP][38]) ([i915#1849]) +9 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-pwrite:
    - {shard-rkl}:        NOTRUN -> [SKIP][39] +27 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-cpu:
    - {shard-rkl}:        [SKIP][40] ([i915#1849]) -> ([SKIP][41], [SKIP][42]) ([fdo#111825] / [i915#1825])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - {shard-rkl}:        [SKIP][43] ([i915#1849]) -> [SKIP][44] +9 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite:
    - {shard-rkl}:        [SKIP][45] ([i915#4098]) -> [SKIP][46] +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - {shard-rkl}:        [SKIP][47] ([i915#1849] / [i915#4098]) -> [SKIP][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-5/igt@kms_pipe_crc_basic@read-crc-pipe-c.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_pipe_crc_basic@read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - {shard-rkl}:        NOTRUN -> ([SKIP][49], [SKIP][50]) ([i915#1849] / [i915#4070] / [i915#4098]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - {shard-rkl}:        NOTRUN -> ([SKIP][51], [SKIP][52]) ([i915#1849] / [i915#4098])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - {shard-rkl}:        [SKIP][53] ([i915#1849] / [i915#4098]) -> ([SKIP][54], [SKIP][55]) ([i915#1849] / [i915#4070] / [i915#4098])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-5/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - {shard-rkl}:        [SKIP][56] ([i915#4070]) -> ([SKIP][57], [SKIP][58]) ([i915#1849] / [i915#4098])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-4:
    - {shard-rkl}:        NOTRUN -> ([SKIP][59], [SKIP][60]) ([i915#4070])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-c-tiling-4.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-4/igt@kms_plane_multiple@atomic-pipe-c-tiling-4.html

  * igt@kms_properties@plane-properties-legacy:
    - {shard-rkl}:        ([SKIP][61], [SKIP][62]) ([i915#1849] / [i915#4098]) -> ([SKIP][63], [SKIP][64]) ([i915#1849]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-4/igt@kms_properties@plane-properties-legacy.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-5/igt@kms_properties@plane-properties-legacy.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-1/igt@kms_properties@plane-properties-legacy.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_properties@plane-properties-legacy.html

  
Known issues
------------

  Here are the changes found in Patchwork_22624_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][65] ([i915#2842])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          NOTRUN -> [FAIL][66] ([i915#2842])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         NOTRUN -> [FAIL][67] ([i915#2849])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_params@no-blt:
    - shard-tglb:         NOTRUN -> [SKIP][68] ([fdo#109283])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-tglb8/igt@gem_exec_params@no-blt.html

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-iclb:         [PASS][69] -> [INCOMPLETE][70] ([i915#1895])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-iclb2/igt@gem_exec_whisper@basic-fds-forked-all.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb5/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@gem_exec_whisper@basic-fds-priority-all:
    - shard-skl:          [PASS][71] -> [INCOMPLETE][72] ([i915#5268])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-skl4/igt@gem_exec_whisper@basic-fds-priority-all.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-skl6/igt@gem_exec_whisper@basic-fds-priority-all.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-kbl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#4613]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-kbl1/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#4613])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-apl6/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#4613])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-skl1/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_pread@exhaustion:
    - shard-skl:          NOTRUN -> [WARN][76] ([i915#2658])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-skl1/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@create-valid-protected-context:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#4270])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb5/igt@gem_pxp@create-valid-protected-context.html

  * igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([i915#768])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb5/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][79] ([fdo#109312])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb3/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][80] -> [DMESG-WARN][81] ([i915#180]) +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-iclb:         NOTRUN -> [SKIP][82] ([fdo#109289])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb5/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-iclb:         NOTRUN -> [SKIP][83] ([i915#2856])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb5/igt@gen9_exec_parse@allowed-all.html
    - shard-apl:          [PASS][84] -> [DMESG-WARN][85] ([i915#1436] / [i915#716])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-apl7/igt@gen9_exec_parse@allowed-all.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-apl8/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][86] -> [DMESG-WARN][87] ([i915#1436] / [i915#716])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-skl10/igt@gen9_exec_parse@allowed-single.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-skl9/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_module_load@reload:
    - shard-iclb:         [PASS][88] -> [DMESG-WARN][89] ([i915#2867])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-iclb4/igt@i915_module_load@reload.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb3/igt@i915_module_load@reload.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          NOTRUN -> [FAIL][90] ([i915#454])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-skl1/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [PASS][91] -> [SKIP][92] ([i915#4281])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-iclb8/igt@i915_pm_dc@dc9-dpms.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#1937])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-apl6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - shard-iclb:         NOTRUN -> [SKIP][94] ([fdo#110892])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb3/igt@i915_pm_rpm@modeset-non-lpsp-stress.html

  * igt@i915_suspend@forcewake:
    - shard-apl:          [PASS][95] -> [DMESG-WARN][96] ([i915#180]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-apl4/igt@i915_suspend@forcewake.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-apl6/igt@i915_suspend@forcewake.html

  * igt@kms_async_flips@crc:
    - shard-skl:          NOTRUN -> [FAIL][97] ([i915#4272])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-skl7/igt@kms_async_flips@crc.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][98] ([i915#5286]) +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb5/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][99] ([fdo#110725] / [fdo#111614]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb8/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][100] ([i915#3743])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-skl1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-kbl:          NOTRUN -> [SKIP][101] ([fdo#109271] / [i915#3777])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-kbl3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][102] ([i915#3763])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][103] ([fdo#110723])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb8/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#3777]) +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-skl1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][105] ([fdo#109278] / [i915#3886]) +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb5/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][106] ([fdo#109271] / [i915#3886]) +4 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-kbl4/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#3886]) +6 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-skl7/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][108] ([fdo#109278]) +13 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb3/igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs.html

  * igt@kms_chamelium@dp-hpd-with-enabled-mode:
    - shard-iclb:         NOTRUN -> [SKIP][109] ([fdo#109284] / [fdo#111827]) +6 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb5/igt@kms_chamelium@dp-hpd-with-enabled-mode.html

  * igt@kms_chamelium@hdmi-audio-edid:
    - shard-skl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-skl7/igt@kms_chamelium@hdmi-audio-edid.html

  * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
    - shard-kbl:          NOTRUN -> [SKIP][111] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-kbl1/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html

  * igt@kms_chamelium@hdmi-mode-timings:
    - shard-apl:          NOTRUN -> [SKIP][112] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-apl6/igt@kms_chamelium@hdmi-mode-timings.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-tglb:         NOTRUN -> [SKIP][113] ([fdo#109284] / [fdo#111827])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-tglb8/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_color_chamelium@pipe-d-ctm-negative:
    - shard-iclb:         NOTRUN -> [SKIP][114] ([fdo#109278] / [fdo#109284] / [fdo#111827]) +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb8/igt@kms_color_chamelium@pipe-d-ctm-negative.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          NOTRUN -> [TIMEOUT][115] ([i915#1319])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-apl6/igt@kms_content_protection@atomic.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding:
    - shard-kbl:          NOTRUN -> [SKIP][116] ([fdo#109271]) +132 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding.html
    - shard-tglb:         NOTRUN -> [SKIP][117] ([fdo#109279] / [i915#3359])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][118] ([fdo#109278] / [fdo#109279]) +3 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb8/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge:
    - shard-snb:          [PASS][119] -> [SKIP][120] ([fdo#109271])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-snb7/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-snb2/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-iclb:         NOTRUN -> [SKIP][121] ([fdo#109274] / [fdo#109278]) +2 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb5/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-iclb:         [PASS][122] -> [FAIL][123] ([i915#2346])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-iclb3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-apl:          NOTRUN -> [SKIP][124] ([fdo#109271] / [i915#533])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-apl6/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-4tiled:
    - shard-iclb:         NOTRUN -> [SKIP][125] ([i915#5287])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb5/igt@kms_draw_crc@draw-method-xrgb2101010-render-4tiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][126] -> [INCOMPLETE][127] ([i915#180] / [i915#636])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-absolute-wf_vblank-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][128] ([fdo#109274]) +2 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb5/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-apl:          NOTRUN -> [SKIP][129] ([fdo#109271]) +23 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-apl6/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1:
    - shard-glk:          [PASS][130] -> [FAIL][131] ([i915#79])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][132] -> [FAIL][133] ([i915#79])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
    - shard-skl:          [PASS][134] -> [INCOMPLETE][135] ([i915#4839])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:
    - shard-iclb:         NOTRUN -> [SKIP][136] ([i915#2587])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][137] ([fdo#109271]) +133 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-skl1/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_trackin

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/index.html

--===============2696461519135041244==
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
<tr><td><b>Series:</b></td><td>Add DP MST DSC support to i915 (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101492/">https://patchwork.freedesktop.org/series/101492/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11387_full -&gt; Patchwork_22624_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22624_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html">SKIP</a>) ([fdo#112022] / [i915#4070]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-random:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-512x512-random.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_cursor_crc@pipe-a-cursor-512x512-random.html">SKIP</a>) ([fdo#112022])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html">SKIP</a> ([fdo#109279] / [i915#3359] / [i915#4070]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html">SKIP</a>) ([fdo#112022] / [i915#4070])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement.html">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement.html">SKIP</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-5/igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen.html">SKIP</a> ([fdo#112022]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen.html">SKIP</a>) ([fdo#112022] / [i915#4070]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-4/igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding.html">SKIP</a> ([fdo#112022]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x21-rapid-movement:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-64x21-rapid-movement.html">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_cursor_crc@pipe-b-cursor-64x21-rapid-movement.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-64x21-rapid-movement.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x64-random:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-5/igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge.html">SKIP</a> ([i915#1849] / [i915#4098]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-1/igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge.html">SKIP</a>) ([i915#4070])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-5/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-4/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html">SKIP</a>) ([i915#1849] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html">SKIP</a> ([i915#1849]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([fdo#111825] / [i915#1825]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a>) ([i915#1849])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#111825] / [i915#1825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">SKIP</a>) ([i915#1849]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a>) ([i915#1849]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#1849]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a>) ([fdo#111825] / [i915#1825])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite.html">SKIP</a> ([i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-c:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-5/igt@kms_pipe_crc_basic@read-crc-pipe-c.html">SKIP</a> ([i915#1849] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_pipe_crc_basic@read-crc-pipe-c.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html">SKIP</a>) ([i915#1849] / [i915#4070] / [i915#4098]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">SKIP</a>) ([i915#1849] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-5/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html">SKIP</a> ([i915#1849] / [i915#4098]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html">SKIP</a>) ([i915#1849] / [i915#4070] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">SKIP</a> ([i915#4070]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">SKIP</a>) ([i915#1849] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-c-tiling-4:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-c-tiling-4.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-4/igt@kms_plane_multiple@atomic-pipe-c-tiling-4.html">SKIP</a>) ([i915#4070])</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-legacy:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-4/igt@kms_properties@plane-properties-legacy.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-rkl-5/igt@kms_properties@plane-properties-legacy.html">SKIP</a>) ([i915#1849] / [i915#4098]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-1/igt@kms_properties@plane-properties-legacy.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-rkl-3/igt@kms_properties@plane-properties-legacy.html">SKIP</a>) ([i915#1849]) +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22624_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2849])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-tglb8/igt@gem_exec_params@no-blt.html">SKIP</a> ([fdo#109283])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked-all:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-iclb2/igt@gem_exec_whisper@basic-fds-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb5/igt@gem_exec_whisper@basic-fds-forked-all.html">INCOMPLETE</a> ([i915#1895])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority-all:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-skl4/igt@gem_exec_whisper@basic-fds-priority-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-skl6/igt@gem_exec_whisper@basic-fds-priority-all.html">INCOMPLETE</a> ([i915#5268])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-kbl1/igt@gem_lmem_swapping@heavy-verify-multi.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-apl6/igt@gem_lmem_swapping@random-engines.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-skl1/igt@gem_lmem_swapping@smem-oom.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-skl1/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-valid-protected-context:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb5/igt@gem_pxp@create-valid-protected-context.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb5/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb3/igt@gem_softpin@evict-snoop-interruptible.html">SKIP</a> ([fdo#109312])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb5/igt@gen7_exec_parse@oacontrol-tracking.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb5/igt@gen9_exec_parse@allowed-all.html">SKIP</a> ([i915#2856])</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-apl7/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-apl8/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-skl10/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-skl9/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-iclb4/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb3/igt@i915_module_load@reload.html">DMESG-WARN</a> ([i915#2867])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-skl1/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-iclb8/igt@i915_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-apl6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb3/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> ([fdo#110892])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-apl4/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-apl6/igt@i915_suspend@forcewake.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-skl7/igt@kms_async_flips@crc.html">FAIL</a> ([i915#4272])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb5/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html">SKIP</a> ([i915#5286]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb8/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</a> ([fdo#110725] / [fdo#111614]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-skl1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-kbl3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3763])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb8/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-skl1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb5/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-kbl4/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-skl7/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb3/igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs.html">SKIP</a> ([fdo#109278]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-with-enabled-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb5/igt@kms_chamelium@dp-hpd-with-enabled-mode.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-audio-edid:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-skl7/igt@kms_chamelium@hdmi-audio-edid.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-kbl1/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-mode-timings:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-apl6/igt@kms_chamelium@hdmi-mode-timings.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-tglb8/igt@kms_color_chamelium@pipe-b-ctm-max.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-negative:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb8/igt@kms_color_chamelium@pipe-d-ctm-negative.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-apl6/igt@kms_content_protection@atomic.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding.html">SKIP</a> ([fdo#109271]) +132 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding.html">SKIP</a> ([fdo#109279] / [i915#3359])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb8/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html">SKIP</a> ([fdo#109278] / [fdo#109279]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-snb7/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-snb2/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb5/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-iclb3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-apl6/igt@kms_cursor_legacy@pipe-d-single-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-render-4tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb5/igt@kms_draw_crc@draw-method-xrgb2101010-render-4tiled.html">SKIP</a> ([i915#5287])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb5/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html">SKIP</a> ([fdo#109274]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-apl6/igt@kms_flip@2x-flip-vs-panning.html">SKIP</a> ([fdo#109271]) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11387/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html">INCOMPLETE</a> ([i915#4839])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html">SKIP</a> ([i915#2587])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22624/shard-skl1/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109271]) +133 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_trackin</p>
</li>
</ul>

</body>
</html>

--===============2696461519135041244==--
