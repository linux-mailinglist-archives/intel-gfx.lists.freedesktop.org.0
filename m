Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F44D2190E5
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 21:40:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3287E6E91D;
	Wed,  8 Jul 2020 19:40:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 43EE36E91C;
 Wed,  8 Jul 2020 19:40:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3D081A47E6;
 Wed,  8 Jul 2020 19:40:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 08 Jul 2020 19:40:28 -0000
Message-ID: <159423722821.3839.12437903935116604664@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200708134742.727-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200708134742.727-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/7=5D_drm/i915/gt=3A_Replace_opencoded_i9?=
 =?utf-8?b?MTVfZ2VtX29iamVjdF9waW5fbWFwKCkgKHJldjIp?=
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

Series: series starting with [1/7] drm/i915/gt: Replace opencoded i915_gem_object_pin_map() (rev2)
URL   : https://patchwork.freedesktop.org/series/79250/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8715_full -> Patchwork_18109_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18109_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18109_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18109_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-tglb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  
Known issues
------------

  Here are the changes found in Patchwork_18109_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-skl:          [PASS][3] -> [FAIL][4] ([i915#1528])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl10/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-skl1/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@gem_exec_endless@dispatch@rcs0:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#1958] / [i915#2119])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-tglb5/igt@gem_exec_endless@dispatch@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-tglb5/igt@gem_exec_endless@dispatch@rcs0.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#198] / [i915#2110])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl9/igt@i915_selftest@mock@requests.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-skl8/igt@i915_selftest@mock@requests.html

  * igt@kms_addfb_basic@size-max:
    - shard-skl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982]) +6 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl6/igt@kms_addfb_basic@size-max.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-skl3/igt@kms_addfb_basic@size-max.html

  * igt@kms_big_fb@linear-16bpp-rotate-0:
    - shard-kbl:          [PASS][11] -> [DMESG-FAIL][12] ([i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl3/igt@kms_big_fb@linear-16bpp-rotate-0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-kbl1/igt@kms_big_fb@linear-16bpp-rotate-0.html
    - shard-apl:          [PASS][13] -> [DMESG-FAIL][14] ([i915#1635] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl7/igt@kms_big_fb@linear-16bpp-rotate-0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-apl3/igt@kms_big_fb@linear-16bpp-rotate-0.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-glk:          [PASS][15] -> [DMESG-FAIL][16] ([i915#118] / [i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-glk1/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - shard-snb:          [PASS][17] -> [TIMEOUT][18] ([i915#1958] / [i915#2119])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-snb5/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-snb5/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +7 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#93] / [i915#95]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#54])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#1635] / [i915#95]) +14 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl3/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-apl4/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@pipe-a-forked-move:
    - shard-glk:          [PASS][27] -> [DMESG-WARN][28] ([i915#118] / [i915#95]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-glk1/igt@kms_cursor_legacy@pipe-a-forked-move.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-glk8/igt@kms_cursor_legacy@pipe-a-forked-move.html

  * igt@kms_flip@modeset-vs-vblank-race@b-hdmi-a1:
    - shard-glk:          [PASS][29] -> [FAIL][30] ([i915#407])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-glk2/igt@kms_flip@modeset-vs-vblank-race@b-hdmi-a1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-glk3/igt@kms_flip@modeset-vs-vblank-race@b-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][31] -> [DMESG-WARN][32] ([i915#1982]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
    - shard-iclb:         [PASS][33] -> [DMESG-WARN][34] ([i915#1982]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#1188])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-iclb:         [PASS][37] -> [INCOMPLETE][38] ([i915#1185] / [i915#250])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-iclb5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441]) +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html

  
#### Possible fixes ####

  * igt@drm_read@short-buffer-wakeup:
    - shard-skl:          [DMESG-WARN][41] ([i915#1982]) -> [PASS][42] +5 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl5/igt@drm_read@short-buffer-wakeup.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-skl4/igt@drm_read@short-buffer-wakeup.html

  * igt@gem_exec_balancer@bonded-early:
    - shard-iclb:         [FAIL][43] ([i915#926]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-iclb1/igt@gem_exec_balancer@bonded-early.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-iclb5/igt@gem_exec_balancer@bonded-early.html

  * igt@gem_exec_flush@basic-wb-pro-default:
    - shard-apl:          [DMESG-WARN][45] ([i915#1635] / [i915#95]) -> [PASS][46] +15 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl1/igt@gem_exec_flush@basic-wb-pro-default.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-apl2/igt@gem_exec_flush@basic-wb-pro-default.html

  * igt@gem_exec_whisper@basic-normal:
    - shard-glk:          [DMESG-WARN][47] ([i915#118] / [i915#95]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-glk9/igt@gem_exec_whisper@basic-normal.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-glk9/igt@gem_exec_whisper@basic-normal.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglb:         [DMESG-WARN][49] ([i915#402]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-tglb5/igt@i915_module_load@reload-with-fault-injection.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-tglb5/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [INCOMPLETE][51] ([i915#636] / [i915#69]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl3/igt@i915_suspend@forcewake.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-skl1/igt@i915_suspend@forcewake.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
    - shard-skl:          [INCOMPLETE][53] ([i915#198]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-kbl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +5 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt:
    - shard-kbl:          [DMESG-WARN][57] ([i915#93] / [i915#95]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-skl:          [FAIL][59] ([i915#49]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [DMESG-WARN][61] ([i915#1982]) -> [PASS][62] +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][63] ([fdo#108145] / [i915#265]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-b-primary-size-128:
    - shard-hsw:          [INCOMPLETE][65] -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-hsw7/igt@kms_plane_cursor@pipe-b-primary-size-128.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-hsw7/igt@kms_plane_cursor@pipe-b-primary-size-128.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][67] ([fdo#109642] / [fdo#111068]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-iclb6/igt@kms_psr2_su@page_flip.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-iclb6/igt@kms_psr@psr2_suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][71] ([i915#31]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl2/igt@kms_setmode@basic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-kbl2/igt@kms_setmode@basic.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [FAIL][73] ([i915#1820]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl3/igt@perf_pmu@semaphore-busy@rcs0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-kbl6/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [FAIL][75] ([i915#1930]) -> [TIMEOUT][76] ([i915#1958] / [i915#2119])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-glk:          [INCOMPLETE][77] ([i915#1958] / [i915#58] / [k.org#198133]) -> [TIMEOUT][78] ([i915#1958] / [i915#2119])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-glk4/igt@gem_exec_reloc@basic-concurrent16.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-glk4/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_vm_create@execbuf:
    - shard-snb:          [SKIP][79] ([fdo#109271]) -> [TIMEOUT][80] ([i915#1958] / [i915#2119]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-snb5/igt@gem_vm_create@execbuf.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-snb5/igt@gem_vm_create@execbuf.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-blt:
    - shard-apl:          [SKIP][81] ([fdo#109271] / [i915#1635]) -> [SKIP][82] ([fdo#109271]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-blt.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-apl2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_plane_cursor@pipe-d-viewport-size-128:
    - shard-apl:          [SKIP][83] ([fdo#109271]) -> [SKIP][84] ([fdo#109271] / [i915#1635]) +3 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl3/igt@kms_plane_cursor@pipe-d-viewport-size-128.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-apl4/igt@kms_plane_cursor@pipe-d-viewport-size-128.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][85], [FAIL][86], [FAIL][87]) ([i915#1610] / [i915#1635] / [i915#2110]) -> [FAIL][88] ([i915#1635] / [i915#2110])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl1/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl3/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl2/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-apl1/igt@runner@aborted.html
    - shard-tglb:         [FAIL][89] ([i915#2110]) -> [FAIL][90] ([i915#1764] / [i915#2110])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-tglb7/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/shard-tglb3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1764]: https://gitlab.freedesktop.org/drm/intel/issues/1764
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#407]: https://gitlab.freedesktop.org/drm/intel/issues/407
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#926]: https://gitlab.freedesktop.org/drm/intel/issues/926
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8715 -> Patchwork_18109

  CI-20190529: 20190529
  CI_DRM_8715: 76c2d43437601608d75f61a9eb6cf3a7aae5e02b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5728: 6988eebf78e9ce9746b8c2b7d21cb4174d6623a9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18109: 4440561be40d3f2adc6856204ce4377e4527bac3 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18109/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
