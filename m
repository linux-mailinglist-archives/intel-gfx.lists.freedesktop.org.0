Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5549821AA76
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 00:26:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 922B36EB47;
	Thu,  9 Jul 2020 22:26:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E453E6EB46;
 Thu,  9 Jul 2020 22:26:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DE2A5A47DF;
 Thu,  9 Jul 2020 22:26:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 09 Jul 2020 22:26:06 -0000
Message-ID: <159433356687.31094.7211963943106799260@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200709190111.5492-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200709190111.5492-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Optimise_aliasing-ppgtt_allocations?=
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

Series: drm/i915/gt: Optimise aliasing-ppgtt allocations
URL   : https://patchwork.freedesktop.org/series/79307/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8721_full -> Patchwork_18126_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18126_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18126_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18126_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-iclb1/igt@gem_exec_whisper@basic-queues-forked-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-iclb7/igt@gem_exec_whisper@basic-queues-forked-all.html

  
Known issues
------------

  Here are the changes found in Patchwork_18126_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_exec_params@invalid-fence-in:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#93] / [i915#95]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-kbl4/igt@gem_exec_params@invalid-fence-in.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-kbl1/igt@gem_exec_params@invalid-fence-in.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#198] / [i915#2110])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-skl3/igt@i915_selftest@mock@requests.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-skl10/igt@i915_selftest@mock@requests.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
    - shard-skl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982]) +8 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-skl9/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-skl5/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html

  * igt@kms_color@pipe-a-ctm-red-to-blue:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#129])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-skl9/igt@kms_color@pipe-a-ctm-red-to-blue.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-skl5/igt@kms_color@pipe-a-ctm-red-to-blue.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1635] / [i915#95]) +25 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
    - shard-kbl:          [PASS][15] -> [DMESG-FAIL][16] ([i915#54] / [i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-random:
    - shard-snb:          [PASS][17] -> [TIMEOUT][18] ([i915#1958] / [i915#2119]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-snb4/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html

  * igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge:
    - shard-glk:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-glk1/igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-glk4/igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-varying-size:
    - shard-snb:          [PASS][21] -> [SKIP][22] ([fdo#109271])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-snb4/igt@kms_cursor_legacy@cursora-vs-flipa-varying-size.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-snb6/igt@kms_cursor_legacy@cursora-vs-flipa-varying-size.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:
    - shard-iclb:         [PASS][23] -> [DMESG-WARN][24] ([i915#1982])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-iclb:         [PASS][25] -> [INCOMPLETE][26] ([i915#1185] / [i915#250])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] / [i915#265]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-iclb2/igt@kms_psr@psr2_basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-iclb4/igt@kms_psr@psr2_basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-skl:          [PASS][31] -> [INCOMPLETE][32] ([i915#69])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-skl7/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-skl2/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [PASS][33] -> [FAIL][34] ([i915#1542])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-iclb8/igt@perf@blocking-parameterized.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-iclb8/igt@perf@blocking-parameterized.html

  * igt@perf_pmu@busy-check-all@bcs0:
    - shard-glk:          [PASS][35] -> [INCOMPLETE][36] ([i915#58] / [k.org#198133])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-glk7/igt@perf_pmu@busy-check-all@bcs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-glk6/igt@perf_pmu@busy-check-all@bcs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-skl:          [FAIL][37] ([i915#1528]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-skl9/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-skl5/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [FAIL][39] ([i915#1930]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-glk5/igt@gem_exec_reloc@basic-concurrent0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-glk3/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [DMESG-WARN][41] ([i915#402]) -> [PASS][42] +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-tglb5/igt@i915_module_load@reload.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-tglb6/igt@i915_module_load@reload.html

  * igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge:
    - shard-skl:          [DMESG-WARN][43] ([i915#1982]) -> [PASS][44] +10 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-skl4/igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-skl1/igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-untiled:
    - shard-apl:          [DMESG-WARN][45] ([i915#1635] / [i915#95]) -> [PASS][46] +29 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-apl3/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-apl4/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:
    - shard-apl:          [DMESG-WARN][47] ([i915#1982]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-apl6/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-apl3/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][49] ([i915#79]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][51] ([i915#2122]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-glk1/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-fences@a-edp1:
    - shard-iclb:         [DMESG-WARN][53] ([i915#1982]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-iclb2/igt@kms_flip@flip-vs-fences@a-edp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-iclb4/igt@kms_flip@flip-vs-fences@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +5 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt:
    - shard-tglb:         [DMESG-WARN][57] ([i915#1982]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][59] ([i915#1188]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][61] ([fdo#108145] / [i915#265]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][63] ([fdo#109441]) -> [PASS][64] +3 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-iclb4/igt@kms_psr@psr2_cursor_render.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [FAIL][65] ([i915#1930]) -> [TIMEOUT][66] ([i915#1958] / [i915#2119])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-snb4/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_exec_reloc@basic-spin-others@vcs0:
    - shard-snb:          [WARN][67] ([i915#2021]) -> [WARN][68] ([i915#2036])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-snb1/igt@gem_exec_reloc@basic-spin-others@vcs0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-snb2/igt@gem_exec_reloc@basic-spin-others@vcs0.html

  * igt@gem_render_copy@linear-to-vebox-y-tiled:
    - shard-apl:          [SKIP][69] ([fdo#109271]) -> [SKIP][70] ([fdo#109271] / [i915#1635]) +7 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-apl4/igt@gem_render_copy@linear-to-vebox-y-tiled.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-apl6/igt@gem_render_copy@linear-to-vebox-y-tiled.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][71] ([i915#658]) -> [SKIP][72] ([i915#588])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          [SKIP][73] ([fdo#109271] / [i915#1635] / [i915#1937]) -> [SKIP][74] ([fdo#109271] / [i915#1937])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-apl6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-apl3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [DMESG-WARN][75] ([i915#180]) -> [INCOMPLETE][76] ([i915#155] / [i915#636])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-kbl7/igt@i915_suspend@forcewake.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-kbl1/igt@i915_suspend@forcewake.html

  * igt@kms_ccs@pipe-d-crc-primary-basic:
    - shard-apl:          [SKIP][77] ([fdo#109271] / [i915#1635]) -> [SKIP][78] ([fdo#109271]) +6 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-apl4/igt@kms_ccs@pipe-d-crc-primary-basic.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-apl2/igt@kms_ccs@pipe-d-crc-primary-basic.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-apl:          [SKIP][79] ([fdo#109271] / [fdo#111827]) -> [SKIP][80] ([fdo#109271] / [fdo#111827] / [i915#1635]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-apl2/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-apl7/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:
    - shard-apl:          [SKIP][81] ([fdo#109271] / [fdo#111827] / [i915#1635]) -> [SKIP][82] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-apl1/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-apl8/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-tglb:         [INCOMPLETE][83] ([i915#1602] / [i915#1887] / [i915#456]) -> [DMESG-WARN][84] ([i915#1602] / [i915#1887])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-tglb1/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-tglb2/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          [FAIL][85] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][86] ([fdo#108145] / [i915#1982])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][87], [FAIL][88], [FAIL][89], [FAIL][90]) ([i915#1610] / [i915#1635] / [i915#2110] / [i915#637]) -> [FAIL][91] ([i915#1635] / [i915#2110])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-apl4/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-apl1/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-apl7/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-apl8/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-apl8/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][92], [FAIL][93], [FAIL][94]) ([i915#1764] / [i915#2110] / [i915#2150]) -> ([FAIL][95], [FAIL][96]) ([i915#2110] / [i915#2150])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-tglb3/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-tglb5/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8721/shard-tglb1/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-tglb2/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/shard-tglb6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1764]: https://gitlab.freedesktop.org/drm/intel/issues/1764
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1887]: https://gitlab.freedesktop.org/drm/intel/issues/1887
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2021]: https://gitlab.freedesktop.org/drm/intel/issues/2021
  [i915#2036]: https://gitlab.freedesktop.org/drm/intel/issues/2036
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2150]: https://gitlab.freedesktop.org/drm/intel/issues/2150
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#637]: https://gitlab.freedesktop.org/drm/intel/issues/637
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8721 -> Patchwork_18126

  CI-20190529: 20190529
  CI_DRM_8721: 0d89710ce5d3d158cb91e4075d8bdbfe4c969173 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5729: a048d54f58dd70b07dbeb4541b273ec230ddb586 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18126: dfea5ee11fcc292f3eeb007ea4287ef4e267279f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18126/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
