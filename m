Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 587CA16581A
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 08:00:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5F0C6ECD9;
	Thu, 20 Feb 2020 07:00:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D162B6E0F7;
 Thu, 20 Feb 2020 07:00:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CA28EA47E4;
 Thu, 20 Feb 2020 07:00:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 20 Feb 2020 07:00:52 -0000
Message-ID: <158218205279.17407.1305734526153835730@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200218111624.1198504-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200218111624.1198504-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/6=5D_drm/i915/gt=3A_Show_the_cumulative_?=
 =?utf-8?q?context_runtime_in_engine_debug_=28rev3=29?=
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

Series: series starting with [1/6] drm/i915/gt: Show the cumulative context runtime in engine debug (rev3)
URL   : https://patchwork.freedesktop.org/series/73567/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7961_full -> Patchwork_16598_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16598_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16598_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16598_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@mock_requests:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-tglb2/igt@i915_selftest@mock_requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-tglb3/igt@i915_selftest@mock_requests.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-skl:          [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-skl5/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-skl4/igt@perf@gen8-unprivileged-single-ctx-counters.html
    - shard-iclb:         [PASS][5] -> [INCOMPLETE][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-iclb5/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-iclb3/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@runner@aborted:
    - shard-kbl:          NOTRUN -> ([FAIL][7], [FAIL][8]) ([fdo#103665] / [i915#873])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-kbl4/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-kbl3/igt@runner@aborted.html
    - shard-apl:          NOTRUN -> ([FAIL][9], [FAIL][10]) ([i915#873])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-apl6/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-apl7/igt@runner@aborted.html

  
#### Warnings ####

  * igt@perf@gen12-mi-rpc:
    - shard-tglb:         [TIMEOUT][11] ([fdo#112271] / [i915#1085]) -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-tglb6/igt@perf@gen12-mi-rpc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-tglb5/igt@perf@gen12-mi-rpc.html

  * igt@runner@aborted:
    - shard-tglb:         [FAIL][13] ([i915#584]) -> ([FAIL][14], [FAIL][15])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-tglb2/igt@runner@aborted.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-tglb3/igt@runner@aborted.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-tglb1/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_ctx_persistence@close-replace-race}:
    - shard-kbl:          [FAIL][16] ([i915#1241]) -> [FAIL][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-kbl3/igt@gem_ctx_persistence@close-replace-race.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-kbl6/igt@gem_ctx_persistence@close-replace-race.html
    - shard-glk:          [FAIL][18] ([i915#1241]) -> [FAIL][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-glk7/igt@gem_ctx_persistence@close-replace-race.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-glk2/igt@gem_ctx_persistence@close-replace-race.html

  
Known issues
------------

  Here are the changes found in Patchwork_16598_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-snb:          [PASS][20] -> [FAIL][21] ([i915#1148])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-snb6/igt@gem_ctx_exec@basic-nohangcheck.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-snb5/igt@gem_ctx_exec@basic-nohangcheck.html
    - shard-hsw:          [PASS][22] -> [FAIL][23] ([i915#1148])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-hsw7/igt@gem_ctx_exec@basic-nohangcheck.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-hsw6/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][24] -> [SKIP][25] ([fdo#110841])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][26] -> [SKIP][27] ([fdo#112146]) +7 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-iclb3/igt@gem_exec_async@concurrent-writes-bsd.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-iclb2/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][28] -> [SKIP][29] ([i915#677])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-iclb7/igt@gem_exec_schedule@pi-common-bsd.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][30] -> [SKIP][31] ([fdo#109276]) +22 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-iclb2/igt@gem_exec_schedule@promotion-bsd1.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-iclb8/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_partial_pwrite_pread@reads-display:
    - shard-hsw:          [PASS][32] -> [FAIL][33] ([i915#694])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-hsw1/igt@gem_partial_pwrite_pread@reads-display.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-hsw7/igt@gem_partial_pwrite_pread@reads-display.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][34] -> [DMESG-WARN][35] ([i915#180]) +4 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-apl3/igt@gem_workarounds@suspend-resume-context.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-apl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_rpm@modeset-stress-extra-wait:
    - shard-glk:          [PASS][36] -> [DMESG-WARN][37] ([i915#118] / [i915#95])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-glk7/igt@i915_pm_rpm@modeset-stress-extra-wait.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-glk8/igt@i915_pm_rpm@modeset-stress-extra-wait.html

  * igt@i915_selftest@mock_requests:
    - shard-snb:          [PASS][38] -> [INCOMPLETE][39] ([i915#82])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-snb6/igt@i915_selftest@mock_requests.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-snb6/igt@i915_selftest@mock_requests.html
    - shard-skl:          [PASS][40] -> [INCOMPLETE][41] ([i915#198])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-skl4/igt@i915_selftest@mock_requests.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-skl10/igt@i915_selftest@mock_requests.html
    - shard-glk:          [PASS][42] -> [INCOMPLETE][43] ([i915#58] / [k.org#198133]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-glk3/igt@i915_selftest@mock_requests.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-glk4/igt@i915_selftest@mock_requests.html
    - shard-kbl:          [PASS][44] -> [INCOMPLETE][45] ([fdo#103665]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-kbl6/igt@i915_selftest@mock_requests.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-kbl4/igt@i915_selftest@mock_requests.html

  * igt@kms_atomic_transition@2x-modeset-transitions-nonblocking-fencing:
    - shard-hsw:          [PASS][46] -> [INCOMPLETE][47] ([i915#61]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-hsw1/igt@kms_atomic_transition@2x-modeset-transitions-nonblocking-fencing.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-hsw7/igt@kms_atomic_transition@2x-modeset-transitions-nonblocking-fencing.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
    - shard-glk:          [PASS][48] -> [FAIL][49] ([i915#34])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-glk5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-glk5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [PASS][50] -> [DMESG-WARN][51] ([i915#180])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:
    - shard-tglb:         [PASS][52] -> [SKIP][53] ([i915#668]) +5 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][54] -> [FAIL][55] ([fdo#108145] / [i915#265]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][56] -> [SKIP][57] ([fdo#109441]) +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf@gen12-unprivileged-single-ctx-counters:
    - shard-tglb:         [PASS][58] -> [INCOMPLETE][59] ([i915#756])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-tglb7/igt@perf@gen12-unprivileged-single-ctx-counters.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-tglb1/igt@perf@gen12-unprivileged-single-ctx-counters.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-apl:          [PASS][60] -> [INCOMPLETE][61] ([fdo#103927]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-apl2/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-apl6/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [PASS][62] -> [SKIP][63] ([fdo#112080]) +20 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-iclb1/igt@perf_pmu@init-busy-vcs1.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-iclb6/igt@perf_pmu@init-busy-vcs1.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [PASS][64] -> [FAIL][65] ([i915#831])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-hsw7/igt@prime_mmap_coherency@ioctl-errors.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-hsw8/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][66] ([fdo#112080]) -> [PASS][67] +15 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-iclb7/igt@gem_busy@busy-vcs1.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-iclb2/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-skl:          [INCOMPLETE][68] ([i915#69]) -> [PASS][69] +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-skl7/igt@gem_ctx_isolation@vecs0-s3.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-skl8/igt@gem_ctx_isolation@vecs0-s3.html

  * {igt@gem_ctx_persistence@close-replace-race}:
    - shard-tglb:         [FAIL][70] ([i915#1241]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-tglb5/igt@gem_ctx_persistence@close-replace-race.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-tglb2/igt@gem_ctx_persistence@close-replace-race.html
    - shard-apl:          [FAIL][72] ([i915#1241]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-apl1/igt@gem_ctx_persistence@close-replace-race.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-apl3/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [INCOMPLETE][74] ([fdo#103665]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-kbl4/igt@gem_eio@in-flight-suspend.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-kbl1/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][76] ([i915#677]) -> [PASS][77] +3 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][78] ([fdo#109276]) -> [PASS][79] +25 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][80] ([fdo#112146]) -> [PASS][81] +7 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * {igt@gem_exec_whisper@basic-queues-forked}:
    - shard-tglb:         [INCOMPLETE][82] -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-tglb6/igt@gem_exec_whisper@basic-queues-forked.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-tglb3/igt@gem_exec_whisper@basic-queues-forked.html
    - shard-glk:          [INCOMPLETE][84] ([i915#58] / [k.org#198133]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-glk1/igt@gem_exec_whisper@basic-queues-forked.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-glk1/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-hsw:          [FAIL][86] ([i915#694]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-hsw8/igt@gen7_exec_parse@basic-offset.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-hsw7/igt@gen7_exec_parse@basic-offset.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][88] ([i915#180]) -> [PASS][89] +2 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-glk:          [FAIL][90] ([i915#34]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-apl:          [DMESG-WARN][92] ([i915#180]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-apl6/igt@kms_flip@flip-vs-suspend.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-apl3/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-skl:          [FAIL][94] ([i915#49]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * {igt@kms_hdr@bpc-switch-suspend}:
    - shard-skl:          [FAIL][96] ([i915#1188]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][98] ([fdo#108145]) -> [PASS][99] +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][100] ([fdo#109441]) -> [PASS][101] +2 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][102] ([i915#31]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-apl7/igt@kms_setmode@basic.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-apl7/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][104] ([IGT#28]) -> [SKIP][105] ([fdo#112080]) +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][106] ([fdo#109349]) -> [DMESG-WARN][107] ([i915#1226])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@runner@aborted:
    - shard-hsw:          [FAIL][108] ([i915#1176]) -> ([FAIL][109], [FAIL][110]) ([i915#1176] / [i915#873])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-hsw5/igt@runner@aborted.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-hsw5/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-hsw1/igt@runner@aborted.html
    - shard-snb:          ([FAIL][111], [FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119]) ([fdo#111870] / [i915#1077]) -> ([FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129]) ([fdo#111870] / [i915#1077] / [i915#873])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-snb4/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-snb5/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-snb4/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-snb5/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-snb6/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-snb1/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-snb5/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-snb2/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/shard-snb5/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-snb4/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-snb4/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-snb4/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-snb6/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-snb7/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-snb4/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-snb7/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-snb6/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-snb2/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/shard-snb4/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1077]: https://gitlab.freedesktop.org/drm/intel/issues/1077
  [i915#1085]: https://gitlab.freedesktop.org/drm/intel/issues/1085
  [i915#1148]: https://gitlab.freedesktop.org/drm/intel/issues/1148
  [i915#1176]: https://gitlab.freedesktop.org/drm/intel/issues/1176
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1241]: https://gitlab.freedesktop.org/drm/intel/issues/1241
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#584]: https://gitlab.freedesktop.org/drm/intel/issues/584
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#756]: https://gitlab.freedesktop.org/drm/intel/issues/756
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
  [i915#873]: https://gitlab.freedesktop.org/drm/intel/issues/873
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7961 -> Patchwork_16598

  CI-20190529: 20190529
  CI_DRM_7961: e922b318df45b82e75087ecfaceb998db2dd6213 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5448: 116020b1f83c1b3994c76882df7f77b6731d78ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16598: 540b8e659c60bd91b1740d50ea2c235b07a712c9 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16598/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
