Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1D34E44BA
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 18:08:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B704910E070;
	Tue, 22 Mar 2022 17:08:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CB5A310E032;
 Tue, 22 Mar 2022 17:08:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C5D5DAAA91;
 Tue, 22 Mar 2022 17:08:40 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7325217081957186203=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mullati Siva" <siva.mullati@intel.com>
Date: Tue, 22 Mar 2022 17:08:40 -0000
Message-ID: <164796892080.20008.16620711669350407213@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220322084437.235473-1-siva.mullati@intel.com>
In-Reply-To: <20220322084437.235473-1-siva.mullati@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Refactor_CT_access_to_use_iosys=5Fmap_=28rev2=29?=
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

--===============7325217081957186203==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Refactor CT access to use iosys_map (rev2)
URL   : https://patchwork.freedesktop.org/series/101148/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11395_full -> Patchwork_22639_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (13 -> 12)
------------------------------

  Missing    (1): shard-dg1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22639_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@system-suspend-devices:
    - {shard-rkl}:        [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-rkl-1/igt@i915_pm_rpm@system-suspend-devices.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-3/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@kms_color@pipe-c-deep-color:
    - {shard-rkl}:        [SKIP][3] ([i915#4070]) -> [SKIP][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-rkl-2/igt@kms_color@pipe-c-deep-color.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-3/igt@kms_color@pipe-c-deep-color.html

  * igt@kms_color@pipe-c-legacy-gamma-reset:
    - {shard-rkl}:        [SKIP][5] ([i915#4070]) -> ([SKIP][6], [SKIP][7]) ([i915#1849] / [i915#4098])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-rkl-1/igt@kms_color@pipe-c-legacy-gamma-reset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-5/igt@kms_color@pipe-c-legacy-gamma-reset.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-3/igt@kms_color@pipe-c-legacy-gamma-reset.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement:
    - {shard-rkl}:        [SKIP][8] ([fdo#112022] / [i915#4070]) -> ([PASS][9], [SKIP][10])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-3/igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen:
    - {shard-rkl}:        NOTRUN -> [SKIP][11] +38 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-3/igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-random:
    - {shard-rkl}:        [SKIP][12] ([fdo#112022]) -> [SKIP][13] +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-rkl-5/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-3/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque:
    - {shard-rkl}:        [SKIP][14] ([fdo#112022] / [i915#4070]) -> [SKIP][15] +3 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-rkl-2/igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-3/igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen:
    - {shard-rkl}:        NOTRUN -> ([SKIP][16], [SKIP][17]) ([fdo#112022] / [i915#4070])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-1/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-3/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x170-random:
    - {shard-rkl}:        [SKIP][18] ([i915#4070]) -> ([SKIP][19], [SKIP][20]) ([fdo#112022] / [i915#4070])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-rkl-6/igt@kms_cursor_crc@pipe-c-cursor-512x170-random.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-2/igt@kms_cursor_crc@pipe-c-cursor-512x170-random.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-3/igt@kms_cursor_crc@pipe-c-cursor-512x170-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-max-size-rapid-movement:
    - {shard-rkl}:        [SKIP][21] ([fdo#112022]) -> ([SKIP][22], [SKIP][23]) ([fdo#112022] / [i915#4070]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-rkl-5/igt@kms_cursor_crc@pipe-c-cursor-max-size-rapid-movement.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-3/igt@kms_cursor_crc@pipe-c-cursor-max-size-rapid-movement.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-1/igt@kms_cursor_crc@pipe-c-cursor-max-size-rapid-movement.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt:
    - {shard-rkl}:        [SKIP][24] ([i915#1849]) -> [SKIP][25] +20 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt:
    - {shard-rkl}:        [SKIP][26] ([fdo#111825] / [i915#1825]) -> ([SKIP][27], [SKIP][28]) ([i915#1849]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
    - {shard-rkl}:        [SKIP][29] ([i915#1849]) -> ([SKIP][30], [SKIP][31]) ([fdo#111825] / [i915#1825]) +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:
    - {shard-rkl}:        ([SKIP][32], [SKIP][33]) ([i915#1849] / [i915#4098]) -> [SKIP][34]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-linear:
    - {shard-rkl}:        [PASS][35] -> ([SKIP][36], [SKIP][37]) ([i915#1849])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - {shard-rkl}:        [SKIP][38] ([i915#1849]) -> ([PASS][39], [SKIP][40]) +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt:
    - {shard-rkl}:        NOTRUN -> ([SKIP][41], [SKIP][42]) ([i915#1849]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
    - {shard-rkl}:        [PASS][43] -> ([SKIP][44], [PASS][45]) +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant:
    - {shard-rkl}:        [SKIP][46] ([i915#1849] / [i915#4070] / [i915#4098]) -> [SKIP][47] +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-3/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - {shard-rkl}:        ([SKIP][48], [SKIP][49]) ([i915#1849] / [i915#4098]) -> ([SKIP][50], [SKIP][51]) ([i915#4070])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-rkl-4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-rkl-5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  
Known issues
------------

  Here are the changes found in Patchwork_22639_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-skl:          ([PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65]) -> ([PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [FAIL][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88]) ([i915#5032])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl8/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl9/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl9/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl9/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl8/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl7/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl7/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl4/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl4/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl1/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl1/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl10/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl10/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl10/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl9/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl9/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl8/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl8/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl7/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl7/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl6/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl6/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl5/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl5/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl5/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl4/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl4/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl3/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl3/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl2/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl2/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl1/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl1/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl10/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl10/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl10/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl10/boot.html

  
#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][104], [PASS][105], [PASS][106], [PASS][107], [PASS][108], [FAIL][109], [PASS][110], [PASS][111], [PASS][112]) ([i915#4392]) -> ([PASS][113], [PASS][114], [PASS][115], [PASS][116], [PASS][117], [PASS][118], [PASS][119], [PASS][120], [PASS][121], [PASS][122], [PASS][123], [PASS][124], [PASS][125], [PASS][126], [PASS][127], [PASS][128], [PASS][129], [PASS][130], [PASS][131], [PASS][132], [PASS][133], [PASS][134], [PASS][135], [PASS][136], [PASS][137])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk9/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk9/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk8/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk8/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk8/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk7/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk7/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk6/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk6/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk6/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk5/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk5/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk4/boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk4/boot.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk3/boot.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk3/boot.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk3/boot.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk2/boot.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk2/boot.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk2/boot.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk2/boot.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk1/boot.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk1/boot.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk1/boot.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk9/boot.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk9/boot.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk9/boot.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk8/boot.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk8/boot.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk8/boot.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk7/boot.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk7/boot.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk6/boot.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk6/boot.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk6/boot.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk6/boot.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk5/boot.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk5/boot.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk5/boot.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk4/boot.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk4/boot.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk3/boot.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk3/boot.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk2/boot.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk2/boot.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk2/boot.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk1/boot.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk1/boot.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-skl:          NOTRUN -> [DMESG-WARN][138] ([i915#4991])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl6/igt@gem_create@create-massive.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][139] -> [FAIL][140] ([i915#232])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-tglb7/igt@gem_eio@unwedge-stress.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-tglb8/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_capture@pi@vcs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][141] ([i915#4547])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl10/igt@gem_exec_capture@pi@vcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-kbl:          [PASS][142] -> [FAIL][143] ([i915#2842]) +1 similar issue
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-kbl3/igt@gem_exec_fair@basic-none@rcs0.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-kbl1/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [PASS][144] -> [FAIL][145] ([i915#2842])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-apl1/igt@gem_exec_fair@basic-none@vcs0.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][146] ([i915#2842]) +1 similar issue
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk8/igt@gem_exec_fair@basic-throttle@rcs0.html
    - shard-iclb:         [PASS][147] -> [FAIL][148] ([i915#2849])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-skl:          NOTRUN -> [SKIP][149] ([fdo#109271] / [i915#2190])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-iclb:         NOTRUN -> [SKIP][150] ([i915#4613])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-iclb5/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-glk:          NOTRUN -> [SKIP][151] ([fdo#109271] / [i915#4613])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk4/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-skl:          NOTRUN -> [SKIP][152] ([fdo#109271] / [i915#4613]) +4 similar issues
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl6/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-skl:          NOTRUN -> [WARN][153] ([i915#2658])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl10/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@input-checking:
    - shard-glk:          NOTRUN -> [DMESG-WARN][154] ([i915#4991])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk8/igt@gem_userptr_blits@input-checking.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - shard-skl:          [PASS][155] -> [FAIL][156] ([i915#5290])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl1/igt@i915_pm_rpm@basic-pci-d3-state.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl10/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          [PASS][157] -> [DMESG-WARN][158] ([i915#180]) +1 similar issue
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-apl7/igt@i915_suspend@fence-restore-untiled.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-apl1/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_big_fb@linear-16bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][159] ([fdo#110725] / [fdo#111614])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-iclb5/igt@kms_big_fb@linear-16bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-glk:          NOTRUN -> [SKIP][160] ([fdo#109271] / [i915#3777])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk8/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][161] ([i915#3743]) +3 similar issues
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][162] ([fdo#109271] / [i915#3777]) +5 similar issues
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][163] ([fdo#109271] / [i915#3886]) +19 similar issues
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl9/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][164] ([fdo#109271]) +52 similar issues
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk8/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][165] ([fdo#109271] / [i915#3886]) +3 similar issues
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk4/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][166] ([fdo#109271] / [i915#3886])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-kbl1/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-hpd-after-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][167] ([fdo#109271] / [fdo#111827])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-kbl1/igt@kms_chamelium@dp-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-aspect-ratio:
    - shard-skl:          NOTRUN -> [SKIP][168] ([fdo#109271] / [fdo#111827]) +31 similar issues
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl6/igt@kms_chamelium@hdmi-aspect-ratio.html

  * igt@kms_chamelium@vga-hpd-enable-disable-mode:
    - shard-glk:          NOTRUN -> [SKIP][169] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk4/igt@kms_chamelium@vga-hpd-enable-disable-mode.html

  * igt@kms_color_chamelium@pipe-a-degamma:
    - shard-iclb:         NOTRUN -> [SKIP][170] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-iclb5/igt@kms_color_chamelium@pipe-a-degamma.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x64-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][171] ([fdo#109278]) +2 similar issues
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-64x64-rapid-movement.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-iclb:         [PASS][172] -> [FAIL][173] ([i915#5072])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-iclb3/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions:
    - shard-iclb:         NOTRUN -> [SKIP][174] ([fdo#109274] / [fdo#109278])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-iclb5/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][175] -> [FAIL][176] ([i915#2346])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          NOTRUN -> [INCOMPLETE][177] ([i915#4939])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl10/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][178] -> [FAIL][179] ([i915#2122])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk1/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk6/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][180] -> [FAIL][181] ([i915#79])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
    - shard-skl:          NOTRUN -> [FAIL][182] ([i915#2122])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_flip@plain-flip-ts-check@c-edp1:
    - shard-skl:          [PASS][183] -> [FAIL][184] ([i915#2122]) +1 similar issue
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl9/igt@kms_flip@plain-flip-ts-check@c-edp1.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl2/igt@kms_flip@plain-flip-ts-check@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][185] ([fdo#109271]) +405 similar issues
   [185]: ht

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/index.html

--===============7325217081957186203==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Refactor CT access to use iosy=
s_map (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/101148/">https://patchwork.freedesktop.org/series/101148/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22639/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22639/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11395_full -&gt; Patchwork_22639_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 12)</h2>
<p>Missing    (1): shard-dg1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22639_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_pm_rpm@system-suspend-devices:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-rkl-1/igt@i915_pm_rpm@system-suspend-devices.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
639/shard-rkl-3/igt@i915_pm_rpm@system-suspend-devices.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-deep-color:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-rkl-2/igt@kms_color@pipe-c-deep-color.html">SKIP</a> ([=
i915#4070]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22639/shard-rkl-3/igt@kms_color@pipe-c-deep-color.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-legacy-gamma-reset:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-rkl-1/igt@kms_color@pipe-c-legacy-gamma-reset.html">SKI=
P</a> ([i915#4070]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22639/shard-rkl-5/igt@kms_color@pipe-c-legacy-gamma-reset.htm=
l">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
22639/shard-rkl-3/igt@kms_color@pipe-c-legacy-gamma-reset.html">SKIP</a>) (=
[i915#1849] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-mo=
vement.html">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; (<a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-6/igt@kms_curs=
or_crc@pipe-a-cursor-256x256-rapid-movement.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-3/igt@kms_cu=
rsor_crc@pipe-a-cursor-256x256-rapid-movement.html">SKIP</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22639/shard-rkl-3/igt@kms_cursor_crc@pipe-a-cursor-=
32x32-onscreen.html">SKIP</a> +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x21-random:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-rkl-5/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.htm=
l">SKIP</a> ([fdo#112022]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_22639/shard-rkl-3/igt@kms_cursor_crc@pipe-b-cursor-64x2=
1-random.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-rkl-2/igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque.htm=
l">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-3/igt@kms_cursor_crc@pipe=
-b-cursor-alpha-opaque.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_22639/shard-rkl-1/igt@kms_cursor_crc@pipe-c-cursor=
-256x85-offscreen.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_22639/shard-rkl-3/igt@kms_cursor_crc@pipe-c-cursor-256=
x85-offscreen.html">SKIP</a>) ([fdo#112022] / [i915#4070])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x170-random:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-rkl-6/igt@kms_cursor_crc@pipe-c-cursor-512x170-random.h=
tml">SKIP</a> ([i915#4070]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_22639/shard-rkl-2/igt@kms_cursor_crc@pipe-c-cursor-51=
2x170-random.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22639/shard-rkl-3/igt@kms_cursor_crc@pipe-c-cursor-512x170-=
random.html">SKIP</a>) ([fdo#112022] / [i915#4070])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-max-size-rapid-movement:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-rkl-5/igt@kms_cursor_crc@pipe-c-cursor-max-size-rapid-m=
ovement.html">SKIP</a> ([fdo#112022]) -&gt; (<a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-3/igt@kms_cursor_crc@pipe-c=
-cursor-max-size-rapid-movement.html">SKIP</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-1/igt@kms_cursor_crc@pip=
e-c-cursor-max-size-rapid-movement.html">SKIP</a>) ([fdo#112022] / [i915#40=
70]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrf=
b-msflip-blt.html">SKIP</a> ([i915#1849]) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-3/igt@kms_frontbuffer_tr=
acking@fbc-1p-primscrn-shrfb-msflip-blt.html">SKIP</a> +20 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indf=
b-msflip-blt.html">SKIP</a> ([fdo#111825] / [i915#1825]) -&gt; (<a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-3/igt@km=
s_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt.html">SKIP</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-=
2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt.html">SKIP<=
/a>) ([i915#1849]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indf=
b-plflip-blt.html">SKIP</a> ([i915#1849]) -&gt; (<a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-6/igt@kms_frontbuffer_t=
racking@fbc-2p-scndscrn-indfb-plflip-blt.html">SKIP</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-3/igt@kms_front=
buffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html">SKIP</a>) ([fdo#1118=
25] / [i915#1825]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11395/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr=
-indfb-onoff.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11395/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn=
-spr-indfb-onoff.html">SKIP</a>) ([i915#1849] / [i915#4098]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-3/ig=
t@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html">SKIP</a></=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-linear:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-linear.ht=
ml">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22639/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-tiling-linear.htm=
l">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
22639/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html">SKIP=
</a>) ([i915#1849])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-=
indfb-draw-mmap-cpu.html">SKIP</a> ([i915#1849]) -&gt; (<a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-6/igt@kms_frontb=
uffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-3=
/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html"=
>SKIP</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_22639/shard-rkl-1/igt@kms_frontbuffer_tracking@psr=
-2p-primscrn-indfb-pgflip-blt.html">SKIP</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-3/igt@kms_frontbuffer_trac=
king@psr-2p-primscrn-indfb-pgflip-blt.html">SKIP</a>) ([i915#1849]) +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-r=
ender.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22639/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-rgb101010=
-draw-render.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22639/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb10101=
0-draw-render.html">PASS</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-prem=
ult-vs-constant.html">SKIP</a> ([i915#1849] / [i915#4070] / [i915#4098]) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/sha=
rd-rkl-3/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.h=
tml">SKIP</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11395/shard-rkl-4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-=
min.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11395/shard-rkl-5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.h=
tml">SKIP</a>) ([i915#1849] / [i915#4098]) -&gt; (<a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-3/igt@kms_plane_alpha_=
blend@pipe-c-constant-alpha-min.html">SKIP</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_22639/shard-rkl-1/igt@kms_plane_alpha_bl=
end@pipe-c-constant-alpha-min.html">SKIP</a>) ([i915#4070])</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22639_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11395/shard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11395/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11395/shard-skl8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/sha=
rd-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11395/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl4/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl1/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11395/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11395/shard-skl10/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl10/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_113=
95/shard-skl10/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22639/shard-skl9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl9/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22639/shard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22639/shard-skl8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl7/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22639/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22639/shard-skl6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl6/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22639/shard-skl5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22639/shard-skl5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl5/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22639/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22639/shard-skl4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl3/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22639/shard-skl3/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22639/shard-skl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl2/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22639/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22639/shard-skl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl10/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22639/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_22639/shard-skl10/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-skl10=
/boot.html">PASS</a>) ([i915#5032])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11395/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11395/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11395/shard-glk8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/sha=
rd-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11395/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11395/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11395/shard-glk5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395=
/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11395/shard-glk3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-gl=
k3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1395/shard-glk2/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11395/shard-glk1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shar=
d-glk1/boot.html">PASS</a>) ([i915#4392]) -&gt; (<a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk9/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-gl=
k9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22639/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk8/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-gl=
k8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22639/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk7/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-gl=
k7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22639/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk6/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-gl=
k6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22639/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk5/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-gl=
k5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22639/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk4/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-gl=
k4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22639/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk3/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-gl=
k2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22639/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk2/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-gl=
k1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22639/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-glk1/boot.html">PASS</a>)</=
li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22639/shard-skl6/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-tglb7/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/shard-tg=
lb8/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#232])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22639/shard-skl10/igt@gem_exec_capture@pi@vcs0.html=
">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-kbl3/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/sh=
ard-kbl1/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> ([i915#2842]) +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-apl1/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/sh=
ard-apl7/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22639/shard-glk8/igt@gem_exec_fair@basic-throttle@rc=
s0.html">FAIL</a> ([i915#2842]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11395/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2263=
9/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2=
849])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22639/shard-skl1/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22639/shard-iclb5/igt@gem_lmem_swapping@parallel-mu=
lti.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22639/shard-glk4/igt@gem_lmem_swapping@parallel-ran=
dom-engines.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22639/shard-skl6/igt@gem_lmem_swapping@verify-rando=
m.html">SKIP</a> ([fdo#109271] / [i915#4613]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22639/shard-skl10/igt@gem_pwrite@basic-exhaustion.h=
tml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22639/shard-glk8/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-skl1/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22639/s=
hard-skl10/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a> ([i915#5290])<=
/li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-apl7/igt@i915_suspend@fence-restore-untiled.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_226=
39/shard-apl1/igt@i915_suspend@fence-restore-untiled.html">DMESG-WARN</a> (=
[i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22639/shard-iclb5/igt@kms_big_fb@linear-16bpp-rotat=
e-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22639/shard-glk8/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#377=
7])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22639/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743]) +3 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22639/shard-skl6/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#37=
77]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22639/shard-skl9/igt@kms_ccs@pipe-a-ccs-on-another-=
bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +19 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22639/shard-glk8/igt@kms_ccs@pipe-a-crc-primary-rot=
ation-180-y_tiled_gen12_rc_ccs.html">SKIP</a> ([fdo#109271]) +52 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22639/shard-glk4/igt@kms_ccs@pipe-b-crc-primary-rot=
ation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886=
]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22639/shard-kbl1/igt@kms_ccs@pipe-c-crc-primary-bas=
ic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-after-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22639/shard-kbl1/igt@kms_chamelium@dp-hpd-after-sus=
pend.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-aspect-ratio:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22639/shard-skl6/igt@kms_chamelium@hdmi-aspect-rati=
o.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +31 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-enable-disable-mode:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22639/shard-glk4/igt@kms_chamelium@vga-hpd-enable-d=
isable-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-degamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22639/shard-iclb5/igt@kms_color_chamelium@pipe-a-de=
gamma.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x64-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22639/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-=
64x64-rapid-movement.html">SKIP</a> ([fdo#109278]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-iclb3/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22639/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">FAIL=
</a> ([i915#5072])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22639/shard-iclb5/igt@kms_cursor_legacy@cursora-vs-=
flipb-atomic-transitions.html">SKIP</a> ([fdo#109274] / [fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22639/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-=
transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22639/shard-skl10/igt@kms_fbcon_fbt@psr-suspend.htm=
l">INCOMPLETE</a> ([i915#4939])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-glk1/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-=
hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22639/shard-glk6/igt@kms_flip@2x-plain-flip-fb-recreate@ab-=
hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22639/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a>=
 ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22639/shard-skl9/igt@kms_flip@plain-flip-fb-recreat=
e@c-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11395/shard-skl9/igt@kms_flip@plain-flip-ts-check@c-edp1.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
639/shard-skl2/igt@kms_flip@plain-flip-ts-check@c-edp1.html">FAIL</a> ([i91=
5#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"ht">SKIP</a> ([fdo#109271])=
 +405 similar issues</li>
</ul>
</li>
</ul>

</body>
</html>

--===============7325217081957186203==--
