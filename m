Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C259F1460AE
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 03:24:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05E3A6F96C;
	Thu, 23 Jan 2020 02:24:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5019B6F96C;
 Thu, 23 Jan 2020 02:24:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 421A6A0096;
 Thu, 23 Jan 2020 02:24:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: John.C.Harrison@Intel.com
Date: Thu, 23 Jan 2020 02:24:06 -0000
Message-ID: <157974624624.1146.4619213646517580934@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200115024053.11333-1-John.C.Harrison@Intel.com>
In-Reply-To: <20200115024053.11333-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Update_to_GuC_FW_v40_=28rev3=29?=
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

Series: drm/i915/guc: Update to GuC FW v40 (rev3)
URL   : https://patchwork.freedesktop.org/series/72032/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7786_full -> Patchwork_16198_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16198_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16198_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16198_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_atomic_transition@5x-modeset-transitions-fencing:
    - shard-tglb:         NOTRUN -> [SKIP][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-tglb8/igt@kms_atomic_transition@5x-modeset-transitions-fencing.html

  
Known issues
------------

  Here are the changes found in Patchwork_16198_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][2] -> [SKIP][3] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb4/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-iclb7/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][4] -> [SKIP][5] ([i915#677])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#112146]) +5 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb5/igt@gem_exec_schedule@wide-bsd.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-iclb2/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_exec_whisper@normal:
    - shard-glk:          [PASS][8] -> [DMESG-WARN][9] ([i915#118] / [i915#95])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-glk7/igt@gem_exec_whisper@normal.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-glk4/igt@gem_exec_whisper@normal.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-hsw:          [PASS][10] -> [TIMEOUT][11] ([fdo#112271] / [i915#530]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-hsw4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [PASS][12] -> [TIMEOUT][13] ([fdo#112271] / [i915#530])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-apl2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-kbl:          [PASS][14] -> [TIMEOUT][15] ([fdo#112271] / [i915#530])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-kbl1/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-kbl7/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-hsw:          [PASS][16] -> [FAIL][17] ([i915#520])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-hsw8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [PASS][18] -> [FAIL][19] ([i915#818])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-hsw4/igt@gem_tiled_blits@interruptible.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-hsw5/igt@gem_tiled_blits@interruptible.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][20] -> [DMESG-WARN][21] ([i915#716])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl4/igt@gen9_exec_parse@allowed-single.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-skl8/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][22] -> [FAIL][23] ([i915#454])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rps@waitboost:
    - shard-tglb:         [PASS][24] -> [FAIL][25] ([i915#413])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-tglb7/igt@i915_pm_rps@waitboost.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-tglb6/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@mock_requests:
    - shard-skl:          [PASS][26] -> [INCOMPLETE][27] ([i915#198])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl3/igt@i915_selftest@mock_requests.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-skl8/igt@i915_selftest@mock_requests.html

  * igt@kms_cursor_legacy@nonblocking-modeset-vs-cursor-atomic:
    - shard-skl:          [PASS][28] -> [DMESG-WARN][29] ([i915#88])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl1/igt@kms_cursor_legacy@nonblocking-modeset-vs-cursor-atomic.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-skl5/igt@kms_cursor_legacy@nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][30] -> [INCOMPLETE][31] ([i915#221])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-blt:
    - shard-tglb:         [PASS][32] -> [FAIL][33] ([i915#49])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-blt.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
    - shard-skl:          [PASS][34] -> [DMESG-WARN][35] ([i915#109])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([fdo#108145] / [i915#265])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][38] -> [SKIP][39] ([fdo#109642] / [fdo#111068])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-iclb1/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][40] -> [SKIP][41] ([fdo#109441]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-iclb6/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][42] -> [FAIL][43] ([i915#31])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-apl4/igt@kms_setmode@basic.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-apl1/igt@kms_setmode@basic.html
    - shard-skl:          [PASS][44] -> [FAIL][45] ([i915#31])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl7/igt@kms_setmode@basic.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-skl9/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][46] -> [SKIP][47] ([fdo#112080]) +12 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-iclb6/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][48] -> [SKIP][49] ([fdo#109276]) +18 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][50] ([fdo#112080]) -> [PASS][51] +9 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb5/igt@gem_busy@busy-vcs1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-iclb2/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [FAIL][52] ([i915#570]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl1/igt@gem_ctx_persistence@processes.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-skl6/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][54] ([fdo#109276] / [fdo#112080]) -> [PASS][55] +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb7/igt@gem_ctx_persistence@vcs1-queued.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-iclb2/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [SKIP][56] ([fdo#109276]) -> [PASS][57] +18 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb7/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-iclb2/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][58] ([fdo#112146]) -> [PASS][59] +5 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-kbl:          [TIMEOUT][60] ([fdo#112271] / [i915#530]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-kbl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-tglb:         [TIMEOUT][62] ([fdo#112126] / [fdo#112271] / [i915#530]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-tglb8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-tglb1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-glk:          [TIMEOUT][64] ([fdo#112271] / [i915#530]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-glk6/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-glk2/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][66] ([i915#725]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-hsw2/igt@i915_selftest@live_blt.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-hsw7/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@mock_requests:
    - shard-snb:          [INCOMPLETE][68] ([i915#82]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-snb4/igt@i915_selftest@mock_requests.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-snb2/igt@i915_selftest@mock_requests.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [DMESG-WARN][70] ([i915#109]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl8/igt@kms_color@pipe-a-ctm-0-75.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-skl7/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][72] ([i915#180]) -> [PASS][73] +8 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [FAIL][74] ([i915#79]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][76] ([i915#79]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][78] ([i915#180]) -> [PASS][79] +4 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][80] ([i915#34]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc:
    - shard-tglb:         [FAIL][82] ([i915#49]) -> [PASS][83] +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][84] ([fdo#108145]) -> [PASS][85] +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][86] ([fdo#109441]) -> [PASS][87] +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_sequence@get-forked-busy:
    - shard-snb:          [SKIP][88] ([fdo#109271]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-snb2/igt@kms_sequence@get-forked-busy.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-snb2/igt@kms_sequence@get-forked-busy.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-hsw:          [INCOMPLETE][90] ([i915#61]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-hsw4/igt@perf_pmu@cpu-hotplug.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-hsw5/igt@perf_pmu@cpu-hotplug.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][92] ([fdo#109276] / [fdo#112080]) -> [FAIL][93] ([IGT#28])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][94] ([IGT#28]) -> [SKIP][95] ([fdo#109276] / [fdo#112080])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_exec_parallel@bcs0-fds:
    - shard-hsw:          [INCOMPLETE][96] ([i915#61]) -> [INCOMPLETE][97] ([CI#80] / [i915#61])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-hsw6/igt@gem_exec_parallel@bcs0-fds.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-hsw1/igt@gem_exec_parallel@bcs0-fds.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-snb:          [INCOMPLETE][98] ([i915#82]) -> [SKIP][99] ([fdo#109271])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-snb2/igt@i915_pm_rpm@modeset-pc8-residency-stress.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-snb5/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#88]: https://gitlab.freedesktop.org/drm/intel/issues/88
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7786 -> Patchwork_16198

  CI-20190529: 20190529
  CI_DRM_7786: 72275204176397fc718218335edabb840f520024 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5376: 5cf58d947a02379d2885d6dd4f8bb487cfc3eed2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16198: 52f57a04ee86bbb8f7ba2c823df1f438e89ed74f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
