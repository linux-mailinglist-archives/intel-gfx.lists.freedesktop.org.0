Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E694145F9F
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 01:02:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00E606F949;
	Thu, 23 Jan 2020 00:02:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4FE126F944;
 Thu, 23 Jan 2020 00:02:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 466F8A0003;
 Thu, 23 Jan 2020 00:02:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 23 Jan 2020 00:02:52 -0000
Message-ID: <157973777226.1144.5973638455041784333@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200120174728.21095-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200120174728.21095-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Global_state_rework_=28rev2=29?=
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

Series: drm/i915: Global state rework (rev2)
URL   : https://patchwork.freedesktop.org/series/72301/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7786_full -> Patchwork_16191_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16191_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16191_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16191_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_atomic_transition@5x-modeset-transitions-fencing:
    - shard-tglb:         NOTRUN -> [SKIP][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-tglb8/igt@kms_atomic_transition@5x-modeset-transitions-fencing.html

  
Known issues
------------

  Here are the changes found in Patchwork_16191_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][2] -> [SKIP][3] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb4/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-iclb5/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-glk:          [PASS][4] -> [FAIL][5] ([i915#679])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-glk5/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-glk7/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#110841])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([i915#677])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb8/igt@gem_exec_schedule@pi-userfault-bsd.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#112146]) +4 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb5/igt@gem_exec_schedule@wide-bsd.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-iclb1/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-apl:          [PASS][12] -> [INCOMPLETE][13] ([CI#80] / [fdo#103927])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-apl1/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-apl3/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [PASS][14] -> [TIMEOUT][15] ([fdo#112271] / [i915#530])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-apl2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
    - shard-skl:          [PASS][16] -> [TIMEOUT][17] ([fdo#112271] / [i915#530]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-skl4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-hsw:          [PASS][18] -> [TIMEOUT][19] ([fdo#112271] / [i915#530]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-hsw1/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-kbl:          [PASS][20] -> [TIMEOUT][21] ([fdo#112271] / [i915#530]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-kbl1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-kbl:          [PASS][22] -> [INCOMPLETE][23] ([fdo#103665] / [i915#530]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-kbl6/igt@gem_persistent_relocs@forked-thrashing.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-kbl1/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][24] -> [FAIL][25] ([i915#644])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-skl:          [PASS][26] -> [FAIL][27] ([i915#644])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-skl9/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [PASS][28] -> [INCOMPLETE][29] ([i915#69])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl10/igt@gem_softpin@noreloc-s3.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-skl5/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_rps@waitboost:
    - shard-tglb:         [PASS][30] -> [FAIL][31] ([i915#413])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-tglb7/igt@i915_pm_rps@waitboost.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-tglb4/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@mock_requests:
    - shard-kbl:          [PASS][32] -> [INCOMPLETE][33] ([fdo#103665])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-kbl4/igt@i915_selftest@mock_requests.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-kbl3/igt@i915_selftest@mock_requests.html
    - shard-iclb:         [PASS][34] -> [INCOMPLETE][35] ([i915#140])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb1/igt@i915_selftest@mock_requests.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-iclb5/igt@i915_selftest@mock_requests.html

  * igt@i915_suspend@debugfs-reader:
    - shard-apl:          [PASS][36] -> [DMESG-WARN][37] ([i915#180]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-apl7/igt@i915_suspend@debugfs-reader.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-apl1/igt@i915_suspend@debugfs-reader.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [PASS][38] -> [DMESG-WARN][39] ([i915#109])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl10/igt@kms_color@pipe-b-ctm-0-25.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-skl4/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][40] -> [DMESG-WARN][41] ([i915#180]) +5 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][42] -> [FAIL][43] ([i915#72])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][44] -> [FAIL][45] ([fdo#108145] / [i915#265])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][46] -> [SKIP][47] ([fdo#109642] / [fdo#111068])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-iclb6/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][48] -> [SKIP][49] ([fdo#109441]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-iclb3/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][50] -> [FAIL][51] ([i915#31])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-apl4/igt@kms_setmode@basic.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-apl2/igt@kms_setmode@basic.html
    - shard-skl:          [PASS][52] -> [FAIL][53] ([i915#31])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl7/igt@kms_setmode@basic.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-skl4/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][54] -> [SKIP][55] ([fdo#112080]) +11 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-iclb7/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][56] -> [SKIP][57] ([fdo#109276]) +17 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][58] ([fdo#112080]) -> [PASS][59] +9 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb5/igt@gem_busy@busy-vcs1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [SKIP][60] ([fdo#109276] / [fdo#112080]) -> [PASS][61] +3 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb3/igt@gem_ctx_isolation@vcs1-clean.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-iclb2/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [FAIL][62] ([i915#570]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl1/igt@gem_ctx_persistence@processes.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-skl8/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [INCOMPLETE][64] ([i915#140]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb1/igt@gem_exec_balancer@hang.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-iclb6/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][66] ([i915#677]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][68] ([fdo#109276]) -> [PASS][69] +18 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][70] ([fdo#112146]) -> [PASS][71] +5 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-iclb7/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-kbl:          [TIMEOUT][72] ([fdo#112271] / [i915#530]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-kbl7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-tglb:         [TIMEOUT][74] ([fdo#112126] / [fdo#112271] / [i915#530]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-tglb8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-tglb6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-glk:          [TIMEOUT][76] ([fdo#112271] / [i915#530]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-glk6/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-glk9/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-hsw:          [INCOMPLETE][78] ([i915#530] / [i915#61]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-hsw1/igt@gem_persistent_relocs@forked-thrashing.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-hsw2/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@i915_selftest@mock_requests:
    - shard-snb:          [INCOMPLETE][80] ([i915#82]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-snb4/igt@i915_selftest@mock_requests.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-snb5/igt@i915_selftest@mock_requests.html
    - shard-apl:          [INCOMPLETE][82] ([fdo#103927]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-apl6/igt@i915_selftest@mock_requests.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-apl4/igt@i915_selftest@mock_requests.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][84] ([i915#180]) -> [PASS][85] +2 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [FAIL][86] ([i915#79]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][88] ([i915#221]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl6/igt@kms_flip@flip-vs-suspend.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-skl5/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][90] ([i915#34]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc:
    - shard-tglb:         [FAIL][92] ([i915#49]) -> [PASS][93] +2 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt:
    - shard-skl:          [FAIL][94] ([i915#49]) -> [PASS][95] +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][96] ([i915#180]) -> [PASS][97] +2 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][98] ([fdo#108145]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_primary_render:
    - shard-iclb:         [SKIP][100] ([fdo#109441]) -> [PASS][101] +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb1/igt@kms_psr@psr2_primary_render.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-iclb2/igt@kms_psr@psr2_primary_render.html

  * igt@kms_sequence@get-forked-busy:
    - shard-snb:          [SKIP][102] ([fdo#109271]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-snb2/igt@kms_sequence@get-forked-busy.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-snb1/igt@kms_sequence@get-forked-busy.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][104] ([IGT#28]) -> [SKIP][105] ([fdo#109276] / [fdo#112080])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-snb:          [INCOMPLETE][106] ([i915#82]) -> [SKIP][107] ([fdo#109271])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/shard-snb2/igt@i915_pm_rpm@modeset-pc8-residency-stress.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/shard-snb5/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7786 -> Patchwork_16191

  CI-20190529: 20190529
  CI_DRM_7786: 72275204176397fc718218335edabb840f520024 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5376: 5cf58d947a02379d2885d6dd4f8bb487cfc3eed2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16191: c3282508b4ed1464aba5645604bf41750f53c96d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
