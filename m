Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CF2217AD6
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 00:03:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC7F389DB7;
	Tue,  7 Jul 2020 22:03:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8C3EC89D7D;
 Tue,  7 Jul 2020 22:03:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 83FAFA0118;
 Tue,  7 Jul 2020 22:03:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 07 Jul 2020 22:03:15 -0000
Message-ID: <159415939551.7663.9186010865141629467@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200707162225.21697-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200707162225.21697-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Unpin_idle_contexts_from_kswapd_reclaim?=
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

Series: drm/i915/gem: Unpin idle contexts from kswapd reclaim
URL   : https://patchwork.freedesktop.org/series/79204/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8710_full -> Patchwork_18096_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18096_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18096_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18096_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_properties@crtc-properties-atomic:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-tglb7/igt@kms_properties@crtc-properties-atomic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-tglb2/igt@kms_properties@crtc-properties-atomic.html

  
Known issues
------------

  Here are the changes found in Patchwork_18096_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-glk4/igt@gem_exec_whisper@basic-queues-priority-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-glk4/igt@gem_exec_whisper@basic-queues-priority-all.html

  * igt@i915_selftest@live@execlists:
    - shard-kbl:          [PASS][5] -> [INCOMPLETE][6] ([i915#794])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-kbl6/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-kbl4/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#198] / [i915#2110])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-skl7/igt@i915_selftest@mock@requests.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-skl8/igt@i915_selftest@mock@requests.html

  * igt@kms_color@pipe-a-gamma:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#93] / [i915#95]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-kbl3/igt@kms_color@pipe-a-gamma.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-kbl6/igt@kms_color@pipe-a-gamma.html

  * igt@kms_cursor_legacy@pipe-a-forked-move:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1635] / [i915#95]) +15 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-apl1/igt@kms_cursor_legacy@pipe-a-forked-move.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-apl3/igt@kms_cursor_legacy@pipe-a-forked-move.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#79])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-skl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982]) +6 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-skl6/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-skl6/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-tglb:         [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-glk:          [PASS][19] -> [DMESG-FAIL][20] ([i915#118] / [i915#95]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-glk2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-glk9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt:
    - shard-snb:          [PASS][21] -> [TIMEOUT][22] ([i915#1958] / [i915#2119]) +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-snb5/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-snb6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#49])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#1188])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-skl2/igt@kms_hdr@bpc-switch.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-skl9/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant:
    - shard-kbl:          [PASS][27] -> [DMESG-FAIL][28] ([fdo#108145] / [i915#95])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-kbl2/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-kbl3/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
    - shard-apl:          [PASS][29] -> [DMESG-FAIL][30] ([fdo#108145] / [i915#1635] / [i915#95])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping:
    - shard-iclb:         [PASS][33] -> [DMESG-WARN][34] ([i915#1982])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-iclb8/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-iclb3/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][35] -> [FAIL][36] ([i915#173])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-iclb4/igt@kms_psr@no_drrs.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441]) +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][39] -> [FAIL][40] ([i915#31])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-glk7/igt@kms_setmode@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-glk3/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][41] -> [DMESG-WARN][42] ([i915#180]) +7 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [PASS][43] -> [FAIL][44] ([i915#1820])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-kbl6/igt@perf_pmu@semaphore-busy@rcs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-kbl6/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-glk:          [FAIL][45] ([i915#1528]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-glk1/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-glk1/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@gem_eio@in-flight-internal-10ms:
    - shard-apl:          [DMESG-WARN][47] ([i915#1635] / [i915#95]) -> [PASS][48] +9 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-apl1/igt@gem_eio@in-flight-internal-10ms.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-apl3/igt@gem_eio@in-flight-internal-10ms.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [INCOMPLETE][49] ([i915#69]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-skl2/igt@gem_softpin@noreloc-s3.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-skl2/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-glk:          [DMESG-WARN][51] ([i915#118] / [i915#95]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-glk2/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-glk4/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [DMESG-WARN][53] ([i915#402]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-tglb2/igt@i915_module_load@reload.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-tglb6/igt@i915_module_load@reload.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [FAIL][55] ([i915#454]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-skl3/igt@i915_pm_dc@dc6-psr.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-skl1/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [INCOMPLETE][57] ([i915#151] / [i915#69]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-skl4/igt@i915_pm_rpm@system-suspend-modeset.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-skl9/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][59] ([i915#118] / [i915#95]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-glk5/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-iclb:         [DMESG-WARN][61] ([i915#1982]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-iclb3/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-iclb6/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [DMESG-WARN][63] ([i915#1982]) -> [PASS][64] +8 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-skl9/igt@kms_color@pipe-c-ctm-0-25.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-skl5/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][65] ([IGT#5]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +3 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:
    - shard-tglb:         [SKIP][69] ([i915#668]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][71] ([i915#1188]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][73] ([fdo#109441]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-b-query-forked-busy:
    - shard-apl:          [DMESG-WARN][75] ([i915#1982]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-apl3/igt@kms_vblank@pipe-b-query-forked-busy.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-apl1/igt@kms_vblank@pipe-b-query-forked-busy.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [FAIL][77] ([i915#1542]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-iclb3/igt@perf@blocking-parameterized.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-iclb2/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [FAIL][79] ([i915#1930]) -> [TIMEOUT][80] ([i915#1958] / [i915#2119])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_mmap_gtt@coherency:
    - shard-apl:          [SKIP][81] ([fdo#109271]) -> [SKIP][82] ([fdo#109271] / [i915#1635]) +6 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-apl3/igt@gem_mmap_gtt@coherency.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-apl1/igt@gem_mmap_gtt@coherency.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][83] ([i915#588]) -> [SKIP][84] ([i915#658])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_ccs@pipe-d-bad-rotation-90:
    - shard-apl:          [SKIP][85] ([fdo#109271] / [i915#1635]) -> [SKIP][86] ([fdo#109271]) +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-apl1/igt@kms_ccs@pipe-d-bad-rotation-90.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-apl3/igt@kms_ccs@pipe-d-bad-rotation-90.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x64-offscreen:
    - shard-snb:          [SKIP][87] ([fdo#109271]) -> [TIMEOUT][88] ([i915#1958] / [i915#2119])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-snb5/igt@kms_cursor_crc@pipe-d-cursor-64x64-offscreen.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-snb6/igt@kms_cursor_crc@pipe-d-cursor-64x64-offscreen.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [INCOMPLETE][89] ([i915#1602] / [i915#1887] / [i915#456]) -> [INCOMPLETE][90] ([i915#1602] / [i915#456])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-tglb3/igt@kms_fbcon_fbt@fbc-suspend.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-tglb5/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][91] ([i915#1436] / [i915#1784] / [i915#2110]) -> ([FAIL][92], [FAIL][93]) ([i915#1423] / [i915#1436] / [i915#1784] / [i915#2110] / [i915#656])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-kbl4/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-kbl4/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-kbl4/igt@runner@aborted.html
    - shard-apl:          ([FAIL][94], [FAIL][95], [FAIL][96], [FAIL][97]) ([i915#1610] / [i915#1635] / [i915#2110]) -> [FAIL][98] ([i915#1635] / [i915#2110])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-apl1/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-apl1/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-apl6/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8710/shard-apl3/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/shard-apl7/igt@runner@aborted.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#1784]: https://gitlab.freedesktop.org/drm/intel/issues/1784
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1887]: https://gitlab.freedesktop.org/drm/intel/issues/1887
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8710 -> Patchwork_18096

  CI-20190529: 20190529
  CI_DRM_8710: 274a7b2cbc164c0381a28cb30fd5d3ab93a36dee @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5726: 5da80efbc7a2d5bd7b30c0f9eb4b5d001c99b558 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18096: 9357a85637f90752a55c67c6e678bf001992d579 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18096/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
