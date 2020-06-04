Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D371EEE25
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 01:10:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B60046E7D7;
	Thu,  4 Jun 2020 23:10:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 59EFD6E7D7;
 Thu,  4 Jun 2020 23:10:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 531A1A011B;
 Thu,  4 Jun 2020 23:10:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ayaz A Siddiqui" <ayaz.siddiqui@intel.com>
Date: Thu, 04 Jun 2020 23:10:54 -0000
Message-ID: <159131225431.14555.4932495597094434710@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200604182658.878417-1-ayaz.siddiqui@intel.com>
In-Reply-To: <20200604182658.878417-1-ayaz.siddiqui@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Initialize_reserved_and_unspecified_MOCS_indices?=
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

Series: drm/i915/gt: Initialize reserved and unspecified MOCS indices
URL   : https://patchwork.freedesktop.org/series/78012/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8585_full -> Patchwork_17875_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17875_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_reloc@basic-concurrent16}:
    - shard-kbl:          [TIMEOUT][1] ([i915#1930]) -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-kbl4/igt@gem_exec_reloc@basic-concurrent16.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-kbl2/igt@gem_exec_reloc@basic-concurrent16.html

  
Known issues
------------

  Here are the changes found in Patchwork_17875_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-glk9/igt@gem_exec_whisper@basic-contexts-forked.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-glk8/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@i915_suspend@debugfs-reader:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#69]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-skl7/igt@i915_suspend@debugfs-reader.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-skl10/igt@i915_suspend@debugfs-reader.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-glk:          [PASS][7] -> [DMESG-FAIL][8] ([i915#118] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-glk4/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-apl6/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-apl6/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-270:
    - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#1172] / [i915#1897]) +10 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-tglb1/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-tglb1/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#54]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen.html

  * igt@kms_flip_tiling@flip-x-tiled:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#95]) +15 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-apl8/igt@kms_flip_tiling@flip-x-tiled.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-apl4/igt@kms_flip_tiling@flip-x-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc:
    - shard-iclb:         [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#93] / [i915#95])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         [PASS][21] -> [FAIL][22] ([i915#1897]) +139 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#49])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html

  * igt@kms_plane_scaling@pipe-c-plane-scaling:
    - shard-skl:          [PASS][25] -> [DMESG-WARN][26] ([i915#1982]) +7 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-skl8/igt@kms_plane_scaling@pipe-c-plane-scaling.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-skl4/igt@kms_plane_scaling@pipe-c-plane-scaling.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-iclb7/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-apl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-apl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@rcs0}:
    - shard-apl:          [DMESG-WARN][31] ([i915#180]) -> [PASS][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-apl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-apl8/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * {igt@gem_exec_schedule@implicit-boths@bcs0}:
    - shard-snb:          [INCOMPLETE][33] ([i915#82]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-snb4/igt@gem_exec_schedule@implicit-boths@bcs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-snb4/igt@gem_exec_schedule@implicit-boths@bcs0.html

  * {igt@gem_exec_schedule@preempt@bcs0}:
    - shard-tglb:         [DMESG-WARN][35] ([i915#402]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-tglb8/igt@gem_exec_schedule@preempt@bcs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-tglb1/igt@gem_exec_schedule@preempt@bcs0.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [DMESG-WARN][37] ([i915#118] / [i915#95]) -> [PASS][38] +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-glk4/igt@gem_exec_whisper@basic-queues-forked-all.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-glk1/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [DMESG-WARN][39] ([i915#1436] / [i915#716]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-kbl3/igt@gen9_exec_parse@allowed-all.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-kbl2/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][41] ([i915#118] / [i915#95]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-glk5/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-skl:          [DMESG-WARN][43] ([i915#1982]) -> [PASS][44] +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-skl1/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-skl2/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_color@pipe-c-ctm-red-to-blue:
    - shard-kbl:          [DMESG-WARN][45] ([i915#93] / [i915#95]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-kbl1/igt@kms_color@pipe-c-ctm-red-to-blue.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-kbl1/igt@kms_color@pipe-c-ctm-red-to-blue.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:
    - shard-skl:          [FAIL][47] ([i915#54]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
    - shard-kbl:          [DMESG-FAIL][49] ([i915#54] / [i915#95]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:
    - shard-glk:          [DMESG-WARN][53] ([i915#1982]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-glk5/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-glk7/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html

  * igt@kms_cursor_legacy@pipe-c-torture-move:
    - shard-hsw:          [DMESG-WARN][55] ([i915#128]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-hsw7/igt@kms_cursor_legacy@pipe-c-torture-move.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-hsw7/igt@kms_cursor_legacy@pipe-c-torture-move.html

  * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size:
    - shard-tglb:         [DMESG-WARN][57] ([i915#1982]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-tglb7/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-tglb2/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html
    - shard-apl:          [DMESG-WARN][59] ([i915#1982]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-apl3/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-apl1/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html

  * {igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1}:
    - shard-skl:          [FAIL][61] ([i915#1928]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * {igt@kms_getfb@getfb2-handle-protection}:
    - shard-apl:          [DMESG-WARN][63] ([i915#95]) -> [PASS][64] +15 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-apl7/igt@kms_getfb@getfb2-handle-protection.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-apl4/igt@kms_getfb@getfb2-handle-protection.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][65] ([i915#1188]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][67] ([fdo#109441]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [FAIL][69] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][70] ([i915#1319] / [i915#1635])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-apl4/igt@kms_content_protection@atomic-dpms.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-apl2/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][71] ([i915#1319] / [i915#1635]) -> [DMESG-FAIL][72] ([fdo#110321] / [i915#95]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-apl4/igt@kms_content_protection@lic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-apl8/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [DMESG-FAIL][73] ([fdo#110321] / [i915#95]) -> [TIMEOUT][74] ([i915#1319])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-kbl2/igt@kms_content_protection@srm.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-kbl1/igt@kms_content_protection@srm.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - shard-glk:          [INCOMPLETE][75] ([i915#58] / [k.org#198133]) -> [TIMEOUT][76] ([i915#1958])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1172]: https://gitlab.freedesktop.org/drm/intel/issues/1172
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1897]: https://gitlab.freedesktop.org/drm/intel/issues/1897
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8585 -> Patchwork_17875

  CI-20190529: 20190529
  CI_DRM_8585: 3aef9a510cfe66ba71ed397e91c517402f7c26ac @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5695: 53e8c878a6fb5708e63c99403691e8960b86ea9c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17875: 74e4956ad45f89c7f37ff7f79108099c834ff6d8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17875/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
