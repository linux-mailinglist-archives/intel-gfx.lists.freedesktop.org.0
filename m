Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA381EFCF3
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 17:47:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CC086E943;
	Fri,  5 Jun 2020 15:47:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5FB896E942;
 Fri,  5 Jun 2020 15:47:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 59599A0091;
 Fri,  5 Jun 2020 15:47:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Fri, 05 Jun 2020 15:47:17 -0000
Message-ID: <159137203736.18508.1802712635744304390@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200605140422.280195-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20200605140422.280195-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/psr=3A_Program_default_IO_buffer_Wake_and_Fast_Wake_=28re?=
 =?utf-8?b?djIp?=
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

Series: drm/i915/psr: Program default IO buffer Wake and Fast Wake (rev2)
URL   : https://patchwork.freedesktop.org/series/78019/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8590_full -> Patchwork_17887_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_17887_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17887_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17887_full:

### IGT changes ###

#### Warnings ####

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-hsw:          [INCOMPLETE][1] ([i915#61]) -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-hsw5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-hsw6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8590_full and Patchwork_17887_full:

### New IGT tests (14) ###

  * igt@gem_exec_balancer@bonded-cork:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 10.20] s

  * igt@gem_exec_balancer@bonded-imm:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 9.79] s

  * igt@gem_exec_balancer@busy:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 5.07] s

  * igt@gem_exec_balancer@full:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 10.50] s

  * igt@gem_exec_balancer@full-late:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 10.29] s

  * igt@gem_exec_balancer@full-late-pulse:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 10.45] s

  * igt@gem_exec_balancer@full-pulse:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 10.54] s

  * igt@gem_exec_balancer@indices:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 10.25] s

  * igt@gem_exec_balancer@individual:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_balancer@invalid-balancer:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 10.02] s

  * igt@gem_exec_balancer@invalid-bonds:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 0.04] s

  * igt@gem_exec_balancer@nop:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 49.59] s

  * igt@gem_exec_balancer@semaphore:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 9.77] s

  * igt@gem_exec_balancer@smoke:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 23.02] s

  

