Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D28271B27
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Sep 2020 08:55:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F1C289FF9;
	Mon, 21 Sep 2020 06:55:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D481B89DC1;
 Mon, 21 Sep 2020 06:55:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B2026A66C9;
 Mon, 21 Sep 2020 06:55:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Zbigniew_Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
Date: Mon, 21 Sep 2020 06:55:36 -0000
Message-ID: <160067133669.8245.4104828993180371761@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200921035017.6868-1-zbigniew.kempczynski@intel.com>
In-Reply-To: <20200921035017.6868-1-zbigniew.kempczynski@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Ensure_bo_is_dirty_when_WB-mapped_on_!llc_in_pagefault?=
 =?utf-8?q?_handler_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0908519400=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0908519400==
Content-Type: multipart/alternative;
 boundary="===============3963280027277469520=="

--===============3963280027277469520==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Ensure bo is dirty when WB-mapped on !llc in pagefault handler (rev2)
URL   : https://patchwork.freedesktop.org/series/81881/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9025_full -> Patchwork_18538_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18538_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18538_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18538_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@2x-nonexisting-fb-interruptible@ac-vga1-hdmi-a1:
    - shard-hsw:          NOTRUN -> [INCOMPLETE][1] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-hsw4/igt@kms_flip@2x-nonexisting-fb-interruptible@ac-vga1-hdmi-a1.html

  
