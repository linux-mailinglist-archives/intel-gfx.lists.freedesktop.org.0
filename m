Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 379C1133835
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 02:03:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D90DA6E15C;
	Wed,  8 Jan 2020 01:03:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CA8AB6E157;
 Wed,  8 Jan 2020 01:03:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C311DA00FD;
 Wed,  8 Jan 2020 01:03:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 08 Jan 2020 01:03:15 -0000
Message-ID: <157844539577.23224.15589656363803149749@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200106234703.645168-1-matthew.auld@intel.com>
In-Reply-To: <20200106234703.645168-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gtt=3A_split_up_i915=5Fgem=5Fgtt_=28rev2=29?=
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

Series: drm/i915/gtt: split up i915_gem_gtt (rev2)
URL   : https://patchwork.freedesktop.org/series/71678/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7695_full -> Patchwork_16012_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16012_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16012_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16012_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@smoketest:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb3/igt@gem_ctx_persistence@smoketest.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-tglb4/igt@gem_ctx_persistence@smoketest.html

  
Known issues
------------

  Here are the changes found in Patchwork_16012_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb4/igt@gem_ctx_isolation@vcs1-none.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-iclb5/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-tglb:         [PASS][5] -> [FAIL][6] ([i915#679])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb5/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-tglb5/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#110841])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#461])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb5/igt@gem_ctx_shared@q-smoketest-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#469])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb1/igt@gem_eio@unwedge-stress.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-tglb9/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb5/igt@gem_exec_async@concurrent-writes-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-iclb2/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#435] / [i915#472])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb2/igt@gem_exec_nop@basic-series.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-tglb4/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109276]) +11 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-chain-blt:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([fdo#111606] / [fdo#111677] / [i915#472])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb1/igt@gem_exec_schedule@preempt-queue-chain-blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-tglb8/igt@gem_exec_schedule@preempt-queue-chain-blt.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-glk:          [PASS][21] -> [TIMEOUT][22] ([i915#530])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-glk8/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-glk3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-hsw:          [PASS][23] -> [TIMEOUT][24] ([i915#530])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-hsw:          [PASS][25] -> [INCOMPLETE][26] ([i915#530] / [i915#61])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-hsw1/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-hsw8/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([i915#470] / [i915#472])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb7/igt@gem_sync@basic-all.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-tglb7/igt@gem_sync@basic-all.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#472])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb7/igt@gem_sync@basic-store-all.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-tglb3/igt@gem_sync@basic-store-all.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][33] -> [FAIL][34] ([i915#454])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [PASS][35] -> [INCOMPLETE][36] ([fdo#103665])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-kbl3/igt@i915_suspend@fence-restore-untiled.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [PASS][37] -> [DMESG-WARN][38] ([i915#109])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl10/igt@kms_color@pipe-b-ctm-0-25.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-skl4/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][41] -> [FAIL][42] ([i915#49]) +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109441]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb2/igt@kms_psr@psr2_basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-iclb1/igt@kms_psr@psr2_basic.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#112080]) +5 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb4/igt@perf_pmu@init-busy-vcs1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-iclb6/igt@perf_pmu@init-busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_blits@basic:
    - shard-kbl:          [DMESG-WARN][47] ([i915#836]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-kbl2/igt@gem_blits@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-kbl2/igt@gem_blits@basic.html

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [SKIP][49] ([fdo#112080]) -> [PASS][50] +8 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb5/igt@gem_busy@extended-parallel-vcs1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-iclb2/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +9 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [SKIP][53] ([fdo#109276] / [fdo#112080]) -> [PASS][54] +5 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb5/igt@gem_ctx_isolation@vcs1-clean.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-iclb2/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_exec_balancer@nop:
    - shard-tglb:         [INCOMPLETE][55] ([fdo#111736] / [i915#472]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb2/igt@gem_exec_balancer@nop.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-tglb9/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_balancer@smoke:
    - shard-tglb:         [INCOMPLETE][57] ([fdo#111593] / [i915#472]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb4/igt@gem_exec_balancer@smoke.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-tglb5/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-render:
    - shard-tglb:         [INCOMPLETE][59] ([fdo#111677] / [i915#472]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-tglb1/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][61] ([fdo#112146]) -> [PASS][62] +5 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-iclb5/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-iclb:         [TIMEOUT][63] ([i915#530]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb6/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-iclb8/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-tglb:         [INCOMPLETE][65] ([i915#470]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb9/igt@gem_ppgtt@blt-vs-render-ctxn.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-tglb9/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][67] ([i915#644]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_selftest@live_hangcheck:
    - shard-tglb:         [INCOMPLETE][69] ([i915#435]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb3/igt@i915_selftest@live_hangcheck.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-tglb9/igt@i915_selftest@live_hangcheck.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          [DMESG-WARN][71] ([i915#180]) -> [PASS][72] +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-apl6/igt@i915_suspend@fence-restore-untiled.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-apl8/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-skl:          [FAIL][73] ([i915#54]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][75] ([i915#72]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-panning-interruptible:
    - shard-skl:          [DMESG-WARN][77] ([i915#109]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl1/igt@kms_flip@flip-vs-panning-interruptible.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-skl6/igt@kms_flip@flip-vs-panning-interruptible.html

  * igt@kms_flip_tiling@flip-changes-tiling-yf:
    - shard-skl:          [FAIL][79] ([i915#699]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl4/igt@kms_flip_tiling@flip-changes-tiling-yf.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-skl2/igt@kms_flip_tiling@flip-changes-tiling-yf.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
    - shard-tglb:         [FAIL][81] ([i915#49]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][83] ([fdo#108145] / [i915#265]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][85] ([fdo#109441]) -> [PASS][86] +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb5/igt@kms_psr@psr2_suspend.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][87] ([i915#69]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl9/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-skl7/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@prime_busy@after-bsd2:
    - shard-iclb:         [SKIP][89] ([fdo#109276]) -> [PASS][90] +4 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb8/igt@prime_busy@after-bsd2.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-iclb2/igt@prime_busy@after-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-dirty-switch:
    - shard-tglb:         [SKIP][91] ([fdo#111912] / [fdo#112080]) -> [SKIP][92] ([fdo#112080])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb4/igt@gem_ctx_isolation@vcs2-dirty-switch.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-tglb9/igt@gem_ctx_isolation@vcs2-dirty-switch.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][93] ([i915#468]) -> [FAIL][94] ([i915#454])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb9/igt@i915_pm_dc@dc6-psr.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-tglb7/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][95] ([i915#725]) -> [DMESG-FAIL][96] ([i915#553] / [i915#725])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-hsw8/igt@i915_selftest@live_blt.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/shard-hsw7/igt@i915_selftest@live_blt.html

  
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#469]: https://gitlab.freedesktop.org/drm/intel/issues/469
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#836]: https://gitlab.freedesktop.org/drm/intel/issues/836


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7695 -> Patchwork_16012

  CI-20190529: 20190529
  CI_DRM_7695: 8df346a062d56d97ab53555d3f5829c26f950233 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5358: c6fc013f414b806175dc4143c58ab445e5235ea5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16012: b50ab2add6b64821d1126db93f7565398bc228e1 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
