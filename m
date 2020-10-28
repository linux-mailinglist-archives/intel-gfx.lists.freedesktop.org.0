Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B4329CFF5
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 13:56:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD1D96E51C;
	Wed, 28 Oct 2020 12:56:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3E4196E504;
 Wed, 28 Oct 2020 12:56:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3A113A47DF;
 Wed, 28 Oct 2020 12:56:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Wed, 28 Oct 2020 12:56:33 -0000
Message-ID: <160388979323.21340.5019344806609259847@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201028091641.137195-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20201028091641.137195-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/ehl=3A_Implement_W/A_22010492432?=
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
Content-Type: multipart/mixed; boundary="===============0958319997=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0958319997==
Content-Type: multipart/alternative;
 boundary="===============5596585807376058332=="

--===============5596585807376058332==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/ehl: Implement W/A 22010492432
URL   : https://patchwork.freedesktop.org/series/83135/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9207_full -> Patchwork_18796_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18796_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18796_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18796_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@blocking-wf_vblank@a-hdmi-a1:
    - shard-hsw:          [PASS][1] -> [INCOMPLETE][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-hsw1/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-hsw2/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html

  
#### Warnings ####

  * igt@gem_exec_create@basic:
    - shard-hsw:          [FAIL][3] ([i915#1888]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-hsw7/igt@gem_exec_create@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-hsw4/igt@gem_exec_create@basic.html

  * igt@runner@aborted:
    - shard-skl:          ([FAIL][5], [FAIL][6], [FAIL][7], [FAIL][8], [FAIL][9], [FAIL][10], [FAIL][11], [FAIL][12], [FAIL][13], [FAIL][14], [FAIL][15], [FAIL][16], [FAIL][17], [FAIL][18], [FAIL][19], [FAIL][20], [FAIL][21], [FAIL][22], [FAIL][23], [FAIL][24], [FAIL][25], [FAIL][26]) ([i915#1436] / [i915#1814]) -> ([FAIL][27], [FAIL][28], [FAIL][29], [FAIL][30], [FAIL][31], [FAIL][32], [FAIL][33], [FAIL][34], [FAIL][35], [FAIL][36], [FAIL][37], [FAIL][38], [FAIL][39], [FAIL][40], [FAIL][41], [FAIL][42], [FAIL][43], [FAIL][44], [FAIL][45]) ([i915#1814] / [i915#2439])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl6/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl1/igt@runner@aborted.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl4/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl10/igt@runner@aborted.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl10/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl3/igt@runner@aborted.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl4/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl6/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl2/igt@runner@aborted.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl8/igt@runner@aborted.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl2/igt@runner@aborted.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl9/igt@runner@aborted.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl9/igt@runner@aborted.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl4/igt@runner@aborted.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl7/igt@runner@aborted.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl1/igt@runner@aborted.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl3/igt@runner@aborted.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl2/igt@runner@aborted.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl8/igt@runner@aborted.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl7/igt@runner@aborted.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl9/igt@runner@aborted.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl3/igt@runner@aborted.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl8/igt@runner@aborted.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl9/igt@runner@aborted.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl10/igt@runner@aborted.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl10/igt@runner@aborted.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl7/igt@runner@aborted.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl1/igt@runner@aborted.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl2/igt@runner@aborted.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl7/igt@runner@aborted.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl1/igt@runner@aborted.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl8/igt@runner@aborted.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl10/igt@runner@aborted.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl4/igt@runner@aborted.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl3/igt@runner@aborted.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl8/igt@runner@aborted.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl9/igt@runner@aborted.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl3/igt@runner@aborted.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl3/igt@runner@aborted.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl6/igt@runner@aborted.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl1/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs}:
    - shard-skl:          NOTRUN -> [FAIL][46]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9207_full and Patchwork_18796_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 200 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18796_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@hotrebind-lateclose:
    - shard-snb:          [PASS][47] -> [INCOMPLETE][48] ([i915#82])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-snb6/igt@core_hotunplug@hotrebind-lateclose.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-snb7/igt@core_hotunplug@hotrebind-lateclose.html

  * igt@drm_read@empty-block:
    - shard-glk:          [PASS][49] -> [DMESG-WARN][50] ([i915#1982])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-glk8/igt@drm_read@empty-block.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-glk2/igt@drm_read@empty-block.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - shard-apl:          [PASS][51] -> [DMESG-WARN][52] ([i915#1635] / [i915#1982]) +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-apl7/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-apl8/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-glk:          [PASS][53] -> [FAIL][54] ([i915#1119])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-glk5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-glk7/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge:
    - shard-skl:          [PASS][55] -> [DMESG-WARN][56] ([i915#1982]) +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl10/igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl2/igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][57] -> [FAIL][58] ([i915#72])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][59] -> [FAIL][60] ([i915#2122])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-glk3/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:
    - shard-tglb:         [PASS][61] -> [INCOMPLETE][62] ([i915#2606])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt:
    - shard-skl:          [PASS][63] -> [INCOMPLETE][64] ([i915#123]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-skl:          [PASS][65] -> [INCOMPLETE][66] ([i915#123] / [i915#2606])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_psr@cursor_render:
    - shard-skl:          [PASS][67] -> [INCOMPLETE][68] ([i915#2606])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl2/igt@kms_psr@cursor_render.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl3/igt@kms_psr@cursor_render.html

  * igt@kms_psr@suspend:
    - shard-skl:          [PASS][69] -> [INCOMPLETE][70] ([i915#198])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl3/igt@kms_psr@suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl9/igt@kms_psr@suspend.html

  * igt@kms_vblank@pipe-c-wait-forked-busy:
    - shard-kbl:          [PASS][71] -> [DMESG-WARN][72] ([i915#1982]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-kbl2/igt@kms_vblank@pipe-c-wait-forked-busy.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-kbl6/igt@kms_vblank@pipe-c-wait-forked-busy.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [PASS][73] -> [FAIL][74] ([i915#1542])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-glk2/igt@perf@polling-parameterized.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-glk7/igt@perf@polling-parameterized.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@all:
    - shard-glk:          [DMESG-WARN][75] ([i915#118] / [i915#95]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-glk7/igt@gem_exec_gttfill@all.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-glk5/igt@gem_exec_gttfill@all.html

  * igt@gem_exec_nop@basic-sequential:
    - shard-skl:          [DMESG-WARN][77] ([i915#1982]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl10/igt@gem_exec_nop@basic-sequential.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl1/igt@gem_exec_nop@basic-sequential.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][79] ([i915#1436] / [i915#716]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl3/igt@gen9_exec_parse@allowed-single.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl8/igt@gen9_exec_parse@allowed-single.html

  * {igt@kms_async_flips@async-flip-with-page-flip-events}:
    - shard-glk:          [FAIL][81] ([i915#2521]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-glk5/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-glk4/igt@kms_async_flips@async-flip-with-page-flip-events.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [INCOMPLETE][83] ([i915#300]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip_tiling@flip-y-tiled:
    - shard-kbl:          [DMESG-WARN][85] ([i915#1982]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-kbl6/igt@kms_flip_tiling@flip-y-tiled.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-kbl1/igt@kms_flip_tiling@flip-y-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff:
    - shard-iclb:         [INCOMPLETE][87] ([i915#2606]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-cpu:
    - shard-tglb:         [INCOMPLETE][89] ([i915#2606]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-cpu.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-skl:          [DMESG-WARN][91] ([i915#2606]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:
    - shard-skl:          [INCOMPLETE][93] ([i915#123] / [i915#2606]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render:
    - shard-skl:          [INCOMPLETE][95] ([i915#123]) -> [PASS][96] +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [DMESG-FAIL][97] ([fdo#108145] / [i915#1982]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-kbl:          [DMESG-WARN][99] ([i915#165] / [i915#78]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-kbl2/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-kbl4/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@cursor_blt:
    - shard-skl:          [INCOMPLETE][101] ([i915#2606]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl10/igt@kms_psr@cursor_blt.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl8/igt@kms_psr@cursor_blt.html

  * igt@kms_psr@primary_blt:
    - shard-skl:          [INCOMPLETE][103] -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl6/igt@kms_psr@primary_blt.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl4/igt@kms_psr@primary_blt.html

  * igt@kms_vblank@pipe-c-wait-forked-busy:
    - shard-apl:          [DMESG-WARN][105] ([i915#1635] / [i915#1982]) -> [PASS][106] +3 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-apl4/igt@kms_vblank@pipe-c-wait-forked-busy.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-apl2/igt@kms_vblank@pipe-c-wait-forked-busy.html

  * igt@perf_pmu@module-unload:
    - shard-hsw:          [DMESG-WARN][107] ([i915#1982]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-hsw6/igt@perf_pmu@module-unload.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-hsw1/igt@perf_pmu@module-unload.html

  
#### Warnings ####

  * igt@gem_tiled_swapping@non-threaded:
    - shard-hsw:          [SKIP][109] ([fdo#109271]) -> [FAIL][110] ([i915#183])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-hsw7/igt@gem_tiled_swapping@non-threaded.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-hsw4/igt@gem_tiled_swapping@non-threaded.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [FAIL][111] ([i915#454]) -> [INCOMPLETE][112] ([i915#198])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl8/igt@i915_pm_dc@dc6-psr.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl10/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff:
    - shard-tglb:         [INCOMPLETE][113] ([i915#2606]) -> [DMESG-WARN][114] ([i915#2606])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
    - shard-iclb:         [INCOMPLETE][115] ([i915#2606]) -> [DMESG-WARN][116] ([i915#2606]) +2 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-msflip-blt:
    - shard-skl:          [DMESG-WARN][117] ([i915#1982]) -> [INCOMPLETE][118] ([i915#123] / [i915#2606]) +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-msflip-blt.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:
    - shard-skl:          [DMESG-WARN][119] -> [INCOMPLETE][120] ([i915#123])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#183]: https://gitlab.freedesktop.org/drm/intel/issues/183
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2439]: https://gitlab.freedesktop.org/drm/intel/issues/2439
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2606]: https://gitlab.freedesktop.org/drm/intel/issues/2606
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9207 -> Patchwork_18796

  CI-20190529: 20190529
  CI_DRM_9207: 5fde6a8070fd3847130e7f4f0dfd08cbbef0ca1d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5827: 7fd7e3fb8b42eb4e62a4575f6edc5a048e5bec3d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18796: eaf07c85e80822b5393cbe5dcad739aa8abde9c5 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/index.html

--===============5596585807376058332==
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
<tr><td><b>Series:</b></td><td>drm/i915/ehl: Implement W/A 22010492432</td>=
</tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/83135/">https://patchwork.freedesktop.org/series/83135/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18796/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18796/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9207_full -&gt; Patchwork_18796_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18796_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_18796_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
18796_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_flip@blocking-wf_vblank@a-hdmi-a1:<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-hsw1/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8796/shard-hsw2/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html">INCOMPLETE<=
/a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_create@basic:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-hsw7/igt@gem_exec_create@basic.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/sha=
rd-hsw4/igt@gem_exec_create@basic.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_9207/shard-skl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl1/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_9207/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl10/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
9207/shard-skl10/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl3/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207=
/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl6/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shar=
d-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_9207/shard-skl8/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl=
2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_9207/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl9/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_9207/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl7/igt@run=
ner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_9207/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl3/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9207/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl8/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_9207/shard-skl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_9207/shard-skl9/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_920=
7/shard-skl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a>) -&gt; (<a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl8/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_18796/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl10=
/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18796/shard-skl10/igt@runner@aborted.html">FAIL</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-=
skl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_18796/shard-skl1/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/sha=
rd-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_18796/shard-skl7/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/=
shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl8/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_187=
96/shard-skl10/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl4/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18796/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl8/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18796/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl3/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18796/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl6/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_18796/shard-skl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</=
li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs}:<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18796/shard-skl2/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytileccs.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9207_full and Patchwork_18=
796_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 200 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18796_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@hotrebind-lateclose:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-snb6/igt@core_hotunplug@hotrebind-lateclose.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1879=
6/shard-snb7/igt@core_hotunplug@hotrebind-lateclose.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@drm_read@empty-block:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-glk8/igt@drm_read@empty-block.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-glk2/i=
gt@drm_read@empty-block.html">DMESG-WARN</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-apl7/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/=
shard-apl8/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982=
</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-glk5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796=
/shard-glk7/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1119">i915#1119</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-skl10/igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18796/shard-skl2/igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18796/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atom=
ic.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/72">i915#72</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check-interruptible@a=
b-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_18796/shard-glk3/igt@kms_flip@2x-plain-flip-ts-ch=
eck-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-i=
ndfb-draw-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_18796/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p=
-offscren-pri-indfb-draw-blt.html">INCOMPLETE</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/2606">i915#2606</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-in=
dfb-draw-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_18796/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-o=
ffscren-pri-indfb-draw-blt.html">INCOMPLETE</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/123">i915#123</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-in=
dfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_18796/shard-skl1/igt@kms_frontbuffer_tracking@psr=
-1p-primscrn-cur-indfb-draw-mmap-gtt.html">INCOMPLETE</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/123">i915#123</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/2606">i915#2606</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_render:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-skl2/igt@kms_psr@cursor_render.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl3/=
igt@kms_psr@cursor_render.html">INCOMPLETE</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2606">i915#2606</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-skl3/igt@kms_psr@suspend.html">PASS</a> -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl9/igt@km=
s_psr@suspend.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-wait-forked-busy:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-kbl2/igt@kms_vblank@pipe-c-wait-forked-busy.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1879=
6/shard-kbl6/igt@kms_vblank@pipe-c-wait-forked-busy.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</=
a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-glk2/igt@perf@polling-parameterized.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-=
glk7/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-glk7/igt@gem_exec_gttfill@all.html">DMESG-WARN</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/=
shard-glk5/igt@gem_exec_gttfill@all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_nop@basic-sequential:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-skl10/igt@gem_exec_nop@basic-sequential.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915=
#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18796/shard-skl1/igt@gem_exec_nop@basic-sequential.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-skl3/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915=
#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716"=
>i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_18796/shard-skl8/igt@gen9_exec_parse@allowed-single.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@async-flip-with-page-flip-events}:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-glk5/igt@kms_async_flips@async-flip-with-page-flip-event=
s.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2521">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18796/shard-glk4/igt@kms_async_flips@async-flip-with-page-f=
lip-events.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">INCO=
MPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/300"=
>i915#300</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_18796/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-y-tiled:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-kbl6/igt@kms_flip_tiling@flip-y-tiled.html">DMESG-WARN</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1=
982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18796/shard-kbl1/igt@kms_flip_tiling@flip-y-tiled.html">PASS</a> +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-i=
ndfb-onoff.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2606">i915#2606</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_18796/shard-iclb5/igt@kms_frontbuffer_tracki=
ng@fbc-1p-primscrn-cur-indfb-onoff.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-cpu:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mm=
ap-cpu.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2606">i915#2606</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_18796/shard-tglb8/igt@kms_frontbuffer_tracking@f=
bc-rgb101010-draw-mmap-cpu.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-i=
ndfb-draw-mmap-cpu.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2606">i915#2606</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl2/igt@kms_frontbuffer=
_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-in=
dfb-draw-blt.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/123">i915#123</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2606">i915#2606</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl6/igt@kms_frontbuffer_t=
racking@psr-1p-primscrn-pri-indfb-draw-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-sh=
rfb-draw-render.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/123">i915#123</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl7/igt@kms_frontbuffer_trac=
king@psr-1p-primscrn-pri-shrfb-draw-render.html">PASS</a> +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html=
">DMESG-FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_18796/shard-skl9/igt@kms_plane_alpha_blend@pipe-a=
-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-x:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-kbl2/igt@kms_plane_lowres@pipe-a-tiling-x.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/165">i91=
5#165</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/78">=
i915#78</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18796/shard-kbl4/igt@kms_plane_lowres@pipe-a-tiling-x.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_blt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-skl10/igt@kms_psr@cursor_blt.html">INCOMPLETE</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2606">i915#2606</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/s=
hard-skl8/igt@kms_psr@cursor_blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_blt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-skl6/igt@kms_psr@primary_blt.html">INCOMPLETE</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-s=
kl4/igt@kms_psr@primary_blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-wait-forked-busy:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-apl4/igt@kms_vblank@pipe-c-wait-forked-busy.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">=
i915#1635</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_18796/shard-apl2/igt@kms_vblank@pipe-c-wait-forked-busy.html"=
>PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-hsw6/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1879=
6/shard-hsw1/igt@perf_pmu@module-unload.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_tiled_swapping@non-threaded:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-hsw7/igt@gem_tiled_swapping@non-threaded.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#1092=
71</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18796/shard-hsw4/igt@gem_tiled_swapping@non-threaded.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/183">i915#183</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-skl8/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18796/shard-skl1=
0/igt@i915_pm_dc@dc6-psr.html">INCOMPLETE</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-i=
ndfb-onoff.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2606">i915#2606</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_18796/shard-tglb5/igt@kms_frontbuffer_tracki=
ng@fbc-1p-primscrn-cur-indfb-onoff.html">DMESG-WARN</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2606">i915#2606</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb=
-plflip-blt.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2606">i915#2606</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_18796/shard-iclb6/igt@kms_frontbuffer_track=
ing@fbc-1p-primscrn-shrfb-plflip-blt.html">DMESG-WARN</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2606">i915#2606</a>) +2 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-=
msflip-blt.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_18796/shard-skl1/igt@kms_frontbuffer_trackin=
g@psr-1p-primscrn-indfb-msflip-blt.html">INCOMPLETE</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/123">i915#123</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2606">i915#2606</a>) +1 simila=
r issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9207/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-in=
dfb-draw-render.html">DMESG-WARN</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_18796/shard-skl8/igt@kms_frontbuffer_tracking=
@psr-1p-primscrn-spr-indfb-draw-render.html">INCOMPLETE</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/123">i915#123</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9207 -&gt; Patchwork_18796</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9207: 5fde6a8070fd3847130e7f4f0dfd08cbbef0ca1d @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5827: 7fd7e3fb8b42eb4e62a4575f6edc5a048e5bec3d @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18796: eaf07c85e80822b5393cbe5dcad739aa8abde9c5 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============5596585807376058332==--

--===============0958319997==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0958319997==--