Known issues
------------

  Here are the changes found in Patchwork_18538_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process@bcs0:
    - shard-skl:          [PASS][2] -> [FAIL][3] ([i915#2374])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-skl9/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-skl5/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html

  * igt@gem_ctx_persistence@legacy-engines-mixed@vebox:
    - shard-kbl:          [PASS][4] -> [DMESG-WARN][5] ([i915#1982])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-kbl3/igt@gem_ctx_persistence@legacy-engines-mixed@vebox.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-kbl4/igt@gem_ctx_persistence@legacy-engines-mixed@vebox.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-glk:          [PASS][6] -> [FAIL][7] ([i915#2389]) +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-glk2/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-glk4/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][8] -> [SKIP][9] ([i915#2190])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-tglb7/igt@gem_huc_copy@huc-copy.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [PASS][10] -> [FAIL][11] ([i915#96])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-skl:          [PASS][12] -> [DMESG-WARN][13] ([i915#1982]) +5 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-skl7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-skl2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@pipe-b-torture-bo:
    - shard-iclb:         [PASS][14] -> [DMESG-WARN][15] ([i915#128])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-iclb4/igt@kms_cursor_legacy@pipe-b-torture-bo.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-iclb7/igt@kms_cursor_legacy@pipe-b-torture-bo.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:
    - shard-skl:          [PASS][16] -> [FAIL][17] ([i915#177] / [i915#52] / [i915#54])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-skl5/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-skl7/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen:
    - shard-tglb:         [PASS][18] -> [DMESG-WARN][19] ([i915#1982]) +2 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-skl:          [PASS][20] -> [FAIL][21] ([i915#49]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][22] -> [FAIL][23] ([i915#1188]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-iclb:         [PASS][24] -> [INCOMPLETE][25] ([i915#1185] / [i915#250])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-iclb8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][26] -> [FAIL][27] ([fdo#108145] / [i915#265]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][28] -> [SKIP][29] ([fdo#109441]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-iclb6/igt@kms_psr@psr2_cursor_render.html

  
#### Possible fixes ####

  * igt@gem_eio@suspend:
    - shard-iclb:         [INCOMPLETE][30] ([i915#2483]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-iclb3/igt@gem_eio@suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-iclb1/igt@gem_eio@suspend.html

  * igt@gem_mmap_offset@blt-coherency:
    - shard-glk:          [FAIL][32] ([i915#2328]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-glk5/igt@gem_mmap_offset@blt-coherency.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-glk1/igt@gem_mmap_offset@blt-coherency.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-skl:          [TIMEOUT][34] ([i915#1958] / [i915#2424]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-skl8/igt@gem_userptr_blits@sync-unmap-cycles.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-skl3/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@i915_selftest@mock@contexts:
    - shard-apl:          [INCOMPLETE][36] ([i915#1635] / [i915#2278]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-apl2/igt@i915_selftest@mock@contexts.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-apl8/igt@i915_selftest@mock@contexts.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:
    - shard-hsw:          [INCOMPLETE][38] ([CI#80]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-hsw8/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-hsw2/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][40] ([i915#72]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@2x-dpms-vs-vblank-race@ab-vga1-hdmi-a1:
    - shard-hsw:          [DMESG-WARN][42] ([i915#1982]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-hsw6/igt@kms_flip@2x-dpms-vs-vblank-race@ab-vga1-hdmi-a1.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-hsw4/igt@kms_flip@2x-dpms-vs-vblank-race@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@bc-vga1-hdmi-a1:
    - shard-hsw:          [INCOMPLETE][44] ([i915#2055]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-hsw8/igt@kms_flip@2x-flip-vs-suspend-interruptible@bc-vga1-hdmi-a1.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-hsw4/igt@kms_flip@2x-flip-vs-suspend-interruptible@bc-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [DMESG-WARN][46] ([i915#180]) -> [PASS][47] +3 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [FAIL][48] ([i915#2122]) -> [PASS][49] +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-iclb:         [DMESG-WARN][50] ([i915#1982]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen:
    - shard-tglb:         [DMESG-WARN][52] ([i915#1982]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][54] ([i915#1188]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [DMESG-WARN][56] ([i915#1982]) -> [PASS][57] +5 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][58] ([fdo#109441]) -> [PASS][59] +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][60] ([i915#31]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-skl10/igt@kms_setmode@basic.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-skl10/igt@kms_setmode@basic.html
    - shard-hsw:          [FAIL][62] ([i915#31]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-hsw8/igt@kms_setmode@basic.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-hsw1/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-b-query-busy:
    - shard-apl:          [DMESG-WARN][64] ([i915#1635] / [i915#1982]) -> [PASS][65] +2 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-apl7/igt@kms_vblank@pipe-b-query-busy.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-apl4/igt@kms_vblank@pipe-b-query-busy.html

  
#### Warnings ####

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-skl:          [INCOMPLETE][66] ([i915#198] / [i915#1982]) -> [DMESG-WARN][67] ([i915#1982])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-skl2/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-skl1/igt@kms_flip@flip-vs-suspend@a-edp1.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2278]: https://gitlab.freedesktop.org/drm/intel/issues/2278
  [i915#2328]: https://gitlab.freedesktop.org/drm/intel/issues/2328
  [i915#2374]: https://gitlab.freedesktop.org/drm/intel/issues/2374
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2424]: https://gitlab.freedesktop.org/drm/intel/issues/2424
  [i915#2483]: https://gitlab.freedesktop.org/drm/intel/issues/2483
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9025 -> Patchwork_18538

  CI-20190529: 20190529
  CI_DRM_9025: 955d04e2ed0cf4bb4679f594a852cc2eebe8266b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5787: 0ec962017c8131de14e0cb038f7f76b1f17ed637 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18538: 3d2651f10f098ace6866668664fb8e5a145eadd1 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/index.html

--===============3963280027277469520==
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
<tr><td><b>Series:</b></td><td>drm/i915: Ensure bo is dirty when WB-mapped on !llc in pagefault handler (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/81881/">https://patchwork.freedesktop.org/series/81881/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9025_full -&gt; Patchwork_18538_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18538_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18538_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18538_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_flip@2x-nonexisting-fb-interruptible@ac-vga1-hdmi-a1:<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-hsw4/igt@kms_flip@2x-nonexisting-fb-interruptible@ac-vga1-hdmi-a1.html">INCOMPLETE</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18538_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@engines-mixed-process@bcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-skl9/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-skl5/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2374">i915#2374</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed@vebox:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-kbl3/igt@gem_ctx_persistence@legacy-engines-mixed@vebox.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-kbl4/igt@gem_ctx_persistence@legacy-engines-mixed@vebox.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-glk2/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-glk4/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-tglb7/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/96">i915#96</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-skl7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-skl2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-b-torture-bo:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-iclb4/igt@kms_cursor_legacy@pipe-b-torture-bo.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-iclb7/igt@kms_cursor_legacy@pipe-b-torture-bo.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/128">i915#128</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-skl5/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-skl7/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/177">i915#177</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/52">i915#52</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-iclb8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1185">i915#1185</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/250">i915#250</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-iclb6/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@suspend:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-iclb3/igt@gem_eio@suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2483">i915#2483</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-iclb1/igt@gem_eio@suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@blt-coherency:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-glk5/igt@gem_mmap_offset@blt-coherency.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2328">i915#2328</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-glk1/igt@gem_mmap_offset@blt-coherency.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sync-unmap-cycles:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-skl8/igt@gem_userptr_blits@sync-unmap-cycles.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2424">i915#2424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-skl3/igt@gem_userptr_blits@sync-unmap-cycles.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@contexts:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-apl2/igt@i915_selftest@mock@contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2278">i915#2278</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-apl8/igt@i915_selftest@mock@contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-hsw8/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80">CI#80</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-hsw2/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/72">i915#72</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-hsw6/igt@kms_flip@2x-dpms-vs-vblank-race@ab-vga1-hdmi-a1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-hsw4/igt@kms_flip@2x-dpms-vs-vblank-race@ab-vga1-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible@bc-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-hsw8/igt@kms_flip@2x-flip-vs-suspend-interruptible@bc-vga1-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2055">i915#2055</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-hsw4/igt@kms_flip@2x-flip-vs-suspend-interruptible@bc-vga1-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-skl10/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-skl10/igt@kms_setmode@basic.html">PASS</a></p>
</li>
<li>
<p>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-hsw8/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-hsw1/igt@kms_setmode@basic.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-query-busy:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-apl7/igt@kms_vblank@pipe-b-query-busy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-apl4/igt@kms_vblank@pipe-b-query-busy.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_flip@flip-vs-suspend@a-edp1:<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/shard-skl2/igt@kms_flip@flip-vs-suspend@a-edp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/shard-skl1/igt@kms_flip@flip-vs-suspend@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9025 -&gt; Patchwork_18538</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9025: 955d04e2ed0cf4bb4679f594a852cc2eebe8266b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5787: 0ec962017c8131de14e0cb038f7f76b1f17ed637 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18538: 3d2651f10f098ace6866668664fb8e5a145eadd1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============3963280027277469520==--

--===============0908519400==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0908519400==--
