Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3F02019A6
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2020 19:43:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 407296E3E3;
	Fri, 19 Jun 2020 17:43:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 891486E069;
 Fri, 19 Jun 2020 17:43:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 819DAA0BD0;
 Fri, 19 Jun 2020 17:43:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 19 Jun 2020 17:43:17 -0000
Message-ID: <159258859749.12536.15615864755230299481@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200619151938.21740-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200619151938.21740-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Initialise_rps_timestamp?=
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

Series: drm/i915/gt: Initialise rps timestamp
URL   : https://patchwork.freedesktop.org/series/78645/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8645_full -> Patchwork_17996_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17996_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17996_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17996_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_balancer@bonded-early:
    - shard-kbl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-kbl7/igt@gem_exec_balancer@bonded-early.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-kbl7/igt@gem_exec_balancer@bonded-early.html

  
Known issues
------------

  Here are the changes found in Patchwork_17996_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#1930])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-glk8/igt@gem_exec_reloc@basic-concurrent0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-glk2/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_schedule@implicit-write-read@rcs0:
    - shard-snb:          [PASS][5] -> [INCOMPLETE][6] ([i915#82]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-snb6/igt@gem_exec_schedule@implicit-write-read@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-snb6/igt@gem_exec_schedule@implicit-write-read@rcs0.html

  * igt@gem_exec_whisper@basic-fds-priority-all:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#93] / [i915#95]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-kbl7/igt@gem_exec_whisper@basic-fds-priority-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-kbl6/igt@gem_exec_whisper@basic-fds-priority-all.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [PASS][9] -> [DMESG-WARN][10] ([i915#402]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-tglb2/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-tglb5/igt@i915_module_load@reload.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-glk:          [PASS][11] -> [DMESG-FAIL][12] ([i915#118] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-glk4/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#95]) +11 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#54]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#79])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +8 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#198])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-skl3/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-skl3/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render:
    - shard-iclb:         [PASS][23] -> [DMESG-WARN][24] ([i915#1982])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-tglb:         [PASS][25] -> [DMESG-WARN][26] ([i915#1982]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#1188])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_lease@page_flip_implicit_plane:
    - shard-skl:          [PASS][29] -> [DMESG-WARN][30] ([i915#1982]) +8 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-skl8/igt@kms_lease@page_flip_implicit_plane.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-skl9/igt@kms_lease@page_flip_implicit_plane.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109642] / [fdo#111068])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-iclb3/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [PASS][37] -> [FAIL][38] ([i915#1542])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-iclb5/igt@perf@blocking-parameterized.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-iclb8/igt@perf@blocking-parameterized.html

  
#### Possible fixes ####

  * igt@gem_blits@basic:
    - shard-glk:          [DMESG-WARN][39] ([i915#1982]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-glk7/igt@gem_blits@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-glk8/igt@gem_blits@basic.html

  * igt@gem_exec_whisper@basic-contexts-all:
    - shard-glk:          [DMESG-WARN][41] ([i915#118] / [i915#95]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-glk1/igt@gem_exec_whisper@basic-contexts-all.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-glk7/igt@gem_exec_whisper@basic-contexts-all.html

  * igt@gem_shrink@reclaim:
    - shard-hsw:          [SKIP][43] ([fdo#109271]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-hsw1/igt@gem_shrink@reclaim.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-hsw4/igt@gem_shrink@reclaim.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglb:         [DMESG-WARN][45] ([i915#402]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-tglb1/igt@i915_module_load@reload-with-fault-injection.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-tglb3/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - shard-apl:          [DMESG-WARN][47] ([i915#95]) -> [PASS][48] +13 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-apl7/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-apl3/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - shard-apl:          [DMESG-WARN][49] ([i915#1982]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-apl2/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-apl4/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +4 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [FAIL][53] ([i915#57]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-varying-size:
    - shard-skl:          [DMESG-WARN][55] ([i915#1982]) -> [PASS][56] +7 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-skl10/igt@kms_cursor_legacy@cursora-vs-flipa-varying-size.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-skl1/igt@kms_cursor_legacy@cursora-vs-flipa-varying-size.html

  * igt@kms_cursor_legacy@pipe-c-torture-bo:
    - shard-kbl:          [DMESG-WARN][57] ([i915#128]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-kbl6/igt@kms_cursor_legacy@pipe-c-torture-bo.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-kbl6/igt@kms_cursor_legacy@pipe-c-torture-bo.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][59] ([i915#1188]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-skl5/igt@kms_hdr@bpc-switch.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-skl5/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-pipe-a-planes:
    - shard-iclb:         [DMESG-WARN][61] ([i915#1982]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-pipe-a-planes.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-iclb6/igt@kms_plane@plane-panning-bottom-right-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-iclb:         [INCOMPLETE][63] ([i915#1185] / [i915#250]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][65] ([fdo#108145] / [i915#265]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][67] ([fdo#109441]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [FAIL][69] ([i915#1820] / [i915#93] / [i915#95]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-kbl6/igt@perf_pmu@semaphore-busy@rcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-kbl4/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Warnings ####

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
    - shard-apl:          [FAIL][71] ([i915#49]) -> [DMESG-FAIL][72] ([i915#49] / [i915#95])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-apl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-apl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][73] ([i915#180] / [i915#93] / [i915#95]) -> [DMESG-WARN][74] ([i915#93] / [i915#95])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [DMESG-WARN][75] ([i915#93] / [i915#95]) -> [DMESG-WARN][76] ([i915#180] / [i915#93] / [i915#95])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-apl:          [DMESG-FAIL][77] ([i915#95]) -> [FAIL][78] ([i915#265])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  
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
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8645 -> Patchwork_17996

  CI-20190529: 20190529
  CI_DRM_8645: 9aae33db6b7490634fe14c866077c97fe7263e0a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5712: eba1135ddd35f9d3097ed91032aefe8f9a9f9d02 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17996: 8b7a3b62b511c678ed8bafb3022ea8abdde6df5f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17996/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