Known issues
------------

  Here are the changes found in Patchwork_17887_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_flush@basic-wb-prw-default:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-glk6/igt@gem_exec_flush@basic-wb-prw-default.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-glk6/igt@gem_exec_flush@basic-wb-prw-default.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][5] -> [FAIL][6] ([i915#454])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_suspend@forcewake:
    - shard-apl:          [PASS][7] -> [INCOMPLETE][8] ([i915#1630])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl3/igt@i915_suspend@forcewake.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-apl3/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-0:
    - shard-glk:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-glk5/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-glk8/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl6/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-apl8/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [PASS][13] -> [DMESG-FAIL][14] ([i915#118] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-glk5/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982]) +12 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl1/igt@kms_color@pipe-c-ctm-0-25.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-skl4/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - shard-snb:          [PASS][17] -> [TIMEOUT][18] ([i915#1958])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-snb6/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-snb1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:
    - shard-iclb:         [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#95]) +14 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-apl8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#93] / [i915#95])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-tglb:         [PASS][25] -> [DMESG-WARN][26] ([i915#1982])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#49])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180]) +8 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@syncobj_wait@invalid-multi-wait-unsubmitted-submitted:
    - shard-tglb:         [PASS][37] -> [DMESG-WARN][38] ([i915#402])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-tglb6/igt@syncobj_wait@invalid-multi-wait-unsubmitted-submitted.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-tglb7/igt@syncobj_wait@invalid-multi-wait-unsubmitted-submitted.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@rcs0}:
    - shard-apl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-apl8/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * {igt@gem_exec_reloc@basic-concurrent0}:
    - shard-glk:          [FAIL][41] ([i915#1930]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-glk9/igt@gem_exec_reloc@basic-concurrent0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-glk2/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_whisper@basic-normal-all:
    - shard-glk:          [DMESG-WARN][43] ([i915#118] / [i915#95]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-glk7/igt@gem_exec_whisper@basic-normal-all.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-glk5/igt@gem_exec_whisper@basic-normal-all.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [DMESG-WARN][45] ([i915#1436] / [i915#716]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl1/igt@gen9_exec_parse@allowed-all.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-kbl1/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_color@pipe-c-ctm-red-to-blue:
    - shard-kbl:          [DMESG-WARN][47] ([i915#93] / [i915#95]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl7/igt@kms_color@pipe-c-ctm-red-to-blue.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-kbl6/igt@kms_color@pipe-c-ctm-red-to-blue.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:
    - shard-skl:          [FAIL][49] ([i915#54]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html

  * igt@kms_cursor_legacy@all-pipes-torture-move:
    - shard-skl:          [DMESG-WARN][51] ([i915#128]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl10/igt@kms_cursor_legacy@all-pipes-torture-move.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-skl2/igt@kms_cursor_legacy@all-pipes-torture-move.html

  * {igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2}:
    - shard-glk:          [FAIL][53] ([i915#79]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html

  * {igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2}:
    - shard-glk:          [DMESG-WARN][55] ([i915#1982]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-glk6/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-glk6/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip_tiling@flip-x-tiled:
    - shard-apl:          [DMESG-WARN][57] ([i915#95]) -> [PASS][58] +15 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl7/igt@kms_flip_tiling@flip-x-tiled.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-apl2/igt@kms_flip_tiling@flip-x-tiled.html

  * igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:
    - shard-skl:          [FAIL][59] ([i915#49]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][61] ([i915#1188]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64] +5 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-pipe-c-planes:
    - shard-skl:          [DMESG-WARN][65] ([i915#1982]) -> [PASS][66] +3 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl6/igt@kms_plane@plane-panning-bottom-right-pipe-c-planes.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-skl9/igt@kms_plane@plane-panning-bottom-right-pipe-c-planes.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][67] ([fdo#109441]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-iclb5/igt@kms_psr@psr2_cursor_plane_move.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][69] ([i915#31]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl6/igt@kms_setmode@basic.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-kbl1/igt@kms_setmode@basic.html

  * {igt@perf@blocking-parameterized}:
    - shard-iclb:         [FAIL][71] ([i915#1542]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-iclb5/igt@perf@blocking-parameterized.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-iclb2/igt@perf@blocking-parameterized.html

  * {igt@perf@polling-parameterized}:
    - shard-hsw:          [FAIL][73] ([i915#1542]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-hsw6/igt@perf@polling-parameterized.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-hsw7/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@kms_color_chamelium@pipe-c-ctm-limited-range:
    - shard-snb:          [SKIP][75] ([fdo#109271] / [fdo#111827]) -> [INCOMPLETE][76] ([CI#80] / [i915#82])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-snb6/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-snb1/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [FAIL][77] ([fdo#110321] / [fdo#110336]) -> [DMESG-FAIL][78] ([fdo#110321])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl6/igt@kms_content_protection@atomic.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-apl2/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          [DMESG-FAIL][79] ([fdo#110321]) -> [TIMEOUT][80] ([i915#1319])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl3/igt@kms_content_protection@legacy.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-kbl7/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [DMESG-FAIL][81] ([fdo#110321] / [i915#95]) -> [TIMEOUT][82] ([i915#1319])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl2/igt@kms_content_protection@srm.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-kbl1/igt@kms_content_protection@srm.html
    - shard-apl:          [DMESG-FAIL][83] ([fdo#110321] / [i915#95]) -> [TIMEOUT][84] ([i915#1319] / [i915#1635])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl8/igt@kms_content_protection@srm.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-apl6/igt@kms_content_protection@srm.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][85] ([i915#180] / [i915#93] / [i915#95]) -> [DMESG-WARN][86] ([i915#93] / [i915#95])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
    - shard-apl:          [DMESG-WARN][87] ([i915#180] / [i915#95]) -> [DMESG-WARN][88] ([i915#95])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-apl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping:
    - shard-snb:          [SKIP][89] ([fdo#109271]) -> [TIMEOUT][90] ([i915#1958]) +2 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-snb6/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/shard-snb1/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1630]: https://gitlab.freedesktop.org/drm/intel/issues/1630
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8590 -> Patchwork_17887

  CI-20190529: 20190529
  CI_DRM_8590: 91c6f0274b54c89679cd23f6fc65e9fe5922971f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5695: 53e8c878a6fb5708e63c99403691e8960b86ea9c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17887: 2553fbc0995b01bd08a3a732dfe008cae98fb915 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17887/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
