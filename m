Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1C2203BB7
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 18:00:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5854C6E425;
	Mon, 22 Jun 2020 16:00:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A1CA16E425;
 Mon, 22 Jun 2020 16:00:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9B22EA00E7;
 Mon, 22 Jun 2020 16:00:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uma Shankar" <uma.shankar@intel.com>
Date: Mon, 22 Jun 2020 16:00:43 -0000
Message-ID: <159284164360.9207.12364130611374529650@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200622130029.28667-1-uma.shankar@intel.com>
In-Reply-To: <20200622130029.28667-1-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRW5h?=
 =?utf-8?q?ble_HDR_on_MCA_LSPCON_based_Gen9_devices_=28rev4=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Enable HDR on MCA LSPCON based Gen9 devices (rev4)
URL   : https://patchwork.freedesktop.org/series/68081/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8651_full -> Patchwork_18004_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18004_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18004_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18004_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-kbl:          NOTRUN -> ([FAIL][1], [FAIL][2], [FAIL][3], [FAIL][4], [FAIL][5]) ([i915#1611])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-kbl1/igt@runner@aborted.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-kbl7/igt@runner@aborted.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-kbl7/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-kbl7/igt@runner@aborted.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-kbl3/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_18004_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@bonded-early:
    - shard-tglb:         [PASS][6] -> [FAIL][7] ([i915#2079])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-tglb2/igt@gem_exec_balancer@bonded-early.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-tglb2/igt@gem_exec_balancer@bonded-early.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#1930])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-glk8/igt@gem_exec_reloc@basic-concurrent0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-glk9/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_whisper@basic-forked:
    - shard-glk:          [PASS][10] -> [DMESG-WARN][11] ([i915#118] / [i915#95])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-glk8/igt@gem_exec_whisper@basic-forked.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-glk9/igt@gem_exec_whisper@basic-forked.html

  * igt@gem_tiled_fence_blits@basic:
    - shard-kbl:          [PASS][12] -> [DMESG-WARN][13] ([i915#93] / [i915#95])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-kbl3/igt@gem_tiled_fence_blits@basic.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-kbl6/igt@gem_tiled_fence_blits@basic.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [PASS][14] -> [DMESG-WARN][15] ([i915#402]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-tglb5/igt@i915_module_load@reload.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-tglb5/igt@i915_module_load@reload.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-apl:          [PASS][16] -> [DMESG-WARN][17] ([i915#1982])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-apl2/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-apl6/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-skl:          [PASS][18] -> [FAIL][19] ([i915#54]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge:
    - shard-glk:          [PASS][20] -> [DMESG-WARN][21] ([i915#1982])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-glk5/igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-glk8/igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
    - shard-skl:          [PASS][22] -> [DMESG-WARN][23] ([i915#1982]) +5 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html

  * igt@kms_cursor_legacy@short-flip-before-cursor-toggle:
    - shard-apl:          [PASS][24] -> [DMESG-WARN][25] ([i915#1635] / [i915#95]) +24 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-apl8/igt@kms_cursor_legacy@short-flip-before-cursor-toggle.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-apl4/igt@kms_cursor_legacy@short-flip-before-cursor-toggle.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][26] -> [FAIL][27] ([i915#46])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][28] -> [INCOMPLETE][29] ([i915#155] / [i915#180]) +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@b-dp1:
    - shard-kbl:          [PASS][30] -> [INCOMPLETE][31] ([i915#180])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-kbl1/igt@kms_flip@flip-vs-suspend@b-dp1.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-kbl7/igt@kms_flip@flip-vs-suspend@b-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#1928])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-skl8/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-dp1:
    - shard-kbl:          [PASS][34] -> [FAIL][35] ([i915#1928])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-kbl4/igt@kms_flip@plain-flip-ts-check-interruptible@b-dp1.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-kbl6/igt@kms_flip@plain-flip-ts-check-interruptible@b-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt:
    - shard-glk:          [PASS][36] -> [FAIL][37] ([i915#49])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-glk2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-glk2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][38] -> [FAIL][39] ([i915#1188]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([fdo#108145] / [i915#265]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][42] -> [SKIP][43] ([fdo#109642] / [fdo#111068])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-iclb7/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][44] -> [SKIP][45] ([fdo#109441]) +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-skl:          [PASS][46] -> [INCOMPLETE][47] ([i915#69]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-skl7/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-skl7/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@perf@polling-small-buf:
    - shard-iclb:         [PASS][48] -> [FAIL][49] ([i915#1722])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-iclb8/igt@perf@polling-small-buf.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-iclb3/igt@perf@polling-small-buf.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@replace@bcs0:
    - shard-skl:          [FAIL][50] -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-skl8/igt@gem_ctx_persistence@replace@bcs0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-skl1/igt@gem_ctx_persistence@replace@bcs0.html

  * igt@gem_exec_whisper@basic-forked-all:
    - shard-glk:          [DMESG-WARN][52] ([i915#118] / [i915#95]) -> [PASS][53] +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-glk1/igt@gem_exec_whisper@basic-forked-all.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-glk2/igt@gem_exec_whisper@basic-forked-all.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
    - shard-skl:          [DMESG-WARN][54] ([i915#1982]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-skl7/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-skl7/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-apl:          [DMESG-WARN][56] ([i915#1982]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-apl7/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-apl2/igt@kms_big_fb@linear-64bpp-rotate-180.html
    - shard-glk:          [DMESG-FAIL][58] ([i915#118] / [i915#95]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-glk9/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-snb:          [SKIP][60] ([fdo#109271]) -> [PASS][61] +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-snb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-snb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][62] ([i915#1188]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-skl10/igt@kms_hdr@bpc-switch.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-skl6/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][64] ([fdo#108145] / [i915#265]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-x:
    - shard-tglb:         [DMESG-WARN][66] ([i915#402]) -> [PASS][67] +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-tglb7/igt@kms_plane_multiple@atomic-pipe-a-tiling-x.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-tglb1/igt@kms_plane_multiple@atomic-pipe-a-tiling-x.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [SKIP][68] ([fdo#109441]) -> [PASS][69] +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-iclb5/igt@kms_psr@psr2_sprite_render.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-iclb2/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][70] ([i915#180]) -> [PASS][71] +6 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf@invalid-oa-metric-set-id:
    - shard-apl:          [DMESG-WARN][72] ([i915#1635] / [i915#95]) -> [PASS][73] +16 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-apl3/igt@perf@invalid-oa-metric-set-id.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-apl1/igt@perf@invalid-oa-metric-set-id.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [FAIL][74] ([i915#1820]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-kbl7/igt@perf_pmu@semaphore-busy@rcs0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-kbl7/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-glk:          [INCOMPLETE][76] ([i915#1958] / [i915#58] / [k.org#198133]) -> [TIMEOUT][77] ([i915#1958])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-glk7/igt@gem_exec_reloc@basic-concurrent16.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-glk6/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_userptr_blits@process-exit-mmap@gtt:
    - shard-apl:          [SKIP][78] ([fdo#109271] / [i915#1635] / [i915#1699]) -> [SKIP][79] ([fdo#109271] / [i915#1699])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-apl6/igt@gem_userptr_blits@process-exit-mmap@gtt.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-apl8/igt@gem_userptr_blits@process-exit-mmap@gtt.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][80] ([i915#588]) -> [SKIP][81] ([i915#658])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][82] ([i915#468]) -> [FAIL][83] ([i915#454])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_chamelium@dp-edid-read:
    - shard-apl:          [SKIP][84] ([fdo#109271] / [fdo#111827] / [i915#1635]) -> [SKIP][85] ([fdo#109271] / [fdo#111827])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-apl3/igt@kms_chamelium@dp-edid-read.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-apl4/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_cursor_legacy@pipe-d-forked-bo:
    - shard-apl:          [SKIP][86] ([fdo#109271]) -> [SKIP][87] ([fdo#109271] / [i915#1635]) +6 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-apl3/igt@kms_cursor_legacy@pipe-d-forked-bo.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-apl1/igt@kms_cursor_legacy@pipe-d-forked-bo.html

  * igt@kms_flip_tiling@flip-changes-tiling-yf:
    - shard-kbl:          [DMESG-WARN][88] ([i915#93] / [i915#95]) -> [DMESG-FAIL][89] ([i915#95])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-kbl4/igt@kms_flip_tiling@flip-changes-tiling-yf.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-kbl6/igt@kms_flip_tiling@flip-changes-tiling-yf.html
    - shard-apl:          [DMESG-WARN][90] ([i915#1635] / [i915#95]) -> [DMESG-FAIL][91] ([i915#1635] / [i915#95])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-apl4/igt@kms_flip_tiling@flip-changes-tiling-yf.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-apl1/igt@kms_flip_tiling@flip-changes-tiling-yf.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt:
    - shard-apl:          [SKIP][92] ([fdo#109271] / [i915#1635]) -> [SKIP][93] ([fdo#109271]) +7 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-apl8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-apl4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][94] ([i915#180]) -> [INCOMPLETE][95] ([i915#155] / [i915#180] / [i915#648])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-apl:          [FAIL][96] ([i915#265]) -> [DMESG-FAIL][97] ([i915#1635] / [i915#95])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8651/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1611]: https://gitlab.freedesktop.org/drm/intel/issues/1611
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1699]: https://gitlab.freedesktop.org/drm/intel/issues/1699
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2021]: https://gitlab.freedesktop.org/drm/intel/issues/2021
  [i915#2036]: https://gitlab.freedesktop.org/drm/intel/issues/2036
  [i915#2079]: https://gitlab.freedesktop.org/drm/intel/issues/2079
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8651 -> Patchwork_18004

  CI-20190529: 20190529
  CI_DRM_8651: f6210d1dd268f9e09e10d3704c768d7679a44f48 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5715: 3b6975c0f9e429c0c1f48c61a3417be9d68300cf @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18004: c944d7fc0591a3d478712a5b7561525480f2f5d8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18004/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
