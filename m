Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A24D21A247
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 16:40:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3C736EA96;
	Thu,  9 Jul 2020 14:40:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9D8036EA91;
 Thu,  9 Jul 2020 14:40:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8C104A47EE;
 Thu,  9 Jul 2020 14:40:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 09 Jul 2020 14:40:19 -0000
Message-ID: <159430561955.31092.7562427203899248497@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200709114119.28122-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200709114119.28122-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/6=5D_drm/i915=3A_Add_a_couple_of_missing?=
 =?utf-8?q?_i915=5Factive=5Ffini=28=29?=
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

Series: series starting with [1/6] drm/i915: Add a couple of missing i915_active_fini()
URL   : https://patchwork.freedesktop.org/series/79297/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8718_full -> Patchwork_18121_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18121_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18121_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18121_full:

### IGT changes ###

#### Warnings ####

  * igt@runner@aborted:
    - shard-tglb:         ([FAIL][1], [FAIL][2]) ([i915#2110]) -> ([FAIL][3], [FAIL][4], [FAIL][5]) ([i915#1602] / [i915#1764] / [i915#2110])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-tglb7/igt@runner@aborted.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-tglb8/igt@runner@aborted.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-tglb3/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-tglb8/igt@runner@aborted.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-tglb7/igt@runner@aborted.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@glsl-1.50@execution@built-in-functions@gs-op-assign-div-ivec2-int (NEW):
    - pig-snb-2600:       NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/pig-snb-2600/spec@glsl-1.50@execution@built-in-functions@gs-op-assign-div-ivec2-int.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8718_full and Patchwork_18121_full:

### New Piglit tests (1) ###

  * spec@glsl-1.50@execution@built-in-functions@gs-op-assign-div-ivec2-int:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  

Known issues
------------

  Here are the changes found in Patchwork_18121_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_params@invalid-fence-in:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#93] / [i915#95]) +4 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-kbl3/igt@gem_exec_params@invalid-fence-in.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-kbl3/igt@gem_exec_params@invalid-fence-in.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [PASS][9] -> [DMESG-WARN][10] ([i915#402])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-tglb7/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-tglb8/igt@i915_module_load@reload.html
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-apl2/igt@i915_module_load@reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-apl3/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-hsw:          [PASS][13] -> [INCOMPLETE][14] ([i915#151])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-hsw7/igt@i915_pm_rpm@system-suspend-execbuf.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-hsw4/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#69])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-skl7/igt@i915_suspend@fence-restore-tiled2untiled.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-skl9/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1635] / [i915#95]) +26 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge:
    - shard-glk:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-glk9/igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-glk1/igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#72])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
    - shard-tglb:         [PASS][23] -> [DMESG-WARN][24] ([i915#1982])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html

  * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#2122])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
    - shard-tglb:         [PASS][27] -> [SKIP][28] ([i915#668]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#1188])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-pipe-a-planes:
    - shard-skl:          [PASS][31] -> [DMESG-WARN][32] ([i915#1982]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-skl4/igt@kms_plane@plane-panning-bottom-right-pipe-a-planes.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-skl4/igt@kms_plane@plane-panning-bottom-right-pipe-a-planes.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109642] / [fdo#111068])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-iclb1/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-iclb8/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180]) +4 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-b-accuracy-idle:
    - shard-apl:          [PASS][39] -> [FAIL][40] ([i915#43])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-apl4/igt@kms_vblank@pipe-b-accuracy-idle.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-apl6/igt@kms_vblank@pipe-b-accuracy-idle.html

  * igt@kms_vblank@pipe-b-wait-forked-hang:
    - shard-tglb:         [PASS][41] -> [INCOMPLETE][42] ([i915#750])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-tglb5/igt@kms_vblank@pipe-b-wait-forked-hang.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-tglb3/igt@kms_vblank@pipe-b-wait-forked-hang.html

  
#### Possible fixes ####

  * igt@gem_ctx_param@basic:
    - shard-apl:          [DMESG-WARN][43] ([i915#1635] / [i915#95]) -> [PASS][44] +27 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-apl6/igt@gem_ctx_param@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-apl3/igt@gem_ctx_param@basic.html

  * igt@gem_eio@reset-stress:
    - shard-hsw:          [INCOMPLETE][45] ([CI#80]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-hsw2/igt@gem_eio@reset-stress.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-hsw7/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@bonded-early:
    - shard-tglb:         [FAIL][47] ([i915#2079]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-tglb6/igt@gem_exec_balancer@bonded-early.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-tglb7/igt@gem_exec_balancer@bonded-early.html

  * igt@gem_exec_whisper@basic-queues-all:
    - shard-glk:          [DMESG-WARN][49] ([i915#118] / [i915#95]) -> [PASS][50] +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-glk3/igt@gem_exec_whisper@basic-queues-all.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-glk3/igt@gem_exec_whisper@basic-queues-all.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-skl:          [INCOMPLETE][51] ([CI#80] / [i915#69]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-skl9/igt@gem_workarounds@suspend-resume-context.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-skl10/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-apl:          [DMESG-WARN][53] ([i915#1982]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-apl2/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-apl3/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
    - shard-glk:          [DMESG-FAIL][55] ([i915#118] / [i915#95]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-glk9/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_flip@blocking-wf_vblank@a-edp1:
    - shard-tglb:         [INCOMPLETE][57] -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-tglb8/igt@kms_flip@blocking-wf_vblank@a-edp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-tglb5/igt@kms_flip@blocking-wf_vblank@a-edp1.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1:
    - shard-tglb:         [FAIL][59] ([i915#2122]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-tglb7/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-tglb8/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [DMESG-WARN][61] ([i915#1982]) -> [PASS][62] +8 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [FAIL][63] ([i915#2122]) -> [PASS][64] +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-tglb:         [DMESG-WARN][65] ([i915#1982]) -> [PASS][66] +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +4 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-tglb:         [DMESG-WARN][69] ([i915#402]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-tglb2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-tglb8/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][71] ([fdo#108145] / [i915#265]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][73] ([fdo#109441]) -> [PASS][74] +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [FAIL][75] ([i915#31]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-hsw7/igt@kms_setmode@basic.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-hsw6/igt@kms_setmode@basic.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [FAIL][77] ([i915#1820]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-kbl4/igt@perf_pmu@semaphore-busy@rcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-kbl3/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          [SKIP][79] ([fdo#109271] / [i915#1937]) -> [SKIP][80] ([fdo#109271] / [i915#1635] / [i915#1937])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-apl8/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-apl6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-apl:          [SKIP][81] ([fdo#109271] / [fdo#111827] / [i915#1635]) -> [SKIP][82] ([fdo#109271] / [fdo#111827])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-apl1/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-apl2/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
    - shard-apl:          [SKIP][83] ([fdo#109271] / [i915#1635]) -> [SKIP][84] ([fdo#109271]) +10 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-apl6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-apl8/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
    - shard-apl:          [SKIP][85] ([fdo#109271]) -> [SKIP][86] ([fdo#109271] / [i915#1635]) +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-apl1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-apl2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][87] ([i915#180] / [i915#93] / [i915#95]) -> [DMESG-WARN][88] ([i915#93] / [i915#95])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-tglb:         [DMESG-WARN][89] ([i915#1982]) -> [SKIP][90] ([i915#668])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][91], [FAIL][92]) ([i915#1610] / [i915#1635] / [i915#2110]) -> [FAIL][93] ([i915#1635] / [i915#2110])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-apl6/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8718/shard-apl2/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/shard-apl3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1764]: https://gitlab.freedesktop.org/drm/intel/issues/1764
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2079]: https://gitlab.freedesktop.org/drm/intel/issues/2079
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#43]: https://gitlab.freedesktop.org/drm/intel/issues/43
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_8718 -> Patchwork_18121

  CI-20190529: 20190529
  CI_DRM_8718: 1bab8016997931971e986af01de252120896af95 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5729: a048d54f58dd70b07dbeb4541b273ec230ddb586 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18121: 401b721f69ea8a3deea2cc7c204b9c9f525ad5ca @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18121/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
