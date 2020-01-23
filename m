Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C1C1460FF
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 04:35:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E21146F974;
	Thu, 23 Jan 2020 03:35:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D72C96F974;
 Thu, 23 Jan 2020 03:35:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C5CF6A010F;
 Thu, 23 Jan 2020 03:35:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 23 Jan 2020 03:35:25 -0000
Message-ID: <157975052578.1145.2385538437373688893@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200121171100.4370-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200121171100.4370-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Hotplug_cleanups_=28rev2=29?=
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

Series: drm/i915: Hotplug cleanups (rev2)
URL   : https://patchwork.freedesktop.org/series/72348/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7786_full -> Patchwork_16199_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16199_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16199_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16199_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_atomic_transition@5x-modeset-transitions-fencing:
    - shard-tglb:         NOTRUN -> [SKIP][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-tglb4/igt@kms_atomic_transition@5x-modeset-transitions-fencing.html

  
Known issues
------------

  Here are the changes found in Patchwork_16199_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][2] -> [SKIP][3] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb4/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-iclb3/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-iclb:         [PASS][4] -> [FAIL][5] ([i915#679])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb3/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-iclb1/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([i915#677])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#112146]) +5 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb5/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-iclb2/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#109276]) +22 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb1/igt@gem_exec_schedule@promotion-bsd1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-iclb5/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-apl:          [PASS][12] -> [TIMEOUT][13] ([fdo#112271])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-apl1/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-apl3/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [PASS][14] -> [TIMEOUT][15] ([fdo#112271] / [i915#530]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-apl2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-apl8/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-kbl:          [PASS][16] -> [TIMEOUT][17] ([fdo#112271] / [i915#530])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-kbl1/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-kbl4/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
    - shard-hsw:          [PASS][18] -> [TIMEOUT][19] ([fdo#112271] / [i915#530]) +3 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-hsw1/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-hsw4/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][20] -> [FAIL][21] ([i915#644])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-hsw:          [PASS][22] -> [FAIL][23] ([i915#694]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-hsw8/igt@gen7_exec_parse@basic-offset.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-hsw4/igt@gen7_exec_parse@basic-offset.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [PASS][24] -> [FAIL][25] ([i915#447])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb5/igt@i915_pm_dc@dc5-dpms.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][26] -> [FAIL][27] ([i915#413])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb7/igt@i915_pm_rps@reset.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-iclb4/igt@i915_pm_rps@reset.html

  * igt@i915_pm_rps@waitboost:
    - shard-tglb:         [PASS][28] -> [FAIL][29] ([i915#413])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-tglb7/igt@i915_pm_rps@waitboost.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-tglb2/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@mock_requests:
    - shard-tglb:         [PASS][30] -> [INCOMPLETE][31] ([i915#472])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-tglb1/igt@i915_selftest@mock_requests.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-tglb2/igt@i915_selftest@mock_requests.html
    - shard-kbl:          [PASS][32] -> [INCOMPLETE][33] ([fdo#103665])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-kbl4/igt@i915_selftest@mock_requests.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-kbl1/igt@i915_selftest@mock_requests.html
    - shard-iclb:         [PASS][34] -> [INCOMPLETE][35] ([i915#140])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb1/igt@i915_selftest@mock_requests.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-iclb7/igt@i915_selftest@mock_requests.html

  * igt@kms_atomic_transition@1x-modeset-transitions:
    - shard-snb:          [PASS][36] -> [SKIP][37] ([fdo#109271])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-snb5/igt@kms_atomic_transition@1x-modeset-transitions.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-snb6/igt@kms_atomic_transition@1x-modeset-transitions.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - shard-skl:          [PASS][38] -> [DMESG-WARN][39] ([i915#109])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl8/igt@kms_color@pipe-a-ctm-0-25.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-skl8/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_cursor_legacy@pipe-c-torture-bo:
    - shard-tglb:         [PASS][40] -> [DMESG-WARN][41] ([i915#128])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-tglb2/igt@kms_cursor_legacy@pipe-c-torture-bo.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-tglb7/igt@kms_cursor_legacy@pipe-c-torture-bo.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [PASS][42] -> [DMESG-WARN][43] ([i915#180])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-apl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][44] -> [FAIL][45] ([i915#49]) +3 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][46] -> [DMESG-WARN][47] ([i915#180]) +3 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([fdo#108145] / [i915#265])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][50] -> [SKIP][51] ([fdo#109642] / [fdo#111068])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-iclb8/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [PASS][52] -> [SKIP][53] ([fdo#109441])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][54] -> [FAIL][55] ([i915#31])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-apl4/igt@kms_setmode@basic.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-apl8/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][56] -> [SKIP][57] ([fdo#112080]) +14 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-iclb5/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [SKIP][58] ([fdo#112080]) -> [PASS][59] +10 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb5/igt@gem_busy@extended-parallel-vcs1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-iclb2/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [FAIL][60] ([i915#570]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl1/igt@gem_ctx_persistence@processes.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-skl4/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][62] ([fdo#109276] / [fdo#112080]) -> [PASS][63] +3 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb7/igt@gem_ctx_persistence@vcs1-queued.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [INCOMPLETE][64] ([i915#140]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb1/igt@gem_exec_balancer@hang.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-iclb6/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][66] ([fdo#110854]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb7/igt@gem_exec_balancer@smoke.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@bcs0-fds:
    - shard-hsw:          [INCOMPLETE][68] ([i915#61]) -> [PASS][69] +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-hsw6/igt@gem_exec_parallel@bcs0-fds.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-hsw7/igt@gem_exec_parallel@bcs0-fds.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][70] ([i915#677]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [SKIP][72] ([fdo#109276]) -> [PASS][73] +15 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb7/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-iclb4/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][74] ([fdo#112146]) -> [PASS][75] +6 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-kbl:          [TIMEOUT][76] ([fdo#112271] / [i915#530]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-kbl7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-tglb:         [TIMEOUT][78] ([fdo#112126] / [fdo#112271] / [i915#530]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-tglb8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-tglb4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-glk:          [TIMEOUT][80] ([fdo#112271] / [i915#530]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-glk6/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-glk9/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-hsw:          [INCOMPLETE][82] ([i915#530] / [i915#61]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-hsw1/igt@gem_persistent_relocs@forked-thrashing.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-hsw4/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gen7_exec_parse@basic-allocation:
    - shard-hsw:          [FAIL][84] ([i915#694]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-hsw6/igt@gen7_exec_parse@basic-allocation.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-hsw7/igt@gen7_exec_parse@basic-allocation.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][86] ([i915#413]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb4/igt@i915_pm_rps@waitboost.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-iclb7/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@mock_requests:
    - shard-apl:          [INCOMPLETE][88] ([fdo#103927]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-apl6/igt@i915_selftest@mock_requests.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-apl6/igt@i915_selftest@mock_requests.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [FAIL][90] ([i915#79]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][92] ([i915#79]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][94] ([i915#221]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl6/igt@kms_flip@flip-vs-suspend.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-skl5/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][96] ([i915#34]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc:
    - shard-tglb:         [FAIL][98] ([i915#49]) -> [PASS][99] +2 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-apl:          [DMESG-WARN][100] ([i915#180]) -> [PASS][101] +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-apl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [DMESG-WARN][102] ([i915#180]) -> [PASS][103] +4 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][104] ([fdo#108145]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][106] ([fdo#109441]) -> [PASS][107] +2 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_sequence@get-forked-busy:
    - shard-snb:          [SKIP][108] ([fdo#109271]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-snb2/igt@kms_sequence@get-forked-busy.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-snb2/igt@kms_sequence@get-forked-busy.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-iclb:         [DMESG-WARN][110] ([fdo#111764]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb4/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-iclb8/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][112] ([IGT#28]) -> [SKIP][113] ([fdo#109276] / [fdo#112080])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-snb:          [INCOMPLETE][114] ([i915#82]) -> [SKIP][115] ([fdo#109271])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-snb2/igt@i915_pm_rpm@modeset-pc8-residency-stress.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-snb2/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][116] ([i915#725]) -> [DMESG-FAIL][117] ([i915#553] / [i915#725])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-hsw2/igt@i915_selftest@live_blt.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/shard-hsw8/igt@i915_selftest@live_blt.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7786 -> Patchwork_16199

  CI-20190529: 20190529
  CI_DRM_7786: 72275204176397fc718218335edabb840f520024 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5376: 5cf58d947a02379d2885d6dd4f8bb487cfc3eed2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16199: 14a2de484be709d425cad9fbf75b8c8dfe28c44d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16199/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
