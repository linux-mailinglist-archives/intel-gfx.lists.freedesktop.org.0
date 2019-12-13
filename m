Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8455311E81C
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 17:22:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EF256EAFE;
	Fri, 13 Dec 2019 16:22:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 307886E092;
 Fri, 13 Dec 2019 16:22:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 27BCDA0075;
 Fri, 13 Dec 2019 16:22:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 13 Dec 2019 16:22:04 -0000
Message-ID: <157625412413.23799.529413665865349619@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191212222905.1661186-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191212222905.1661186-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Set_vm_again_after_MI=5FSET=5FCONTEXT_=28rev2=29?=
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

Series: drm/i915/gt: Set vm again after MI_SET_CONTEXT (rev2)
URL   : https://patchwork.freedesktop.org/series/70839/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7554_full -> Patchwork_15732_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15732_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15732_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15732_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-hsw6/igt@gem_tiled_blits@normal.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-hsw6/igt@gem_tiled_blits@normal.html

  
Known issues
------------

  Here are the changes found in Patchwork_15732_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@vcs1-persistence:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-iclb4/igt@gem_ctx_persistence@vcs1-persistence.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-iclb5/igt@gem_ctx_persistence@vcs1-persistence.html

  * igt@gem_ctx_shared@q-smoketest-bsd2:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#461])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-tglb8/igt@gem_ctx_shared@q-smoketest-bsd2.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd2.html

  * igt@gem_eio@in-flight-suspend:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#456] / [i915#460] / [i915#534])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-tglb1/igt@gem_eio@in-flight-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-tglb8/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@bonded-slice:
    - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#800])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-kbl7/igt@gem_exec_balancer@bonded-slice.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-kbl2/igt@gem_exec_balancer@bonded-slice.html

  * igt@gem_exec_nop@basic-parallel:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#435])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-tglb4/igt@gem_exec_nop@basic-parallel.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-tglb7/igt@gem_exec_nop@basic-parallel.html

  * igt@gem_exec_reuse@contexts:
    - shard-iclb:         [PASS][13] -> [INCOMPLETE][14] ([fdo#109100] / [i915#140] / [i915#659])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-iclb8/igt@gem_exec_reuse@contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-iclb7/igt@gem_exec_reuse@contexts.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112146]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109276]) +13 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-iclb1/igt@gem_exec_schedule@promotion-bsd1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-iclb7/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-glk:          [PASS][19] -> [TIMEOUT][20] ([i915#530])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-glk5/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-glk2/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-iclb:         [PASS][21] -> [TIMEOUT][22] ([i915#530])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-iclb4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-iclb5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#707] / [i915#796])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-tglb1/igt@gem_pipe_control_store_loop@reused-buffer.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-tglb6/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#447])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-iclb1/igt@i915_pm_dc@dc5-dpms.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_rpm@drm-resources-equal:
    - shard-tglb:         [PASS][27] -> [DMESG-WARN][28] ([i915#766])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-tglb4/igt@i915_pm_rpm@drm-resources-equal.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-tglb2/igt@i915_pm_rpm@drm-resources-equal.html

  * igt@i915_pm_rpm@modeset-stress-extra-wait:
    - shard-glk:          [PASS][29] -> [DMESG-WARN][30] ([i915#118] / [i915#95])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-glk7/igt@i915_pm_rpm@modeset-stress-extra-wait.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-glk8/igt@i915_pm_rpm@modeset-stress-extra-wait.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-skl:          [PASS][31] -> [DMESG-WARN][32] ([i915#747])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-skl7/igt@i915_selftest@mock_sanitycheck.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-skl1/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-tglb:         [PASS][33] -> [INCOMPLETE][34] ([i915#456] / [i915#460])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-tglb6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#54])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180]) +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [PASS][39] -> [FAIL][40] ([i915#96])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled:
    - shard-skl:          [PASS][41] -> [INCOMPLETE][42] ([i915#646] / [i915#667])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-skl5/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-skl9/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180]) +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-tglb:         [PASS][45] -> [FAIL][46] ([i915#49])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-kbl:          [PASS][47] -> [INCOMPLETE][48] ([fdo#103665] / [i915#435] / [i915#648] / [i915#667])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-kbl1/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-kbl6/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][49] -> [SKIP][50] ([fdo#109441])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-iclb1/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         [PASS][51] -> [DMESG-WARN][52] ([i915#402])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-tglb1/igt@kms_psr@psr2_suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-tglb8/igt@kms_psr@psr2_suspend.html

  * igt@kms_rotation_crc@multiplane-rotation-cropping-top:
    - shard-glk:          [PASS][53] -> [DMESG-FAIL][54] ([i915#118] / [i915#95])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-glk9/igt@kms_rotation_crc@multiplane-rotation-cropping-top.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-glk9/igt@kms_rotation_crc@multiplane-rotation-cropping-top.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][55] -> [FAIL][56] ([i915#31])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-kbl7/igt@kms_setmode@basic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-kbl7/igt@kms_setmode@basic.html

  * igt@perf@oa-exponents:
    - shard-tglb:         [PASS][57] -> [FAIL][58] ([i915#84])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-tglb4/igt@perf@oa-exponents.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-tglb6/igt@perf@oa-exponents.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][59] -> [SKIP][60] ([fdo#112080]) +6 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-iclb6/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][61] ([fdo#109276] / [fdo#112080]) -> [PASS][62] +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-iclb5/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-iclb1/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][63] ([fdo#110854]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-iclb3/igt@gem_exec_balancer@smoke.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parse_blt@allowed-single:
    - shard-apl:          [DMESG-WARN][65] ([i915#716]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-apl1/igt@gem_exec_parse_blt@allowed-single.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-apl7/igt@gem_exec_parse_blt@allowed-single.html

  * {igt@gem_exec_schedule@pi-common-bsd1}:
    - shard-iclb:         [SKIP][67] ([fdo#109276]) -> [PASS][68] +5 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-iclb3/igt@gem_exec_schedule@pi-common-bsd1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd1.html

  * igt@gem_exec_schedule@pi-ringfull-bsd:
    - shard-iclb:         [SKIP][69] ([fdo#112146]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-iclb1/igt@gem_exec_schedule@pi-ringfull-bsd.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-iclb7/igt@gem_exec_schedule@pi-ringfull-bsd.html

  * igt@gem_exec_schedule@preempt-queue-vebox:
    - shard-tglb:         [INCOMPLETE][71] ([fdo#111677]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-tglb6/igt@gem_exec_schedule@preempt-queue-vebox.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-tglb3/igt@gem_exec_schedule@preempt-queue-vebox.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-iclb:         [DMESG-WARN][73] ([fdo#111764]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-iclb1/igt@gem_exec_suspend@basic-s0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-iclb7/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-skl:          [FAIL][75] ([i915#54]) -> [PASS][76] +3 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled:
    - shard-skl:          [FAIL][77] ([i915#52] / [i915#54]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-skl10/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-skl3/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
    - shard-tglb:         [FAIL][79] ([i915#49]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][81] ([i915#180]) -> [PASS][82] +4 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [INCOMPLETE][83] ([i915#435] / [i915#667]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-tglb:         [INCOMPLETE][85] ([i915#456] / [i915#460]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-tglb1/igt@kms_frontbuffer_tracking@psr-suspend.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-tglb8/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-kbl:          [INCOMPLETE][87] ([fdo#103665] / [i915#648] / [i915#667]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-kbl4/igt@kms_plane@pixel-format-pipe-a-planes.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-kbl3/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][89] ([fdo#108145] / [i915#265]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][91] ([fdo#108145]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@perf@oa-exponents:
    - shard-glk:          [FAIL][93] ([i915#84]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-glk7/igt@perf@oa-exponents.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-glk8/igt@perf@oa-exponents.html

  * igt@perf_pmu@semaphore-wait-vcs1:
    - shard-iclb:         [SKIP][95] ([fdo#112080]) -> [PASS][96] +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-iclb5/igt@perf_pmu@semaphore-wait-vcs1.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-iclb1/igt@perf_pmu@semaphore-wait-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-dirty-create:
    - shard-tglb:         [SKIP][97] ([fdo#111912] / [fdo#112080]) -> [SKIP][98] ([fdo#112080])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-tglb3/igt@gem_ctx_isolation@vcs2-dirty-create.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-tglb9/igt@gem_ctx_isolation@vcs2-dirty-create.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][99] ([i915#648]) -> [INCOMPLETE][100] ([fdo#112391] / [i915#648] / [i915#667])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-skl3/igt@kms_plane@pixel-format-pipe-b-planes.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-skl9/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][101] ([fdo#112347] / [i915#648] / [i915#667]) -> [INCOMPLETE][102] ([fdo#112391] / [i915#648] / [i915#667])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-skl9/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-skl4/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@runner@aborted:
    - shard-skl:          [FAIL][103] ([i915#69]) -> [FAIL][104] ([i915#69] / [k.org#204565])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/shard-skl5/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/shard-skl1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109100]: https://bugs.freedesktop.org/show_bug.cgi?id=109100
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#534]: https://gitlab.freedesktop.org/drm/intel/issues/534
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#646]: https://gitlab.freedesktop.org/drm/intel/issues/646
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#659]: https://gitlab.freedesktop.org/drm/intel/issues/659
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#766]: https://gitlab.freedesktop.org/drm/intel/issues/766
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#800]: https://gitlab.freedesktop.org/drm/intel/issues/800
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7554 -> Patchwork_15732

  CI-20190529: 20190529
  CI_DRM_7554: b8870a9cb78bb11f21414804940fadc47ac848dd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5346: 466b0e6cbcbaccff012b484d1fd7676364b37b93 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15732: 7c54c00f2a85bf899cb4755189b04a6b99f99fa2 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15732/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
