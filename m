Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D95217C5E
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 02:49:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C2056E211;
	Wed,  8 Jul 2020 00:49:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CA5266E211;
 Wed,  8 Jul 2020 00:49:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C4A76A47DB;
 Wed,  8 Jul 2020 00:49:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Wed, 08 Jul 2020 00:49:24 -0000
Message-ID: <159416936478.3838.17701608244151646852@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200707204530.42289-1-jose.souza@intel.com>
In-Reply-To: <20200707204530.42289-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/ehl=3A_Add_new_PCI_ids_=28rev2=29?=
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

Series: drm/i915/ehl: Add new PCI ids (rev2)
URL   : https://patchwork.freedesktop.org/series/78910/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8711_full -> Patchwork_18100_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18100_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18100_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18100_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  
Known issues
------------

  Here are the changes found in Patchwork_18100_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#1930])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-glk6/igt@gem_exec_reloc@basic-concurrent0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-glk8/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#118] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-glk4/igt@gem_exec_whisper@basic-fds-forked-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-glk4/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl8/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-apl7/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
    - shard-skl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982]) +6 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-skl8/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-skl10/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [PASS][11] -> [DMESG-FAIL][12] ([i915#118] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-glk6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-random:
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#54])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html

  * igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge:
    - shard-glk:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-glk7/igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-glk9/igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([IGT#5])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render:
    - shard-tglb:         [PASS][19] -> [DMESG-WARN][20] ([i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-render:
    - shard-iclb:         [PASS][21] -> [FAIL][22] ([i915#49])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-render.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145] / [i915#265]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][27] -> [FAIL][28] ([i915#31])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl1/igt@kms_setmode@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-kbl7/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-query-forked:
    - shard-snb:          [PASS][29] -> [TIMEOUT][30] ([i915#1958] / [i915#2119])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-snb5/igt@kms_vblank@pipe-a-query-forked.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-snb2/igt@kms_vblank@pipe-a-query-forked.html

  * igt@kms_vblank@pipe-c-query-forked:
    - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#1635] / [i915#95]) +25 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl8/igt@kms_vblank@pipe-c-query-forked.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-apl1/igt@kms_vblank@pipe-c-query-forked.html

  * igt@vgem_basic@dmabuf-export:
    - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#93] / [i915#95]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl2/igt@vgem_basic@dmabuf-export.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-kbl1/igt@vgem_basic@dmabuf-export.html

  
#### Possible fixes ####

  * igt@gem_eio@wait-wedge-10ms:
    - shard-apl:          [DMESG-WARN][35] ([i915#1635] / [i915#95]) -> [PASS][36] +17 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl7/igt@gem_eio@wait-wedge-10ms.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-apl8/igt@gem_eio@wait-wedge-10ms.html

  * igt@gem_exec_balancer@bonded-early:
    - shard-kbl:          [FAIL][37] ([i915#2079]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl4/igt@gem_exec_balancer@bonded-early.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-kbl1/igt@gem_exec_balancer@bonded-early.html

  * igt@gem_exec_create@madvise:
    - shard-glk:          [DMESG-WARN][39] ([i915#118] / [i915#95]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-glk5/igt@gem_exec_create@madvise.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-glk7/igt@gem_exec_create@madvise.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt:
    - shard-iclb:         [INCOMPLETE][41] ([i915#2119]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-iclb1/igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-iclb5/igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][43] ([i915#1436] / [i915#716]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl8/igt@gen9_exec_parse@allowed-all.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-apl7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-apl:          [INCOMPLETE][45] ([i915#1635]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl4/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-apl3/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@i915_selftest@mock@requests:
    - shard-apl:          [INCOMPLETE][47] ([i915#1635] / [i915#2110]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl7/igt@i915_selftest@mock@requests.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-apl8/igt@i915_selftest@mock@requests.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [DMESG-WARN][49] ([i915#1982]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-glk2/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-glk5/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +7 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [FAIL][53] ([i915#72]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled:
    - shard-apl:          [DMESG-WARN][55] ([i915#1982]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl1/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-apl6/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled:
    - shard-skl:          [DMESG-WARN][57] ([i915#1982]) -> [PASS][58] +5 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-skl9/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
    - shard-kbl:          [DMESG-WARN][59] ([i915#93] / [i915#95]) -> [PASS][60] +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl7/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-kbl3/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][61] ([i915#79]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@dpms-vs-vblank-race@a-edp1:
    - shard-tglb:         [DMESG-WARN][63] ([i915#1982]) -> [PASS][64] +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-tglb1/igt@kms_flip@dpms-vs-vblank-race@a-edp1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-tglb6/igt@kms_flip@dpms-vs-vblank-race@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1:
    - shard-glk:          [FAIL][65] -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-glk8/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-glk3/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check@b-edp1:
    - shard-skl:          [FAIL][67] -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-skl7/igt@kms_flip@plain-flip-ts-check@b-edp1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-skl4/igt@kms_flip@plain-flip-ts-check@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:
    - shard-iclb:         [FAIL][69] ([i915#49]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][71] ([i915#1188]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][73] ([i915#69]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-skl9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][75] ([fdo#108145] / [i915#265]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][77] ([fdo#109441]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-iclb6/igt@kms_psr@psr2_cursor_blt.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_universal_plane@universal-plane-pipe-b-functional:
    - shard-tglb:         [DMESG-WARN][79] ([i915#402]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-tglb6/igt@kms_universal_plane@universal-plane-pipe-b-functional.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-tglb5/igt@kms_universal_plane@universal-plane-pipe-b-functional.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-apl:          [FAIL][81] ([i915#1732]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl3/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-apl7/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [FAIL][83] ([i915#1930]) -> [TIMEOUT][84] ([i915#1958] / [i915#2119])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@kms_chamelium@hdmi-audio-edid:
    - shard-apl:          [SKIP][85] ([fdo#109271] / [fdo#111827]) -> [SKIP][86] ([fdo#109271] / [fdo#111827] / [i915#1635])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl2/igt@kms_chamelium@hdmi-audio-edid.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-apl1/igt@kms_chamelium@hdmi-audio-edid.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [FAIL][87] ([fdo#110321] / [fdo#110336]) -> [DMESG-FAIL][88] ([fdo#110321] / [i915#1635] / [i915#95])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl8/igt@kms_content_protection@legacy.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-apl7/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [TIMEOUT][89] ([i915#1319] / [i915#2119]) -> [TIMEOUT][90] ([i915#1319] / [i915#1958] / [i915#2119])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl3/igt@kms_content_protection@srm.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-kbl4/igt@kms_content_protection@srm.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-snb:          [SKIP][91] ([fdo#109271]) -> [TIMEOUT][92] ([i915#1958] / [i915#2119]) +3 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-snb5/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-snb2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1:
    - shard-tglb:         [FAIL][93] ([i915#2122]) -> [DMESG-FAIL][94] ([i915#1982])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-tglb8/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-tglb6/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1:
    - shard-tglb:         [DMESG-FAIL][95] ([i915#1982]) -> [FAIL][96] ([i915#2122])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-tglb8/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-tglb7/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][97] ([i915#180] / [i915#93] / [i915#95]) -> [DMESG-WARN][98] ([i915#93] / [i915#95]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack:
    - shard-apl:          [SKIP][99] ([fdo#109271]) -> [SKIP][100] ([fdo#109271] / [i915#1635]) +10 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl7/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-apl7/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
    - shard-apl:          [SKIP][101] ([fdo#109271] / [i915#1635]) -> [SKIP][102] ([fdo#109271]) +9 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8711/shard-apl4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/shard-apl3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1732]: https://gitlab.freedesktop.org/drm/intel/issues/1732
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2079]: https://gitlab.freedesktop.org/drm/intel/issues/2079
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8711 -> Patchwork_18100

  CI-20190529: 20190529
  CI_DRM_8711: c9761aec5a7938e206d29ace9f0d96ce93306ee6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5727: 90254c14f4e68bec9d4a114ddf039075f3c1a30c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18100: 859dc96b8639df446c0676564017fccfe36a3324 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18100/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
