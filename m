Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC057218F5B
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 19:57:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22CAD6E906;
	Wed,  8 Jul 2020 17:57:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 84FDD6E906;
 Wed,  8 Jul 2020 17:57:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 76D44A0019;
 Wed,  8 Jul 2020 17:57:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Wed, 08 Jul 2020 17:57:22 -0000
Message-ID: <159423104245.3838.5180773531332156580@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200708131751.334457-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20200708131751.334457-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_timeline_semaphore_support?=
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

Series: drm/i915: timeline semaphore support
URL   : https://patchwork.freedesktop.org/series/79247/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8715_full -> Patchwork_18107_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18107_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18107_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18107_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-tglb5/igt@gem_eio@unwedge-stress.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-tglb6/igt@gem_eio@unwedge-stress.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-xtiled:
    - shard-hsw:          NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-hsw6/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html

  
Known issues
------------

  Here are the changes found in Patchwork_18107_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-apl:          [PASS][4] -> [FAIL][5] ([i915#1528])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl8/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-apl4/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@render:
    - shard-skl:          [PASS][6] -> [FAIL][7] ([i915#1528])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-skl4/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html

  * igt@gem_exec_fence@basic-wait-all:
    - shard-apl:          [PASS][8] -> [DMESG-WARN][9] ([i915#1635] / [i915#95]) +17 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl8/igt@gem_exec_fence@basic-wait-all.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-apl4/igt@gem_exec_fence@basic-wait-all.html

  * igt@gem_mmap_offset@isolation:
    - shard-iclb:         [PASS][10] -> [DMESG-WARN][11] ([i915#1982])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-iclb5/igt@gem_mmap_offset@isolation.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-iclb5/igt@gem_mmap_offset@isolation.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-hsw:          [PASS][12] -> [WARN][13] ([i915#1519])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-hsw7/igt@i915_pm_rc6_residency@rc6-fence.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-hsw1/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [PASS][14] -> [INCOMPLETE][15] ([i915#198] / [i915#2110])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl9/igt@i915_selftest@mock@requests.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-skl10/igt@i915_selftest@mock@requests.html

  * igt@kms_addfb_basic@size-max:
    - shard-skl:          [PASS][16] -> [DMESG-WARN][17] ([i915#1982]) +8 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl6/igt@kms_addfb_basic@size-max.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-skl9/igt@kms_addfb_basic@size-max.html

  * igt@kms_big_fb@linear-16bpp-rotate-0:
    - shard-kbl:          [PASS][18] -> [DMESG-FAIL][19] ([i915#95])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl3/igt@kms_big_fb@linear-16bpp-rotate-0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-kbl7/igt@kms_big_fb@linear-16bpp-rotate-0.html
    - shard-apl:          [PASS][20] -> [DMESG-FAIL][21] ([i915#1635] / [i915#95])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl7/igt@kms_big_fb@linear-16bpp-rotate-0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-apl4/igt@kms_big_fb@linear-16bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - shard-snb:          [PASS][22] -> [TIMEOUT][23] ([i915#1958] / [i915#2119])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-snb5/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement:
    - shard-kbl:          [PASS][24] -> [DMESG-WARN][25] ([i915#93] / [i915#95]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge:
    - shard-tglb:         [PASS][26] -> [DMESG-WARN][27] ([i915#402])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-tglb1/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-tglb7/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:
    - shard-hsw:          [PASS][28] -> [FAIL][29] ([i915#57])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-hsw4/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][30] -> [DMESG-WARN][31] ([i915#180]) +5 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#2122])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][34] -> [DMESG-WARN][35] ([i915#1982])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([fdo#108145] / [i915#265])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][38] -> [SKIP][39] ([fdo#109441]) +3 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-iclb8/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [PASS][40] -> [FAIL][41] ([i915#1542])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-iclb7/igt@perf@blocking-parameterized.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-iclb4/igt@perf@blocking-parameterized.html

  
#### Possible fixes ####

  * igt@drm_read@short-buffer-wakeup:
    - shard-skl:          [DMESG-WARN][42] ([i915#1982]) -> [PASS][43] +6 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl5/igt@drm_read@short-buffer-wakeup.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-skl7/igt@drm_read@short-buffer-wakeup.html

  * igt@gem_ctx_param@non-root-set:
    - shard-apl:          [DMESG-WARN][44] ([i915#1635] / [i915#95]) -> [PASS][45] +15 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl6/igt@gem_ctx_param@non-root-set.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-apl8/igt@gem_ctx_param@non-root-set.html

  * igt@gem_exec_balancer@bonded-early:
    - shard-iclb:         [FAIL][46] ([i915#926]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-iclb1/igt@gem_exec_balancer@bonded-early.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-iclb4/igt@gem_exec_balancer@bonded-early.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [FAIL][48] ([i915#1930]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-glk8/igt@gem_exec_reloc@basic-concurrent0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-glk3/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_whisper@basic-contexts:
    - shard-glk:          [DMESG-WARN][50] ([i915#118] / [i915#95]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-glk2/igt@gem_exec_whisper@basic-contexts.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-glk9/igt@gem_exec_whisper@basic-contexts.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-kbl:          [DMESG-WARN][52] ([i915#93] / [i915#95]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl1/igt@gem_set_tiling_vs_pwrite.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-kbl3/igt@gem_set_tiling_vs_pwrite.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglb:         [DMESG-WARN][54] ([i915#402]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-tglb5/igt@i915_module_load@reload-with-fault-injection.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-tglb1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
    - shard-skl:          [INCOMPLETE][56] ([i915#198]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-skl5/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1:
    - shard-hsw:          [INCOMPLETE][58] ([i915#2055]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-hsw4/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-hsw6/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@b-dp1:
    - shard-kbl:          [DMESG-WARN][60] ([i915#180]) -> [PASS][61] +6 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl2/igt@kms_flip@flip-vs-suspend@b-dp1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-kbl1/igt@kms_flip@flip-vs-suspend@b-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-badstride:
    - shard-glk:          [DMESG-WARN][62] ([i915#1982]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-glk8/igt@kms_frontbuffer_tracking@fbc-badstride.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-glk3/igt@kms_frontbuffer_tracking@fbc-badstride.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-skl:          [FAIL][64] ([i915#49]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [DMESG-WARN][66] ([i915#1982]) -> [PASS][67] +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][68] ([fdo#108145] / [i915#265]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][70] ([fdo#109441]) -> [PASS][71] +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [FAIL][72] ([i915#1820]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl3/igt@perf_pmu@semaphore-busy@rcs0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-kbl6/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [FAIL][74] ([i915#1930]) -> [TIMEOUT][75] ([i915#1958] / [i915#2119])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_vm_create@execbuf:
    - shard-snb:          [SKIP][76] ([fdo#109271]) -> [TIMEOUT][77] ([i915#1958] / [i915#2119]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-snb5/igt@gem_vm_create@execbuf.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-snb6/igt@gem_vm_create@execbuf.html

  * igt@kms_ccs@pipe-c-bad-rotation-90:
    - shard-apl:          [SKIP][78] ([fdo#109271]) -> [SKIP][79] ([fdo#109271] / [i915#1635]) +5 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl8/igt@kms_ccs@pipe-c-bad-rotation-90.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-apl4/igt@kms_ccs@pipe-c-bad-rotation-90.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
    - shard-apl:          [SKIP][80] ([fdo#109271] / [i915#1635]) -> [SKIP][81] ([fdo#109271]) +5 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl6/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-apl3/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render:
    - shard-apl:          [FAIL][82] ([i915#49]) -> [DMESG-FAIL][83] ([i915#1635] / [i915#49] / [i915#95])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][84] ([i915#93] / [i915#95]) -> [DMESG-WARN][85] ([i915#180] / [i915#93] / [i915#95])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          [DMESG-FAIL][86] ([fdo#108145] / [i915#1635] / [i915#95]) -> [FAIL][87] ([fdo#108145] / [i915#265])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][88], [FAIL][89], [FAIL][90]) ([i915#1610] / [i915#1635] / [i915#2110]) -> [FAIL][91] ([i915#1635] / [i915#2110])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl1/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl3/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl2/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/shard-apl3/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#926]: https://gitlab.freedesktop.org/drm/intel/issues/926
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8715 -> Patchwork_18107

  CI-20190529: 20190529
  CI_DRM_8715: 76c2d43437601608d75f61a9eb6cf3a7aae5e02b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5728: 6988eebf78e9ce9746b8c2b7d21cb4174d6623a9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18107: f2a110c3122153a26a5c39feaab16b398ae0bdb2 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18107/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
