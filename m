Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9EC92201FB
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 03:48:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 699816E169;
	Wed, 15 Jul 2020 01:48:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 93DF56E15E;
 Wed, 15 Jul 2020 01:48:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8E093A0BD0;
 Wed, 15 Jul 2020 01:48:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anitha Chrisanthus" <anitha.chrisanthus@intel.com>
Date: Wed, 15 Jul 2020 01:48:25 -0000
Message-ID: <159477770554.3437.69571443012924494@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1594760265-11618-1-git-send-email-anitha.chrisanthus@intel.com>
In-Reply-To: <1594760265-11618-1-git-send-email-anitha.chrisanthus@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_support_for_KeemBay_DRM_driver?=
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
Content-Type: multipart/mixed; boundary="===============1805749748=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1805749748==
Content-Type: multipart/alternative;
 boundary="===============3536033414096467698=="

--===============3536033414096467698==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add support for KeemBay DRM driver
URL   : https://patchwork.freedesktop.org/series/79495/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8747_full -> Patchwork_18169_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18169_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-fds:
    - shard-glk:          [PASS][1] -> [DMESG-WARN][2] ([i915#118] / [i915#95])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-glk8/igt@gem_exec_whisper@basic-fds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-glk1/igt@gem_exec_whisper@basic-fds.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-tglb2/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-tglb5/igt@i915_module_load@reload.html

  * igt@i915_selftest@mock@requests:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#2110])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-tglb7/igt@i915_selftest@mock@requests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-tglb6/igt@i915_selftest@mock@requests.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#54])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html

  * igt@kms_flip@basic-plain-flip@a-edp1:
    - shard-skl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982]) +10 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-skl7/igt@kms_flip@basic-plain-flip@a-edp1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-skl1/igt@kms_flip@basic-plain-flip@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
    - shard-tglb:         [PASS][13] -> [DMESG-WARN][14] ([i915#1982]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([fdo#108145] / [i915#265]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109441]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-iclb1/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [PASS][19] -> [FAIL][20] ([i915#1542])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-iclb2/igt@perf@blocking-parameterized.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-iclb7/igt@perf@blocking-parameterized.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@bonded-early:
    - shard-kbl:          [FAIL][21] ([i915#2079]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-kbl1/igt@gem_exec_balancer@bonded-early.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-kbl6/igt@gem_exec_balancer@bonded-early.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [FAIL][23] ([i915#1930]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-glk5/igt@gem_exec_reloc@basic-concurrent0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-glk4/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-glk:          [DMESG-WARN][25] ([i915#118] / [i915#95]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-glk9/igt@gem_exec_whisper@basic-queues-priority.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-glk9/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-iclb:         [DMESG-WARN][27] ([i915#1982]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-iclb2/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-iclb1/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_softpin@noreloc-interruptible:
    - shard-snb:          [INCOMPLETE][29] ([i915#82]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-snb4/igt@gem_softpin@noreloc-interruptible.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-snb4/igt@gem_softpin@noreloc-interruptible.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][31] ([i915#118] / [i915#95]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-glk1/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][33] ([i915#165]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled:
    - shard-glk:          [DMESG-WARN][35] ([i915#1982]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-glk3/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-glk4/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][37] ([i915#79]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:
    - shard-tglb:         [DMESG-WARN][41] ([i915#1982]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][43] ([i915#123] / [i915#69]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-skl9/igt@kms_frontbuffer_tracking@psr-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-skl3/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][45] ([i915#1188]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-128:
    - shard-skl:          [DMESG-WARN][47] ([i915#1982]) -> [PASS][48] +7 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-skl2/igt@kms_plane_cursor@pipe-a-viewport-size-128.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-skl9/igt@kms_plane_cursor@pipe-a-viewport-size-128.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][49] ([fdo#109642] / [fdo#111068]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-iclb1/igt@kms_psr2_su@page_flip.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][51] ([fdo#109441]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][53] ([i915#31]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-kbl2/igt@kms_setmode@basic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-kbl1/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-query-busy-hang:
    - shard-snb:          [TIMEOUT][55] ([i915#1958] / [i915#2119]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-snb4/igt@kms_vblank@pipe-a-query-busy-hang.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-snb4/igt@kms_vblank@pipe-a-query-busy-hang.html

  * igt@kms_vblank@pipe-c-query-forked-busy-hang:
    - shard-apl:          [DMESG-WARN][57] ([i915#1635] / [i915#1982]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-apl6/igt@kms_vblank@pipe-c-query-forked-busy-hang.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-apl2/igt@kms_vblank@pipe-c-query-forked-busy-hang.html

  * igt@testdisplay:
    - shard-kbl:          [TIMEOUT][59] ([i915#1692] / [i915#1958] / [i915#2119]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-kbl6/igt@testdisplay.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-kbl6/igt@testdisplay.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [TIMEOUT][61] ([i915#1958] / [i915#2119]) -> [FAIL][62] ([i915#1930])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-snb4/igt@gem_exec_reloc@basic-concurrent16.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-snb4/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-kbl:          [TIMEOUT][63] ([i915#1319] / [i915#1958] / [i915#2119]) -> [TIMEOUT][64] ([i915#1319] / [i915#2119])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-kbl7/igt@kms_content_protection@atomic-dpms.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-kbl4/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_plane_cursor@pipe-d-overlay-size-128:
    - shard-snb:          [TIMEOUT][65] ([i915#1958] / [i915#2119]) -> [SKIP][66] ([fdo#109271]) +3 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-snb4/igt@kms_plane_cursor@pipe-d-overlay-size-128.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-snb4/igt@kms_plane_cursor@pipe-d-overlay-size-128.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][67], [FAIL][68], [FAIL][69]) ([fdo#109271] / [i915#1610] / [i915#1635] / [i915#2110] / [i915#637] / [i915#716]) -> ([FAIL][70], [FAIL][71]) ([fdo#109271] / [i915#1635] / [i915#2110] / [i915#716])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-apl4/igt@runner@aborted.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-apl7/igt@runner@aborted.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-apl4/igt@runner@aborted.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-apl6/igt@runner@aborted.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-apl7/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][72], [FAIL][73]) ([i915#1602] / [i915#2110]) -> [FAIL][74] ([i915#2110])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-tglb2/igt@runner@aborted.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-tglb7/igt@runner@aborted.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-tglb6/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1692]: https://gitlab.freedesktop.org/drm/intel/issues/1692
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2079]: https://gitlab.freedesktop.org/drm/intel/issues/2079
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#637]: https://gitlab.freedesktop.org/drm/intel/issues/637
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8747 -> Patchwork_18169

  CI-20190529: 20190529
  CI_DRM_8747: f778a4bc7c6d0314c8a007e792313f5cbd549566 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5735: 21f8204e54c122e4a0f8ca4b59e4b2db8d1ba687 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18169: 11dfcd1512d71acb121517ec84bac47e4b257f2d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/index.html

--===============3536033414096467698==
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
<tr><td><b>Series:</b></td><td>Add support for KeemBay DRM driver</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/79495/">https://patchwork.freedesktop.org/series/79495/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18169/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18169/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8747_full -&gt; Patchwork_18169_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18169_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-fds:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-glk8/igt@gem_exec_whisper@basic-fds.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-=
glk1/igt@gem_exec_whisper@basic-fds.html">DMESG-WARN</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-tglb2/igt@i915_module_load@reload.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-tg=
lb5/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</=
li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@requests:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-tglb7/igt@i915_selftest@mock@requests.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shar=
d-tglb6/igt@i915_selftest@mock@requests.html">INCOMPLETE</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2110">i915#2110</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18169/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i91=
5#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-skl7/igt@kms_flip@basic-plain-flip@a-edp1.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/=
shard-skl1/igt@kms_flip@basic-plain-flip@a-edp1.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) =
+10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18169/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.htm=
l">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/180">i915#180</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb=
-msflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_18169/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-p=
rimscrn-shrfb-msflip-blt.html">DMESG-WARN</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18169/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-=
min.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/=
shard-iclb1/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@perf@blocking-parameterized:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-iclb2/igt@perf@blocking-parameterized.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shar=
d-iclb7/igt@perf@blocking-parameterized.html">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@bonded-early:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-kbl1/igt@gem_exec_balancer@bonded-early.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2079">i915#2079<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
169/shard-kbl6/igt@gem_exec_balancer@bonded-early.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-concurrent0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-glk5/igt@gem_exec_reloc@basic-concurrent0.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1930">i915#193=
0</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18169/shard-glk4/igt@gem_exec_reloc@basic-concurrent0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-glk9/igt@gem_exec_whisper@basic-queues-priority.html">DM=
ESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/11=
8">i915#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/95">i915#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_18169/shard-glk9/igt@gem_exec_whisper@basic-queues-priority.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-iclb2/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198=
2">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_18169/shard-iclb1/igt@gem_mmap_gtt@cpuset-basic-small-copy.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-interruptible:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-snb4/igt@gem_softpin@noreloc-interruptible.html">INCOMPL=
ETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/82">i91=
5#82</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_18169/shard-snb4/igt@gem_softpin@noreloc-interruptible.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html">DMESG-F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i9=
15#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95"=
>i915#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18169/shard-glk1/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">DMES=
G-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/165"=
>i915#165</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_18169/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-glk3/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-u=
ntiled.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_18169/shard-glk4/igt@kms_draw_crc@draw-method-xr=
gb2101010-mmap-gtt-untiled.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-h=
dmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18169/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@bc=
-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#=
180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18169/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw=
-render.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_18169/shard-tglb8/igt@kms_frontbuffer_tracking@=
fbcpsr-rgb101010-draw-render.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-skl9/igt@kms_frontbuffer_tracking@psr-suspend.html">INCO=
MPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/123"=
>i915#123</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
69">i915#69</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_18169/shard-skl3/igt@kms_frontbuffer_tracking@psr-suspend.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/sha=
rd-skl5/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-viewport-size-128:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-skl2/igt@kms_plane_cursor@pipe-a-viewport-size-128.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_18169/shard-skl9/igt@kms_plane_cursor@pipe-a-viewport-size-1=
28.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-iclb1/igt@kms_psr2_su@page_flip.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> /=
 <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#1110=
68</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18169/shard-iclb2/igt@kms_psr2_su@page_flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#1094=
41</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18169/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-kbl2/igt@kms_setmode@basic.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-kbl1/ig=
t@kms_setmode@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-query-busy-hang:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-snb4/igt@kms_vblank@pipe-a-query-busy-hang.html">TIMEOUT=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1958">i915=
#1958</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2119=
">i915#2119</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_18169/shard-snb4/igt@kms_vblank@pipe-a-query-busy-hang.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-query-forked-busy-hang:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-apl6/igt@kms_vblank@pipe-c-query-forked-busy-hang.html">=
DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1635">i915#1635</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_18169/shard-apl2/igt@kms_vblank@pipe-c-query-forked-bus=
y-hang.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@testdisplay:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-kbl6/igt@testdisplay.html">TIMEOUT</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1692">i915#1692</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/=
shard-kbl6/igt@testdisplay.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-concurrent16:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-snb4/igt@gem_exec_reloc@basic-concurrent16.html">TIMEOUT=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1958">i915=
#1958</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2119=
">i915#2119</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_18169/shard-snb4/igt@gem_exec_reloc@basic-concurrent16.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1930">i915=
#1930</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-kbl7/igt@kms_content_protection@atomic-dpms.html">TIMEOU=
T</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1319">i91=
5#1319</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/195=
8">i915#1958</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2119">i915#2119</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18169/shard-kbl4/igt@kms_content_protection@atomic-dpms.ht=
ml">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1319">i915#1319</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2119">i915#2119</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-d-overlay-size-128:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-snb4/igt@kms_plane_cursor@pipe-d-overlay-size-128.html">=
TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/195=
8">i915#1958</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2119">i915#2119</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18169/shard-snb4/igt@kms_plane_cursor@pipe-d-overlay-size-=
128.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-apl7/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_8747/shard-apl4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2110">i915#2110<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/637">i915#=
637</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i=
915#716</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18169/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/shard-apl7/igt@runner@a=
borted.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/1635">i915#1635</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2110">i915#2110</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/716">i915#716</a>)</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8747/shard-tglb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/shard-tglb7/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1602">i915#1602</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2110">i915#2110</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_18169/shard-tglb6/igt@runner@aborted.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2110">i915#2=
110</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8747 -&gt; Patchwork_18169</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8747: f778a4bc7c6d0314c8a007e792313f5cbd549566 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5735: 21f8204e54c122e4a0f8ca4b59e4b2db8d1ba687 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18169: 11dfcd1512d71acb121517ec84bac47e4b257f2d @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============3536033414096467698==--

--===============1805749748==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1805749748==--
